<?php

require_once 'campaign.php';
require_once 'participant.php';
require_once '_comm.php';

//custom account item class as account table abstraction
class class_newsletter extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected $_name 			= 'newsletter';
	
	public $_campaign			= null;
	public $_participant			= null;
	public $_comm					= null;
	
	function init()	{
		
		global $zfsession;

		$this->_campaign			= new class_campaign();	
		$this->_participant			= new class_participant();
		$this->_comm				= new class_comm();
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
        $data['newsletter_added'] 	= date('Y-m-d H:i:s');
        $data['newsletter_code']  	= $this->createReference();
		$data['newsletter_url']		= $this->toUrl($data['newsletter_name']);
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
        $data['newsletter_updated']	= date('Y-m-d H:i:s');
        if(isset($data['newsletter_name'])) $data['newsletter_url']			= $this->toUrl($data['newsletter_name']);
		
        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('newsletter_code = ?', $code);		
	}
	
	/**
	 * get job by job newsletter Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code)
	{
		$select = $this->_db->select()	
					->from(array('newsletter' => 'newsletter'))	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = newsletter.campaign_code')	
					->where('newsletter_deleted = 0')
					->where($this->_campaign->_campaignsql)
					->where('newsletter_code = ?', $code)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
       return ($result == false) ? false : $result = $result;

	}	
	
	/**
	 * get job by job newsletter Id
 	 * @param string job id
     * @return object
	 */
	public function getActiveByCode($code)
	{
		$select = $this->_db->select()	
					->from(array('newsletter' => 'newsletter'))	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = newsletter.campaign_code')	
					->where('newsletter_deleted = 0 and newsletter_active = 1')
					->where($this->_campaign->_campaignsql)
					->where('newsletter_code = ?', $code)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;

	}	
	
	
	public function getAll($where = 'newsletter_deleted = 0', $order = 'newsletter_name desc')
	{
		$select = $this->_db->select()	
					->from(array('newsletter' => 'newsletter'))	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = newsletter.campaign_code')	
					->where('newsletter_deleted = 0')
					->where('campaign_deleted = 0')	
					->where($this->_campaign->_campaignsql)					
					->where($where)
					->order($order);						
						
		$result = $this->_db->fetchAll($select);
		return ($result == false) ? false : $result = $result;
	}
	
	
	public function getByNewsletterCode($gallerycode)
	{

		$select = $this->_db->select()	
					->from(array('newsletter' => 'newsletter'))	
					->joinLeft(array('campaign' => 'campaign'), 'campaign.campaign_code = newsletter.campaign_code')	
					->where('newsletter.newsletter_code = ?', $gallerycode)
					->where('newsletter_deleted = 0')
					->where($this->_campaign->_campaignsql)
					->order('newsletter_added DESC');					

		$result = $this->_db->fetchRow($select);
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
					->from(array('newsletter' => 'newsletter'))	
					   ->where('newsletter_code = ?', $reference)
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
	
	public function toUrl($string) {

		$string = strtolower($string);
		$string = str_replace(' ' , '_' , $string);
		$string = str_replace('__' , '_' , $string);
		$string = str_replace(' ' , '_' , $string);
		$string = str_replace("é", "e", $string);
		$string = str_replace("è", "e", $string);
		$string = str_replace("`", "", $string);
		$string = str_replace("/", "_", $string);
		$string = str_replace("\\", "_", $string);
		$string = str_replace("'", "", $string);
		$string = str_replace("(", "", $string);
		$string = str_replace(")", "", $string);
		$string = str_replace("-", "_", $string);
		$string = str_replace(".", "_", $string);
		$string = str_replace("ë", "e", $string);	
		$string = str_replace('___' , '_' , $string);
		$string = str_replace('__' , '_' , $string);	
		$string = str_replace(' ' , '_' , $string);
		$string = str_replace('__' , '_' , $string);
		$string = str_replace(' ' , '_' , $string);
		$string = str_replace("é", "e", $string);
		$string = str_replace("è", "e", $string);
		$string = str_replace("`", "", $string);
		$string = str_replace("/", "_", $string);
		$string = str_replace("\\", "_", $string);
		$string = str_replace("'", "", $string);
		$string = str_replace("(", "", $string);
		$string = str_replace(")", "", $string);
		$string = str_replace("-", "_", $string);
		$string = str_replace(".", "_", $string);
		$string = str_replace("ë", "e", $string);	
		$string = str_replace("â€“", "ae", $string);	
		$string = str_replace("â", "a", $string);	
		$string = str_replace("€", "e", $string);	
		$string = str_replace("“", "", $string);	
		$string = str_replace("#", "", $string);	
		$string = str_replace("$", "", $string);	
		$string = str_replace("@", "", $string);	
		$string = str_replace("!", "", $string);	
		$string = str_replace("&", "", $string);	
		$string = str_replace(';' , '_' , $string);		
		$string = str_replace(':' , '_' , $string);		
		$string = str_replace('[' , '_' , $string);		
		$string = str_replace(']' , '_' , $string);		
		$string = str_replace('|' , '_' , $string);		
		$string = str_replace('\\' , '_' , $string);		
		$string = str_replace('%' , '_' , $string);	
		$string = str_replace(';' , '' , $string);		
		$string = str_replace(' ' , '_' , $string);
		$string = str_replace('__' , '_' , $string);
		$string = str_replace(' ' , '' , $string);	
		return $string;
				
	}
	
}
?>