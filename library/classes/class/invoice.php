<?php

require_once 'campaign.php';
require_once 'invoiceitem.php';
require_once 'invoicepayment.php';
require_once 'productprice.php';
require_once 'participant.php';
require_once 'PDF.php';

//custom account item class as account table abstraction
class class_invoice extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected	$_name			= 'invoice';
	
	public $_domainData		= null;
	public $_campaign			= null;
	public $_invoice				= null;
	public $_invoiceitem			= null;
	public $_invoicepayment	= null;
	public $_productprice		= null;
	public $_participant			= null;
	public $_PDFCROWD			= null;
	
	function init()	{
		
		global $zfsession;

		$this->_invoiceitem		= new class_invoiceitem();
		$this->_invoicepayment	= new class_invoicepayment();
		$this->_campaign			= new class_campaign();	
		$this->_productprice		= new class_productprice();
		$this->_participant			= new class_participant();
		$this->_participant			= new class_participant();
		$this->_PDFCROWD		= new CLASS_PDFCROWD();
		
	}

	/**
	 * Insert the database record
	 * example: $table->insert($data);
	 * @param array $data
     * @return boolean
	 */ 

	 public function insert(array $data)
    {
        // add a timestamp
        $data['invoice_added'] = date('Y-m-d H:i:s');
        $data['invoice_code']  = isset($data['invoice_code']) ? $data['invoice_code'] : $this->createReference();
		$data['campaign_code']		= $this->_campaign->_campaigncode;
		
		return parent::insert($data);
		
    }
	
	/**
	 * Update the database record
	 * example: $table->update($data, $where);
	 * @param query string $where
	 * @param array $data
     * @return boolean
	 */
    public function update(array $data, $where)
    {
        // add a timestamp
        $data['invoice_updated'] = date('Y-m-d H:i:s');
        
        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('invoice_code = ?', $code);		
	}
	
	public function getByBookingCode($code) {
		
			$select = "select 
								ci.invoice_added,
								cii.invoice_code,
								p.*,
								ci.*,
								p.participant_name,
								p.participant_surname,
								ci.invoice_payment_date,
								campaign.campaign_vat,
								cb.*,
								(sum(cii.invoiceitem_price) * campaign.campaign_vat) vat_amount,
								sum(cii.invoiceitem_price) item_amount,
								((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price)) sub_total_amount,
								ifnull(sum(cip.invoicepayment_amount), 0)  payment_amount,
								((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price) - ifnull(sum(cip.invoicepayment_amount), 0)) due_amount,
								((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price)) total_amount
							from
								invoice ci 
									left join participant p on p.participant_code = ci.participant_code
									left join (select invoice_code, sum(invoiceitem_price) invoiceitem_price, sum(invoiceitem_quantity) invoiceitem_quantity from invoiceitem where invoiceitem_deleted = 0 group by invoice_code) cii on(ci.invoice_code = cii.invoice_code)
									left join (select invoice_code, sum(invoicepayment_amount) invoicepayment_amount from invoicepayment where invoicepayment_deleted = 0 group by invoice_code) cip on cii.invoice_code = cip.invoice_code
									left join booking cb on(ci.booking_code = cb.booking_code),
								campaign
							where
								ci.campaign_code = campaign.campaign_code
								and ci.booking_code = ?
								and ".$this->_campaign->_campaignsql."
							group by ci.invoice_code";
						
	   $result = $this->_db->fetchRow($select, array($code));
       return ($result == false) ? false : $result = $result;
	}
	
	/**
	 * get job by job invoice Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code)
	{
		
		$select = "select 
							ci.invoice_added,
							cii.invoice_code,
							p.*,
							ci.*,
							p.participant_name,
							p.participant_surname,
							ci.invoice_payment_date,
							campaign.campaign_vat,
							cb.*,
							(sum(cii.invoiceitem_price) * campaign.campaign_vat) vat_amount,
							sum(cii.invoiceitem_price) item_amount,
							((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price)) sub_total_amount,
							ifnull(sum(cip.invoicepayment_amount), 0)  payment_amount,
							((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price) - ifnull(sum(cip.invoicepayment_amount), 0)) due_amount,
							((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price)) total_amount
						from
							invoice ci 
								left join participant p on p.participant_code = ci.participant_code
								left join (select invoice_code, sum(invoiceitem_price) invoiceitem_price, sum(invoiceitem_quantity) invoiceitem_quantity from invoiceitem where invoiceitem_deleted = 0 group by invoice_code) cii on(ci.invoice_code = cii.invoice_code)
								left join (select invoice_code, sum(invoicepayment_amount) invoicepayment_amount from invoicepayment where invoicepayment_deleted = 0 group by invoice_code) cip on cii.invoice_code = cip.invoice_code
								left join booking cb on(ci.booking_code = cb.booking_code),
							campaign
						where
							ci.campaign_code = campaign.campaign_code
							and ci.invoice_code = ?
							and ".$this->_campaign->_campaignsql."
						group by ci.invoice_code";

	   $result = $this->_db->fetchRow($select, array($code));
       return ($result == false) ? false : $result = $result;
	}	
	
	function getInvoicePayments($code) {
	
		$sql = "SELECT 
						cii.item_amount,
						cp.payment_amount,
						(cii.item_amount * campaign.campaign_vat) as vat_amount,
						cii.item_amount sub_total_amount,
						((cii.item_amount * campaign.campaign_vat) + cii.item_amount) - cp.payment_amount as due_amount,
						(cii.item_amount + (cii.item_amount * campaign.campaign_vat)) as total_amount						
					FROM 
						invoice ci,
						(select invoice_code, (sum(invoiceitem_price) * invoiceitem_quantity) item_amount 
							from invoiceitem where invoice_code = ? and invoiceitem_deleted = 0 group by invoice_code) cii,
						(select invoice_code, sum(invoicepayment_amount) payment_amount
							from invoicepayment where invoice_code = ? and invoicepayment_deleted = 0 group by invoice_code) cp,
						campaign
					WHERE	
						ci.invoice_code = ?
						and cii.invoice_code = ci.invoice_code
						and cp.invoice_code = ci.invoice_code
						and ".$this->_campaign->_campaignsql."
						and campaign.campaign_code = ci.campaign_code;";

        $result = $this->_db->fetchRow($sql, array($code, $code, $code));
        return ($result == false) ? false : $result = $result;							
	}
	

	public function sumInvoicePayments($items = false, $payments = false) {
		
		global $zfsession;
		
		$return = array('items' => 0, 'payments' => 0, 'due' => 0, 'vat' => 0, 'total' => 0);
		
		if($items) {			
			for($i = 0; $i < count($items); $i++) {				
				$itemsum;
				$itemquantity	= $items[$i]['invoiceitem_quantity'];
				$itemamount		= $items[$i]['invoiceitem_price'];
				$itemsum			= $itemquantity * $itemamount;
				$return['items'] += $itemsum;
			}

			$return['vat'] = $return['items'] * $zfsession->domainData['campaign_vat'];
		}		
		
		if($payments) {			
			for($i = 0; $i < count($payments); $i++) {				
				$return['payments'] += $payments[$i]['invoicepayment_amount'];
			}
		}
		
		$return['total'] = $return['items'] + $return['vat'];
		$return['due'] = ($return['items'] + $return['vat']) - $return['payments'];

		return $return;
	}
	
	public function getAll($where = NULL, $order = NULL)
	{		
		$select = "select 
							ci.*,
							cii.invoice_code,
							campaign.*,
							p.participant_name,
							p.participant_surname,
							ci.invoice_payment_date,
							campaign.campaign_vat,
							(sum(cii.invoiceitem_price) * campaign.campaign_vat) vat_amount,
							sum(cii.invoiceitem_price) item_amount,
							((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price)) sub_total_amount,
							ifnull(sum(cip.invoicepayment_amount), 0)  payment_amount,
							((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price) - ifnull(sum(cip.invoicepayment_amount), 0)) due_amount,
							((sum(cii.invoiceitem_price) * campaign.campaign_vat) + sum(cii.invoiceitem_price)) total_amount
						from
							invoice ci 
								left join participant p on p.participant_code = ci.participant_code
								left join (select invoice_code, sum(invoiceitem_price) invoiceitem_price, sum(invoiceitem_quantity) invoiceitem_quantity from invoiceitem where invoiceitem_deleted = 0 group by invoice_code) cii on(ci.invoice_code = cii.invoice_code)
								left join (select invoice_code, sum(invoicepayment_amount) invoicepayment_amount from invoicepayment where invoicepayment_deleted = 0 group by invoice_code) cip on cii.invoice_code = cip.invoice_code,
							campaign
						where
							ci.campaign_code = campaign.campaign_code
							and ".$this->_campaign->_campaignsql."
						group by ci.invoice_code;";

		$result = $this->_db->fetchAll($select);
		return ($result == false) ? false : $result = $result;
	}
		
	/**
	 * get domain by domain Account Id
 	 * @param string domain id
     * @return object
	 */
	public function getCode($reference)
	{
		$select = $this->_db->select()	
						->from(array('invoice' => 'invoice'))	
					   ->where('invoice_code = ?', $reference)
					   ->limit(1);

	   $result = $this->_db->fetchRow($select);	
        return ($result == false) ? false : $result = $result;
	}
	
	function createReference() {
		/* New reference. */
		$reference = "";
		//$codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		$codeAlphabet = "123456789";
		$count = strlen($codeAlphabet) - 1;
		
		for($i=0;$i<8;$i++){
			$reference .= $codeAlphabet[rand(0,$count)];
		}
		
		/* First check if it exists or not. */
		$itemCheck = $this->getCode($reference);
		
		if($itemCheck) {
			/* It exists. check again. */
			$this->createReference();
		} else {
			return $reference;
		}
	}		
}
?>