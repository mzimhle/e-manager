<?php

header('Location: /administration/campaign/invoices/');
exit;
		
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


/* Other resources. */
require_once 'library/global_functions.php';

/* objects. */
require_once 'class/campaign.php';
require_once 'class/invoice.php';

$campaignObject 			= new class_campaign();
$invoiceObject	= new class_invoice();

$campaignPairs = $campaignObject->pairs();
if($campaignPairs) $smarty->assign('campaignPairs', $campaignPairs);

if (isset($_GET['code']) && trim($_GET['code']) != '') {
	
	$code = trim($_GET['code']);
	
	$invoiceData = $invoiceObject->getByCode($code);

	if($invoiceData) {
		
		$smarty->assign('invoiceData', $invoiceData);

	} else {
		header('Location: /administration/campaign/invoices/');
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
	
	if(isset($_POST['invoice_contact_name']) && trim($_POST['invoice_contact_name']) == '') {
		$errorArray['invoice_contact_name'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['invoice_contact_surname']) && trim($_POST['invoice_contact_surname']) == '') {
		$errorArray['invoice_contact_surname'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['invoice_contact_email']) && trim($_POST['invoice_contact_email']) != '') {
		if(!preg_match('/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/', trim($_POST['invoice_contact_email']))) {
			$errorArray['invoice_contact_email'] = 'Enter Valid email.';
		}
	} else {
		$errorArray['invoice_contact_email'] = 'Email missing.';
	}	
	
	if(isset($_POST['invoice_contact_cell']) && trim($_POST['invoice_contact_cell']) == '') {
		$errorArray['invoice_contact_cell'] = 'required';
		$formValid = false;		
	}
	
	if(count($errorArray) == 0 && $formValid == true) {
		
		$data 	= array();
		$data['invoice_contact_name'] 			= trim($_POST['invoice_contact_name']);	
		$data['invoice_contact_surname']		= trim($_POST['invoice_contact_surname']);		
		$data['invoice_contact_email']			= trim($_POST['invoice_contact_email']);
		$data['invoice_contact_cell']				= trim($_POST['invoice_contact_cell']);
		$data['invoice_contact_telephone']	= trim($_POST['invoice_contact_telephone']);
		$data['invoice_notes']						= trim($_POST['invoice_notes']);
		$data['invoice_active']						= isset($_POST['invoice_active']) && trim($_POST['invoice_active']) == 1 ? 1 : 0;
		
		if(isset($invoiceData)) {
		
			/*Update. */
			$where		= $invoiceObject->getAdapter()->quoteInto('invoice_code = ?', $invoiceData['invoice_code']);
			$success	= $invoiceObject->update($data, $where);
			
			if(count($errorArray) == 0) {							
				header('Location: /administration/campaign/invoices/invoiceitems.php?code='.$invoiceData['invoice_code']);				
				exit;		
			}							
			
		} else {
			
			$data['invoice_code']	= $invoiceObject->createReference();
			$data['campaign_code'] 				= trim($_POST['campaign_code']);
			
			$success = $invoiceObject->insert($data);

			if(count($errorArray) == 0) {							
				header('Location: /administration/campaign/invoices/invoiceitems.php?code='.$data['invoice_code']);		
				exit;		
			}				
		}					
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

$smarty->display('administration/campaign/invoices/details.tpl');

?>