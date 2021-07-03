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

require_once 'class/_productpriceitem.php';

error_reporting(!E_ALL);

$productpriceitemObject = new class_productpriceitem();

if(isset($_GET['productpriceitem_code_delete'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;	
	$formValid				= true;
	$success					= NULL;
	$code						= trim($_GET['productpriceitem_code_delete']);
		
	if($errorArray['error']  == '' && $errorArray['result']  == 0 ) {
		$data	= array();
		$data['_productpriceitem_deleted'] = 1;
		
		$where = $productpriceitemObject->getAdapter()->quoteInto('_productpriceitem_code = ?', $code);
		$success	= $productpriceitemObject->update($data, $where);	
		
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
$productpriceitemData = $productpriceitemObject->getAll('_productprice._productprice_deleted = 0','_productprice._productprice_name');

$smarty->assign_by_ref('productpriceitemData', $productpriceitemData);

/* End Pagination Setup. */


$smarty->display('administration/products/components/default.tpl');

?>