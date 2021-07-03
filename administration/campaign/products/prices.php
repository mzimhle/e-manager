<?php
/* Add this on all pages on top. */
set_include_path($_SERVER['DOCUMENT_ROOT'].'/'.PATH_SEPARATOR.$_SERVER['DOCUMENT_ROOT'].'/library/classes/');

/**
 * Standard includes
 */
require_once 'config/database.php';
require_once 'config/smarty.php';

/* Other resources. */
require_once 'administration/includes/auth.php';

require_once 'class/product.php';
require_once 'class/productprice.php';

$productObject						= new class_product();
$productpriceObject				= new class_productprice();

if (!empty($_GET['code']) && $_GET['code'] != '') {

	$code = trim($_GET['code']);

	$productData = $productObject->getByCode($code);
	
	if($productData) {
		$smarty->assign('productData', $productData);
		
		$productpriceData = $productpriceObject->getByProduct($code);

		if($productpriceData) {
			
			$smarty->assign('productpriceData', $productpriceData);
		}
		
	} else {
		header('Location: /administration/campaign/products/');
		exit;
	}
} else {
	header('Location: /administration/campaign/products/');
	exit;
}

/* Check posted data. */
if(isset($_GET['deleteitem'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;	
	$formValid				= true;
	$success					= NULL;
	$itemcode					= trim($_GET['deleteitem']);
		
	if($errorArray['error']  == '' && $errorArray['result']  == 0 ) {	
		$data	= array();
		$data['productprice_deleted'] = 1;
		
		$where		= array();
		$where[]	= $productpriceObject->getAdapter()->quoteInto('productprice_code = ?', $itemcode);
		
		$success	= $productpriceObject->update($data, $where);	
		
		if(is_numeric($success) && $success > 0) {		
			$errorArray['error']	= '';
			$errorArray['result']	= 1;			
		} else {
			$errorArray['error']	= 'Could not delete, please try again.';
			$errorArray['result']	= 0;				
		}
	}
	
	echo json_encode($errorArray);
	exit;
}

/* Check posted data. */
if(isset($_GET['productprice_code_update'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;
	$data 						= array();
	$formValid				= true;
	$success					= NULL;
	$itemcode					= trim($_GET['productprice_code_update']);
	
	if(isset($_GET['productprice_name']) && trim($_GET['productprice_name']) == '') {
		$errorArray['error'] = 'name required.';	
	}

	if(isset($_GET['productprice_count']) && trim($_GET['productprice_count']) == '') {
		$errorArray['error'] = 'quantity required.';	
	}
	
	if(isset($_GET['productprice_description']) && trim($_GET['productprice_description']) == '') {
		$errorArray['error'] = 'description required.';	
	}
	
	if($errorArray['error']  == '') {
		
		$data 	= array();		
		$data['productprice_name'] 			= trim($_GET['productprice_name']);			
		$data['productprice_price'] 			= trim($_GET['productprice_price']);			
		$data['productprice_count'] 			= trim($_GET['productprice_count']);		
		$data['productprice_description'] 	= trim($_GET['productprice_description']);			
		
		$where		= array();
		$where[]	= $productpriceObject->getAdapter()->quoteInto('productprice_code = ?', $itemcode);
		$where[]	= $productpriceObject->getAdapter()->quoteInto('product_code = ?', $productData['product_code']);
		
		$success	= $productpriceObject->update($data, $where);	

		if(is_numeric($success)) {
			$errorArray['error']	= '';
			$errorArray['result']	= 1;			
		} else {
			$errorArray['error']	= 'Could not update, please try again.';
			$errorArray['result']	= 0;				
		}
	}
	
	echo json_encode($errorArray);
	exit;
}

if(count($_POST) > 0) {

	$errorArray	= array();
	$data 			= array();
	$formValid	= true;
	$success		= NULL;
	
	if(isset($_POST['productprice_name']) && trim($_POST['productprice_name']) == '') {
		$errorArray['productprice_name'] = 'Name required';
		$formValid = false;		
	}
	
	if(isset($_POST['productprice_count']) && trim($_POST['productprice_name']) == '') {
		$errorArray['productprice_count'] = 'Quantity required';
		$formValid = false;		
	}
	
	if(isset($_POST['productprice_price']) && trim($_POST['productprice_price']) == '') {
		$errorArray['productprice_price'] = 'Price required';
		$formValid = false;		
	}
	
	if(isset($_POST['productprice_description']) && trim($_POST['productprice_description']) == '') {
		$errorArray['productprice_description'] = 'Description required';
		$formValid = false;		
	}
	
	if(count($errorArray) == 0 && $formValid == true) {
					
		$data['productprice_name'] 			= trim($_POST['productprice_name']);	
		$data['productprice_price'] 			= trim($_POST['productprice_price']);
		$data['productprice_count'] 			= trim($_POST['productprice_count']);
		$data['productprice_description'] 	= trim($_POST['productprice_description']);
		$data['product_code'] 					= $productData['product_code'];
		
		/* Insert. */
		$success = $productpriceObject->insert($data);
							
		if($success) {
			header('Location: /administration/campaign/products/prices.php?code='.$productData['product_code']);
			exit;	
		}
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

 /* Display the template  */	
$smarty->display('administration/campaign/products/prices.tpl');
?>