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

$productpriceObject 	= new class_productprice();


if (isset($_GET['code']) && trim($_GET['code']) != '') {
	
	$code = trim($_GET['code']);
	
	$productpriceData = $productpriceObject->getByCode($code);

	if($productpriceData) {
		
		$smarty->assign('productpriceData', $productpriceData);

	} else {
		header('Location: /administration/products/items/');
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
	
	if(isset($_POST['_productprice_name']) && trim($_POST['_productprice_name']) == '') {
		$errorArray['_productprice_name'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['_productprice_description']) && trim($_POST['_productprice_description']) == '') {
		$errorArray['_productprice_description'] = 'required';
		$formValid = false;		
	}

	if(count($errorArray) == 0 && $formValid == true) {
		
		$data 	= array();
		$data['_productprice_name'] 			= trim($_POST['_productprice_name']);	
		$data['_productprice_description'] 	= trim($_POST['_productprice_description']);								
		$data['_productprice_active']			= isset($_POST['_productprice_active']) && trim($_POST['_productprice_active']) == 1 ? 1 : 0;
		
		if(isset($productpriceData)) {
		
			/*Update. */
			$where		= $productpriceObject->getAdapter()->quoteInto('_productprice_code = ?', $productpriceData['_productprice_code']);
			$success	= $productpriceObject->update($data, $where);
									
		} else {
			
			$data['_productprice_code']	= $productpriceObject->createReference();
			
			$success = $productpriceObject->insert($data);			
		}	
		
		if(count($errorArray) == 0) {							
			header('Location: /administration/products/items/');				
			exit;		
		}			
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

$smarty->display('administration/products/items/details.tpl');

?>