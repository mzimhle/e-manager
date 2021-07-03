<?php

/* Add this on all pages on top. */
set_include_path($_SERVER['DOCUMENT_ROOT'].'/'.PATH_SEPARATOR.$_SERVER['DOCUMENT_ROOT'].'/library/classes/');

/*** Standard includes */
require_once 'config/database.php';
require_once 'config/smarty.php';

/**
 * Check for login
 */
require_once 'administration/includes/auth.php';
require_once 'class/newsletter.php';

$newsletterObject = new class_newsletter();
 
 if(isset($_GET['delete_code'])) {
	
	$errorArray				= array();
	$errorArray['error']	= '';
	$errorArray['result']	= 0;	
	$formValid				= true;
	$success					= NULL;
	$code						= trim($_GET['delete_code']);
		
	if($errorArray['error']  == '' && $errorArray['result']  == 0 ) {
		$data	= array();
		$data['newsletter_deleted'] = 1;
		
		$where = $newsletterObject->getAdapter()->quoteInto('newsletter_code = ?', $code);
		$success	= $newsletterObject->update($data, $where);	
		
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
$newsletterData = $newsletterObject->getAll("newsletter_deleted = 0",'newsletter.newsletter_added');
if($newsletterData) $smarty->assign_by_ref('newsletterData', $newsletterData);

/* End Pagination Setup. */

$smarty->display('administration/campaign/newsletter/default.tpl');
?>