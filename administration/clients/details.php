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
require_once 'class/campaigntype.php';

$campaignObject 	= new class_campaign();
$campaigntypeObject	= new class_campaigntype();

if (isset($_GET['code']) && trim($_GET['code']) != '') {
	
	$campaigncode = trim($_GET['code']);
	
	$campaignData = $campaignObject->getByCode($campaigncode);
	
	if($campaignData) {
		$smarty->assign('campaignData', $campaignData);
	} else {
		header('Location: /administration/campaign/guesthouses/');
		exit;
	}
}

$campaigntypePairs = $campaigntypeObject->pairs();
if($campaigntypePairs) $smarty->assign('campaigntypePairs', $campaigntypePairs);

/* Check posted data. */
if(count($_POST) > 0) {
	$errorArray		= array();
	$data 			= array();
	$formValid		= true;
	$success		= NULL;
	$areaByName		= NULL;
	
	if(isset($_POST['campaign_name']) && trim($_POST['campaign_name']) == '') {
		$errorArray['campaign_name'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['campaign_contact_name']) && trim($_POST['campaign_contact_name']) == '') {
		$errorArray['campaign_contact_name'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['campaign_contact_surname']) && trim($_POST['campaign_contact_surname']) == '') {
		$errorArray['campaign_contact_surname'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['campaign_company']) && trim($_POST['campaign_company']) == '') {
		$errorArray['campaign_company'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['campaign_domain']) && trim($_POST['campaign_domain']) == '') {
		$errorArray['campaign_domain'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['campaigntype_code']) && trim($_POST['campaigntype_code']) == '') {
		$errorArray['campaigntype_code'] = 'required';
		$formValid = false;		
	}
	
	/* Check email. */
	if(isset($_POST['campaign_email']) && trim($_POST['campaign_email']) != '') {
		if(!preg_match('/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/', trim($_POST['campaign_email']))) {
			$errorArray['campaign_email'] = 'Enter Valid email.';
		}
	} else {
		$errorArray['campaign_email'] = 'Email missing.';
	}	
	
	if(isset($_POST['areapost_code']) && trim($_POST['areapost_code']) == '') {
		$errorArray['areapost_code'] = 'required';
		$formValid = false;		
	}
	
	if(count($errorArray) == 0 && $formValid == true) {
		
		$campaigndata 	= array();		
		$campaigndata['campaign_name'] 							= trim($_POST['campaign_name']);
		$campaigndata['campaign_domain'] 							= trim($_POST['campaign_domain']);
		$campaigndata['campaign_description'] 						= trim($_POST['campaign_description']);	
		$campaigndata['campaign_latitude']							= trim($_POST['campaign_latitude']);
		$campaigndata['campaign_longitude'] 							= trim($_POST['campaign_longitude']);		
		$campaigndata['areapost_code'] 								= trim($_POST['areapost_code']);				
		$campaigndata['campaign_fax'] 									= trim($_POST['campaign_fax']);	
		$campaigndata['campaign_telephone'] 						= trim($_POST['campaign_telephone']);
		$campaigndata['campaign_email'] 								= trim($_POST['campaign_email']);
		$campaigndata['campaign_address'] 							= trim($_POST['campaign_address']);				
		$campaigndata['campaign_cell'] 									= trim($_POST['campaign_cell']);		
		$campaigndata['campaign_contact_name'] 					= trim($_POST['campaign_contact_name']);	
		$campaigndata['campaign_contact_surname'] 				= trim($_POST['campaign_contact_surname']);	
		$campaigndata['campaign_company'] 							= trim($_POST['campaign_company']);	
		$campaigndata['campaign_registration_number'] 			= trim($_POST['campaign_registration_number']);	

		$campaigndata['campaign_bankaccount_holder'] 			= trim($_POST['campaign_bankaccount_holder']);	
		$campaigndata['campaign_bankaccount_bank'] 			= trim($_POST['campaign_bankaccount_bank']);	
		$campaigndata['campaign_bankaccount_number'] 		= trim($_POST['campaign_bankaccount_number']);	
		$campaigndata['campaign_bankaccount_branchcode'] 	= trim($_POST['campaign_bankaccount_branchcode']);	
		$campaigndata['campaign_vat'] 									= trim($_POST['campaign_vat']);
		
		$campaigndata['campaign_facebook'] 							= trim($_POST['campaign_facebook']);
		$campaigndata['campaign_twitter'] 								= trim($_POST['campaign_twitter']);
		$campaigndata['campaign_google'] 							= trim($_POST['campaign_google']);
		$campaigndata['campaign_linkedIn'] 							= trim($_POST['campaign_linkedIn']);
		$campaigndata['campaign_blog'] 								= trim($_POST['campaign_blog']);
		
		$campaigndata['campaign_active']								= isset($_POST['campaign_active']) && trim($_POST['campaign_active']) == 1 ? 1 : 0;
		
		if(isset($campaignData)) {
		
			/*Update. */
			$where		= $campaignObject->getAdapter()->quoteInto('campaign_code = ?', $campaignData['campaign_code']);
			$success	= $campaignObject->update($campaigndata, $where);
			
		} else {
			
			$campaigndata['campaign_directory']	= '/campaigns/'.trim($_POST['campaigntype_code']).'/'.$campaigndata['campaign_code'];
			$campaigndata['campaigntype_code']	= trim($_POST['campaigntype_code']);

			/* Create root folder. */
			mkdir($_SERVER['DOCUMENT_ROOT'].$campaigndata['campaign_directory'], 0777);
			
			/* Create media folder. */
			$mediaDir	= $_SERVER['DOCUMENT_ROOT'].$campaigndata['campaign_directory'].'/media';
			if(!is_dir($mediaDir)) mkdir($mediaDir, 0777);
			
			$success = $campaignObject->insert($campaigndata);			
		}				
		
		if(count($errorArray) == 0) {
			header('Location: /administration/clients/');				
			exit;		
		}		
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

$smarty->display('administration/clients/details.tpl');

?>