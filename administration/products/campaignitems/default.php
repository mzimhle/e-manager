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

require_once 'class/_productcampaignitem.php';

error_reporting(!E_ALL);

$campaignproductitemObject = new class_productcampaignitem();

if(isset($_GET['productcampaignitem_code_delete'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;	
	$formValid				= true;
	$success					= NULL;
	$code						= trim($_GET['productcampaignitem_code_delete']);
		
	if($errorArray['error']  == '' && $errorArray['result']  == 0 ) {
		$data	= array();
		$data['_productcampaignitem_deleted'] = 1;
		
		$where = $campaignproductitemObject->getAdapter()->quoteInto('_productcampaignitem_code = ?', $code);
		$success	= $campaignproductitemObject->update($data, $where);	
		
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

/* Filter. */
$filter					= "_productcampaignitem_deleted = 0";
$filter_fields			= "search_text~t"; // filter fields to remember
$filter_search_fields 	= "_productcampaignitem_name~t"; // should be text only fields
$select_score 			= '';
$order_score 			= '';

require_once 'administration/includes/filter.php';
global $filter;

/* Setup Pagination. */
$campaignproductitemData = $campaignproductitemObject->getAll($filter,'_productcampaignitem._productcampaignitem_added DESC');

$smarty->assign_by_ref('campaignproductitemData', $campaignproductitemData);

/* End Pagination Setup. */


$smarty->display('administration/products/campaignitems/default.tpl');

?>