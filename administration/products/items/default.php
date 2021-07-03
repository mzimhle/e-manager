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

require_once 'class/_productprice.php';

$productpriceObject = new class_productprice();
 
if(isset($_GET['productprice_code_delete'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;	
	$formValid				= true;
	$success					= NULL;
	$code						= trim($_GET['productprice_code_delete']);
		
	if($errorArray['error']  == '' && $errorArray['result']  == 0 ) {
		$data	= array();
		$data['_productprice_deleted'] = 1;
		
		$where = $productpriceObject->getAdapter()->quoteInto('_productprice_code = ?', $code);
		
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

/* Setup Pagination. */
$productpriceData = $productpriceObject->getAll('_productprice._productprice_deleted = 0','_productprice._productprice_name');

$smarty->assign_by_ref('productpriceData', $productpriceData);

/* End Pagination Setup. */


$smarty->display('administration/products/items/default.tpl');

?>