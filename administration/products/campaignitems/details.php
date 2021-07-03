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
require_once 'class/campaign.php';
require_once 'class/_productpriceitem.php';
require_once 'class/_productcampaignitem.php';

$campaignObject 			= new class_campaign();
$productpriceitemObject		= new class_productpriceitem();
$productcampaignitemObject	= new class_productcampaignitem();
				
$campaignPairs = $campaignObject->pairs();
if($campaignPairs) $smarty->assign('campaignPairs', $campaignPairs);

$productpriceitemPairs = $productpriceitemObject->pairs();
if($productpriceitemPairs) $smarty->assign('productpriceitemPairs', $productpriceitemPairs);

if (isset($_GET['code']) && trim($_GET['code']) != '') {
	
	$code = trim($_GET['code']);
	
	$productcampaignitemData = $productcampaignitemObject->getByCode($code);

	if($productcampaignitemData) {
		
		$smarty->assign('productcampaignitemData', $productcampaignitemData);

	} else {
		header('Location: /administration/products/campaignitems/');
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
	
	if(isset($_POST['campaign_code']) && trim($_POST['campaign_code']) == '') {
		$errorArray['campaign_code'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['_productpriceitem_code']) && trim($_POST['_productpriceitem_code']) == '') {
		$errorArray['_productpriceitem_code'] = 'required';
		$formValid = false;		
	}

	if(isset($_POST['_productcampaignitem_count']) && (int)trim($_POST['_productcampaignitem_count']) == 0) {
		$errorArray['_productcampaignitem_count'] = 'required';
		$formValid = false;		
	}
	
	if(count($errorArray) == 0 && $formValid == true) {
		
		$data 	= array();		
			
		$data['_productcampaignitem_count']		= trim($_POST['_productcampaignitem_count']);		
		$data['_productcampaignitem_active']	= isset($_POST['_productcampaignitem_active']) && trim($_POST['_productcampaignitem_active']) == 1 ? 1 : 0;
		
		if(isset($productcampaignitemData)) {
		
			/*Update. */
			$where		= $productcampaignitemObject->getAdapter()->quoteInto('_productcampaignitem_code = ?', $productcampaignitemData['_productcampaignitem_code']);
			$success	= $productcampaignitemObject->update($data, $where);						
			
		} else {
		
			$data['campaign_code'] 				= trim($_POST['campaign_code']);
			$data['_productpriceitem_code'] 	= trim($_POST['_productpriceitem_code']);
			$data['_productcampaignitem_code']	= $productcampaignitemObject->createReference();
			
			$success = $productcampaignitemObject->insert($data);			
		}	

		if(count($errorArray) == 0) {							
			header('Location: /administration/products/campaignitems/');		
			exit;		
		}			
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

$smarty->display('administration/products/campaignitems/details.tpl');

?>