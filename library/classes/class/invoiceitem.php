<?php

//custom account item class as account table abstraction
class class_invoiceitem extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected	$_name			= 'invoiceitem';
	
	/**
	 * Insert the database record
	 * example: $table->insert($data);
	 * @param array $data
     * @return boolean
	 */ 

	 public function insert(array $data)
    {
        // add a timestamp        
        $data['invoiceitem_added'] = date('Y-m-d H:i:s');
        $data['invoiceitem_code']  = isset($data['invoiceitem_code']) ? $data['invoiceitem_code'] : $this->createReference();

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
        $data['invoiceitem_updated'] = date('Y-m-d H:i:s');
        
        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('invoiceitem_code = ?', $code);		
	}
	
	/**
	 * get job by job invoiceitem Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code) {
		$select = $this->_db->select()	
					->from(array('invoiceitem' => 'invoiceitem'))	
					->joinLeft(array('invoice' => 'invoice'), 'invoice.invoice_code = invoiceitem.invoice_code')													
					->joinLeft(array('booking' => 'booking'), 'booking.booking_code = invoice.booking_code and booking_deleted = 0', array())
					->joinLeft(array('product' => 'product'), 'product.product_code = booking.product_code and product_deleted = 0')
					->where('invoiceitem_deleted = 0 and invoice_deleted = 0')		
					->where('invoiceitem_code = ?', $code)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;
	}
	
	public function getByProductPrice($invoice, $code) {
		
		$select = $this->_db->select()	
					->from(array('invoiceitem' => 'invoiceitem'))	
					->joinLeft(array('invoice' => 'invoice'), 'invoice.invoice_code = invoiceitem.invoice_code')													
					->joinLeft(array('booking' => 'booking'), 'booking.booking_code = invoice.booking_code and booking_deleted = 0', array())
					->joinLeft(array('product' => 'product'), 'product.product_code = booking.product_code and product_deleted = 0')
					->where('invoiceitem_deleted = 0 and invoice_deleted = 0')					
					->where('invoiceitem.invoice_code = ?', $invoice)
					->where('invoiceitem.campaignproductprice_code = ?', $code);						
						
		$result = $this->_db->fetchAll($select);
		return ($result == false) ? false : $result = $result;			
	}
	
	public function getByInvoiceCode($code) {
		
		$select = $this->_db->select()	
					->from(array('invoiceitem' => 'invoiceitem'))	
					->joinLeft(array('invoice' => 'invoice'), 'invoice.invoice_code = invoiceitem.invoice_code')													
					->joinLeft(array('booking' => 'booking'), 'booking.booking_code = invoice.booking_code and booking_deleted = 0', array())
					->joinLeft(array('product' => 'product'), 'product.product_code = booking.product_code and product_deleted = 0')
					->where('invoiceitem_deleted = 0 and invoice_deleted = 0')					
					->where('invoice.invoice_code = ?', $code);						
						
		$result = $this->_db->fetchAll($select);
		return ($result == false) ? false : $result = $result;	
	
	}
	
	public function getAll($where = NULL, $order = NULL)
	{	
		$select = $this->_db->select()	
					->from(array('invoiceitem' => 'invoiceitem'))	
					->joinLeft(array('invoice' => 'invoice'), 'invoice.invoice_code = invoiceitem.invoice_code')													
					->joinLeft(array('booking' => 'booking'), 'booking.booking_code = invoice.booking_code and booking_deleted = 0', array())
					->joinLeft(array('product' => 'product'), 'product.product_code = booking.product_code and product_deleted = 0')
					->where('invoiceitem_deleted = 0 and invoice_deleted = 0')
					->where($where)
					->order($order);						
						
		$result = $this->_db->fetchAll($select);
		return ($result == false) ? false : $result = $result;
	}
	
	public function dayDiff($start, $end) {
	
		$end = strtotime($end);
		$start = strtotime($start);
		$datediff = $end - $start;
		return floor($datediff/(60*60*24));
	
	}
	
	/**
	 * get domain by domain Account Id
 	 * @param string domain id
     * @return object
	 */
	/**
	 * get domain by domain Account Id
 	 * @param string domain id
     * @return object
	 */
	public function getCode($reference)
	{
		$select = $this->_db->select()	
						->from(array('invoiceitem' => 'invoiceitem'))
					   ->where('invoiceitem_code = ?', $reference)
					   ->limit(1);

	   $result = $this->_db->fetchRow($select);	
        return ($result == false) ? false : $result = $result;					   
	}
	
	function createReference() {
		/* New reference. */
		$reference = "";
		$codeAlphabet = "123456789";
		$count = strlen($codeAlphabet) - 1;
		
		for($i=0;$i<10;$i++){
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