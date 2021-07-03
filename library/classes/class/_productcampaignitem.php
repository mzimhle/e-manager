<?php

//custom account item class as account table abstraction
class class_productcampaignitem extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected	$_name	= '_productcampaignitem';
	public 			$pages		= 'ADDON'; //'VAKE';
	
	/**
	 * Insert the database record
	 * example: $table->insert($data);
	 * @param array $data
     * @return boolean
	 */ 

	 public function insert(array $data)
    {
        // add a timestamp
        $data['_productcampaignitem_added'] = date('Y-m-d H:i:s');
        
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
        $data['_productcampaignitem_updated'] = date('Y-m-d H:i:s');

        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('_productcampaignitem_code = ?', $code);		
	}
	
	/**
	 * get job by job _productcampaignitem Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code)
	{
		$select = $this->_db->select()	
					->from(array('_productcampaignitem' => '_productcampaignitem'))
					->joinLeft(array('_productpriceitem' => '_productpriceitem'), '_productpriceitem._productpriceitem_code = _productcampaignitem._productpriceitem_code')	
					->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = _productcampaignitem.campaign_code')		
					->where('_productcampaignitem_deleted = 0 and _productpriceitem_deleted = 0 and _productpriceitem_deleted = 0 and campaign_deleted = 0')					
					->where('_productcampaignitem._productcampaignitem_code = ?', $code)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;
	}	
	
	/**
	 * get job by job _productcampaignitem Id
 	 * @param string job id
     * @return object
	 */
	public function getByProduct($code)
	{		
		$select = $this->_db->select()	
					->from(array('_productcampaignitem' => '_productcampaignitem'))
					->joinLeft(array('_productpriceitem' => '_productpriceitem'), '_productpriceitem._productpriceitem_code = _productcampaignitem._productpriceitem_code')				
					->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')				
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = _productcampaignitem.campaign_code')	
					->where('_productprice._productprice_code = ?', $code)
					->where('_productcampaignitem_deleted = 0 and _productpriceitem_deleted = 0 and _productpriceitem_deleted = 0 and campaign_deleted = 0');

	   $result = $this->_db->fetchAll($select);
        return ($result == false) ? false : $result = $result;
	}
	
	public function getCampaignPages($campaigncode)
	{
		$select = $this->_db->select()	
					->from(array('_productcampaignitem' => '_productcampaignitem'), array(''))
					->joinLeft(array('_productpriceitem' => '_productpriceitem'), '_productpriceitem._productpriceitem_code = _productcampaignitem._productpriceitem_code', array('_productpriceitem_code'))
					->where('_productcampaignitem.campaign_code = ?', $campaigncode)
					->where('_productpriceitem._productprice_code = ?', $this->pages)
					->where('_productcampaignitem_deleted = 0 and _productpriceitem_deleted = 0')
					->where('_productcampaignitem_active = 1 and _productpriceitem_active = 1');

		$result = $this->_db->fetchCol($select);
		return ($result == false) ? false : $result = $result;
	}
	
	public function getAll($where = NULL, $order = NULL)
	{		
		$select = $this->_db->select()	
						->from(array('_productcampaignitem' => '_productcampaignitem'))
						->joinLeft(array('_productpriceitem' => '_productpriceitem'), '_productpriceitem._productpriceitem_code = _productcampaignitem._productpriceitem_code')				
						->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')				
						->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = _productcampaignitem.campaign_code')
						->where('_productcampaignitem_deleted = 0 and _productpriceitem_deleted = 0 and _productpriceitem_deleted = 0 and campaign_deleted = 0')
						->where($where)
						->order($order);						

		return $this->_db->fetchAll($select);
	}
	
	/**
	 * get domain by domain Account Id
 	 * @param string domain id
     * @return object
	 */
	public function getCode($reference)
	{
		$select = $this->_db->select()	
						->from(array('_productcampaignitem' => '_productcampaignitem'))		
					   ->where('_productcampaignitem_code = ?', $reference)
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
		
		for($i=0;$i<6;$i++) {
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