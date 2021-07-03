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
require_once 'class/productitem.php';

$productObject						= new class_product();
$productitemObject				= new class_productitem();

if (!empty($_GET['code']) && $_GET['code'] != '') {

	$code = trim($_GET['code']);

	$productData = $productObject->getByCode($code);
	
	if($productData) {
		$smarty->assign('productData', $productData);
		
		$productitemData = $productitemObject->getByProduct($code);

		if($productitemData) {
			
			$smarty->assign('productitemData', $productitemData);
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
		$data['productitem_deleted'] = 1;
		
		$where		= array();
		$where[]	= $productitemObject->getAdapter()->quoteInto('productitem_code = ?', $itemcode);
		
		$success	= $productitemObject->update($data, $where);	
		
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
if(isset($_GET['updateitem'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;
	$data 						= array();
	$formValid				= true;
	$success					= NULL;
	$itemcode					= trim($_GET['updateitem']);
	
	if(isset($_GET['productitem_name']) && trim($_GET['productitem_name']) == '') {
		$errorArray['error'] = 'name required.';	
	}

	if(isset($_GET['productitem_description']) && trim($_GET['productitem_description']) == '') {
		$errorArray['error'] = 'description required.';	
	}
	
	if($errorArray['error']  == '') {
		
		$data 	= array();		
		$data['productitem_name'] 		= trim($_GET['productitem_name']);			
		$data['productitem_price'] 			= trim($_GET['productitem_price']);			
		$data['productitem_description'] 	= trim($_GET['productitem_description']);			
		
		$where		= array();
		$where[]	= $productitemObject->getAdapter()->quoteInto('productitem_code = ?', $itemcode);
		$where[]	= $productitemObject->getAdapter()->quoteInto('product_code = ?', $productData['product_code']);
		
		$success	= $productitemObject->update($data, $where);	

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
	
	if(isset($_POST['productitem_name']) && trim($_POST['productitem_name']) == '') {
		$errorArray['productitem_name'] = 'Name required';
		$formValid = false;		
	}
	
	if(isset($_POST['productitem_description']) && trim($_POST['productitem_description']) == '') {
		$errorArray['productitem_description'] = 'required';
		$formValid = false;		
	}
	
	if(count($errorArray) == 0 && $formValid == true) {
					
		$data['productitem_name'] 			= trim($_POST['productitem_name']);	
		$data['productitem_price'] 				= trim($_POST['productitem_price']);
		$data['productitem_description'] 		= trim($_POST['productitem_description']);
		$data['product_code'] 					= $productData['product_code'];
		
		/* Insert. */
		$success = $productitemObject->insert($data);
							
		if($success) {
			header('Location: /administration/campaign/products/items.php?code='.$productData['product_code']);
			exit;	
		}
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

 /* Display the template  */	
$smarty->display('administration/campaign/products/items.tpl');
?>