<?php

require_once 'campaign.php';

//custom account item class as account table abstraction
class class_productitemimage extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected 	$_name 	= 'productitemimage';
	
	public $_campaign			= null;
	
	function init()	{
		
		global $zfsession;
		
		$this->_campaign			= new class_campaign();	
		
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
        $data['productitemimage_added'] = date('Y-m-d H:i:s');
        $data['productitemimage_code']  = $this->createReference();
		$data['campaign_code'] 	= $this->_campaign->_campaigncode;

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
        $data['productitemimage_updated'] = date('Y-m-d H:i:s');
        
        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('productitemimage_code = ?', $code);		
	}
	
	/**
	 * get job by job productitemimage Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code)
	{		
		$select = $this->_db->select()	
					->from(array('productitemimage' => 'productitemimage'))	
					->joinLeft(array('productitem' => 'productitem'), 'productitem.productitem_code = productitemimage.productitem_code')	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = productitem.campaign_code')	
					->where('productitemimage_deleted = 0')
					->where($this->_campaign->_campaignsql)
					->where('productitemimage_code = ?', $code)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;

	}	
	
	/**
	 * get job by job productitemimagetype Id
 	 * @param string job id
     * @return object
	 */
	public function getByItemCode($code)
	{
		
		$select = $this->_db->select()	
					->from(array('productitemimage' => 'productitemimage'))	
					->from(array('productitem' => 'productitem'))
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = productitem.campaign_code')	
					->where('productitem.productitem_code = productitemimage.productitem_code')
					->where($this->_campaign->_campaignsql)
					->where('productitem.productitem_code = ?', $code);

	   $result = $this->_db->fetchAll($select);
        return ($result == false) ? false : $result = $result;
	}	
	
	/**
	 * get job by job productitemimagetype Id
 	 * @param string job id
     * @return object
	 */
	public function getByProduct($code)
	{
		
		$select = $this->_db->select()	
					->from(array('productitemimage' => 'productitemimage'))	
					->joinLeft(array('productitem' => 'productitem'), 'productitem.productitem_code = productitemimage.productitem_code')	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = productitem.campaign_code')	
					->where($this->_campaign->_campaignsql)
					->where('productitem.product_code = ?', $code);
       
	   $result = $this->_db->fetchAll($select);
        return ($result == false) ? false : $result = $result;
	}	
	
	public function getPrimaryByProduct($code) {
		
		$select = $this->_db->select()	
					->from(array('productitemimage' => 'productitemimage'))				
					->from(array('productitem' => 'productitem'))
					->where('productitem.productitem_code = productitemimage.productitem_code')
					->where($this->_campaign->_campaignsql)
					->where('productitem.product_code = ?', $code)
					->where('productitemimage_primary = 1')
					->where('productitem_deleted = 0');

	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;	
	
	}
	
	public function getAll($where = NULL, $order = NULL)
	{
		
		$select = $this->_db->select()	
					->from(array('productitemimage' => 'productitemimage'))						
					->joinLeft(array('productitem' => 'productitem'), 'productitem.productitem_code = productitemimage.productitem_code')	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = productitem.campaign_code')	
					->where('productitemimage_deleted = 0')	
					->where($this->_campaign->_campaignsql)					
					->where($where)
					->order($order);						
						
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
							->from(array('productitemimage' => 'productitemimage'))	
							->where('productitemimage_code = ?', $reference)
							->limit(1);

	   $result = $this->_db->fetchRow($select);	
        return ($result == false) ? false : $result = $result;					   
	}
	
	function createReference() {
		/* New reference. */
		$reference = "";
		$codeAlphabet = "1234567890";

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