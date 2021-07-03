<?php
/* Add this on all pages on top. */
set_include_path($_SERVER['DOCUMENT_ROOT'].'/'.PATH_SEPARATOR.$_SERVER['DOCUMENT_ROOT'].'/library/classes/');

/**
 * Standard includes
 */
require_once 'config/database.php';
require_once 'config/smarty.php';

/**
 * Check for login
 */
require_once 'administration/includes/auth.php';


/* objects. */
require_once 'class/_productprice.php';
require_once 'class/_productpriceitem.php';

$productpriceObject 	= new class_productprice();
$productpriceitemObject	= new class_productpriceitem();
				

$productpricePairs = $productpriceObject->pairs();
if($productpricePairs) $smarty->assign('productpricePairs', $productpricePairs);

if (isset($_GET['code']) && trim($_GET['code']) != '') {
	
	$code = trim($_GET['code']);
	
	$productpriceitemData = $productpriceitemObject->getByCode($code);

	if($productpriceitemData) {
		
		$smarty->assign('productpriceitemData', $productpriceitemData);

	} else {
		header('Location: /administration/products/components/');
		exit;
	}
}

/* Check posted data. */
if(count($_POST) > 0) {

	$errorArray		= array();
	$data 				= array();
	$formValid		= true;
	$success			= NULL;
	$areaByName	= NULL;
	
	if(isset($_POST['_productprice_code']) && trim($_POST['_productprice_code']) == '') {
		$errorArray['_productprice_code'] = 'required';
		$formValid = false;		
	}

	if(isset($_POST['_productpriceitem_name']) && trim($_POST['_productpriceitem_name']) == '') {
		$errorArray['_productpriceitem_name'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['_productpriceitem_description']) && trim($_POST['_productpriceitem_description']) == '') {
		$errorArray['_productpriceitem_description'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['_productpriceitem_price']) && !is_numeric(trim($_POST['_productpriceitem_price']))) {
		$errorArray['_productpriceitem_price'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['_productpriceitem_count']) && (int)trim($_POST['_productpriceitem_count']) == 0) {
		$errorArray['_productpriceitem_count'] = 'required';
		$formValid = false;		
	}
	
	if(count($errorArray) == 0 && $formValid == true) {
		
		$data 	= array();		
		
		$data['_productpriceitem_name'] 		= trim($_POST['_productpriceitem_name']);	
		$data['_productpriceitem_description'] = trim($_POST['_productpriceitem_description']);	
		$data['_productpriceitem_price'] 		= trim($_POST['_productpriceitem_price']);			
		$data['_productpriceitem_count'] 		= trim($_POST['_productpriceitem_count']);		
		$data['_productpriceitem_active']		= isset($_POST['_productpriceitem_active']) && trim($_POST['_productpriceitem_active']) == 1 ? 1 : 0;
		
		if(isset($productpriceitemData)) {
		
			/*Update. */
			$where		= $productpriceitemObject->getAdapter()->quoteInto('_productpriceitem_code = ?', $productpriceitemData['_productpriceitem_code']);
			$success	= $productpriceitemObject->update($data, $where);						
			
		} else {
		
			$data['_productprice_code'] 		= trim($_POST['_productprice_code']);
			$data['_productpriceitem_code']	= $productpriceitemObject->createReference();
			
			$success = $productpriceitemObject->insert($data);			
		}	

		if(count($errorArray) == 0) {							
			header('Location: /administration/products/components/');		
			exit;		
		}			
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

$smarty->display('administration/products/components/details.tpl');

?>