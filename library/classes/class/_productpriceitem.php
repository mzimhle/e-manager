<?php

//custom account item class as account table abstraction
class class_productpriceitem extends Zend_Db_Table_Abstract
{
   //declare table variables
    protected	$_name	= '_productpriceitem';

	/**
	 * Insert the database record
	 * example: $table->insert($data);
	 * @param array $data
     * @return boolean
	 */ 

	 public function insert(array $data)
    {
        // add a timestamp
        $data['_productpriceitem_added'] = date('Y-m-d H:i:s');
        
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
        $data['_productpriceitem_updated'] = date('Y-m-d H:i:s');
        
        return parent::update($data, $where);
    }
	
	public function remove($code) {
		return $this->delete('_productpriceitem_code = ?', $code);		
	}
	
	/**
	 * get job by job _productpriceitem Id
 	 * @param string job id
     * @return object
	 */
	public function getByCode($code)
	{
		
		$select = $this->_db->select()	
					->from(array('_productpriceitem' => '_productpriceitem'))
					->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')				
					->where('_productpriceitem_deleted = 0 and _productprice_deleted = 0')
					->where('_productpriceitem._productpriceitem_code = ?', $code)
					->limit(1);
       
	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;
	}
	
	/**
	 * get job by job _productpriceitem Id
 	 * @param string job id
     * @return object
	 */
	public function getByProduct($code)
	{
		
		$select = $this->_db->select()	
					->from(array('_productpriceitem' => '_productpriceitem'))
					->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')				
					->where('_productpriceitem._productprice = ?', $code)
					->where('_productpriceitem_deleted = 0');

		$result = $this->_db->fetchAll($select);
        return ($result == false) ? false : $result = $result;
	}
	
	/**
	 * get job by job _productpriceitem Id
 	 * @param string job id
     * @return object
	 */
	public function getBySinglePrice($product)
	{		
		$select = $this->_db->select()	
					->from(array('_productpriceitem' => '_productpriceitem'))
					->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')				
					->where('_productpriceitem._productprice_code = ?', $product)
					->where('_productpriceitem._productpriceitem_count = 1')
					->where('_productpriceitem_deleted = 0');

		$result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;
	}
	
	public function pairs() {
		
		$select = $this->select()
					   ->from(array('_productpriceitem' => '_productpriceitem'), array('_productpriceitem._productpriceitem_code', "concat(_productpriceitem._productpriceitem_name, ' ( R ' , _productpriceitem._productpriceitem_price, ' )') as _productpriceitem_name"))
					   ->where('_productpriceitem_deleted = 0 and _productpriceitem_active = 1')		
					   ->order('_productpriceitem._productpriceitem_added ASC');

		$result = $this->_db->fetchPairs($select);
		return ($result == false) ? false : $result = $result;
	}
	
	public function getAll($where = NULL, $order = NULL)
	{	
		$select = $this->_db->select()	
						->from(array('_productpriceitem' => '_productpriceitem'))
						->joinLeft(array('_productprice' => '_productprice'), '_productprice._productprice_code = _productpriceitem._productprice_code')				
						->where('_productpriceitem_deleted = 0 and _productprice_deleted = 0')
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
						->from(array('_productpriceitem' => '_productpriceitem'))		
					   ->where('_productpriceitem_code = ?', $reference)
					   ->limit(1);

	   $result = $this->_db->fetchRow($select);
        return ($result == false) ? false : $result = $result;				   		
	}
	
	function createReference() {
		/* New reference. */
		$reference = "";
		/* $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; */
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