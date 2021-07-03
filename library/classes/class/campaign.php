<?php

require_once '_productcampaignitem.php';

//custom account item class as account table abstraction
class class_campaign extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected $_name 					= 'campaign';
	
	public $_campaign					= null;
	public $_domainData				= null;
	public $_campaigncode				= null;
	public $_link								= null;
	public $_campaignsql				= null;
	
	function init()	{
		
		global $zfsession;
		
		$this->_productcampaignitem	= new class_productcampaignitem();
		
		if(!isset($zfsession->domainData)) {
			/* Assign domain data if there is one. */
			$domain = $_SERVER['HTTP_HOST']; 
			
			/* Clean domains. */
			$domain	= str_replace('www.', '', $domain);

			/* Look for the website details. */
			$domainData = $this->getByDomain($domain);

			if($domainData) {
				$this->_domainData 		= $domainData;
				$this->_campaigncode	= $domainData['campaign_code'];
				
				$this->_campaignsql = "campaign.campaign_code = '".$domainData['campaign_code']."'";
			} else {
				$this->_campaignsql = "campaign.campaign_code = campaign.campaign_code";
			}
		} else {
			if(isset($zfsession->domainData) && !empty($zfsession->domainData)) {
				$this->_domainData 		= $zfsession->domainData;
				$this->_campaigncode	= $zfsession->domainData['campaign_code'];
				$this->_campaignsql = "campaign.campaign_code = '".$zfsession->domainData['campaign_code']."'";
			} else {
				$this->_campaignsql = "campaign.campaign_code = campaign.campaign_code";
			}
		}
		
		$this->_link = '/campaign/';
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
        $data['campaign_added'] = date('Y-m-d H:i:s');
		
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
        $data['campaign_updated'] = date('Y-m-d H:i:s');
        
        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('campaign_code = ?', $code);		
	}
	
	/**
	 * get job by job campaign Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code = null) {
		
		if($this->_campaigncode) {
			$select = $this->_db->select()	
						->from(array('campaign' => 'campaign'))	
						->joinLeft(array('campaigntype' => 'campaigntype'), 'campaigntype.campaigntype_code = campaign.campaigntype_code')	
						->joinLeft(array('areapost' => 'areapost'), 'areapost.areapost_code = campaign.areapost_code')
						->where('campaign_code = ?', $this->_campaigncode)
						->limit(1);
       } else {
			$select = $this->_db->select()	
						->from(array('campaign' => 'campaign'))	
						->joinLeft(array('campaigntype' => 'campaigntype'), 'campaigntype.campaigntype_code = campaign.campaigntype_code')	
						->joinLeft(array('areapost' => 'areapost'), 'areapost.areapost_code = campaign.areapost_code')
						->where('campaign_code = ?', $code)
						->limit(1);		
	   }
	   
	   $result = $this->_db->fetchRow($select);
	   
	   if($result) {
			$productcampaignitemData = $this->_productcampaignitem->getCampaignPages($code);
			
			$result['pages'] = $productcampaignitemData;
	   }
	   
       return ($result == false) ? false : $result = $result;		
	}	
	
	public function getAll($where = NULL, $order = NULL)
	{
		$select = $this->_db->select()	
						->from(array('campaign' => 'campaign'))	
						->joinLeft(array('campaigntype' => 'campaigntype'), 'campaigntype.campaigntype_code = campaign.campaigntype_code')	
						->joinLeft(array('areapost' => 'areapost'), 'areapost.areapost_code = campaign.areapost_code')					
						->where($where)
						->order($order);						

		$result = $this->_db->fetchAll($select);
		return ($result == false) ? false : $result = $result;
	}
	
	public function pairs() {
		$select = $this->select()
					   ->from(array('campaign' => 'campaign'), array('campaign.campaign_code', 'campaign.campaign_company'))
					   ->where('campaign_active = 1 and campaign_deleted = 0')
					   ->order('campaign.campaign_added ASC');

		$result = $this->_db->fetchPairs($select);
		return ($result == false) ? false : $result = $result;
	}		
	
	public function getByDomain($domain) {
	
		$select = $this->_db->select()	
					->from(array('campaign' => 'campaign'))	
					->joinLeft(array('campaigntype' => 'campaigntype'), 'campaigntype.campaigntype_code = campaign.campaigntype_code')	
					->joinLeft(array('areapost' => 'areapost'), 'areapost.areapost_code = campaign.areapost_code')	
					->where('campaign_active = 1 and campaign_deleted = 0')
					->where('campaign_domain = ?', $domain)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
	   
	   if($result) {
			$productcampaignitemData = $this->_productcampaignitem->getCampaignPages($result['campaign_code']);
			
			$result['pages'] = $productcampaignitemData;
	   }
	         
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
						->from(array('campaign' => 'campaign'))	
					   ->where('campaign_code = ?', $reference)
					   ->limit(1);

	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;					   

	}
	
	function createReference() {
		/* New reference. */
		$reference = "";
		$codeAlphabet = "123456789";
		$count = strlen($codeAlphabet) - 1;
		
		for($i=0;$i<4;$i++){
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