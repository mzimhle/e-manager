<?php

ini_set('max_execution_time', 2100); //300 seconds = 5 minutes

/* Add this on all pages on top. */
set_include_path($_SERVER['DOCUMENT_ROOT'].'/'.PATH_SEPARATOR.$_SERVER['DOCUMENT_ROOT'].'/library/classes/');

/**
 * Standard includes
 */
require_once 'config/database.php';
require_once 'config/smarty.php';

/* Other resources. */
require_once 'administration/includes/auth.php';

require_once 'class/newsletter.php';

$newsletterObject		= new class_newsletter();

if (!empty($_GET['code']) && $_GET['code'] != '') {

	$reference = trim($_GET['code']);

	$newsletterData = $newsletterObject->getByCode($reference);

	if($newsletterData) {
		$smarty->assign('newsletterData', $newsletterData);
		
		$commData = $newsletterObject->_comm->getByCategoryReference('NEWSLETTER', $newsletterData['newsletter_code']);
		
		if($commData) {
			$smarty->assign('commData', $commData);
		}
		
	} else {
		header('Location: /administration/campaign/newsletter/');
		exit;
	}
} else {
	header('Location: /administration/campaign/newsletter/');
	exit;
}

 /* Competition mail */
if(count($_POST) > 0) {

	$errorArray	= array();
	$data 		= array();
	$formValid	= true;
	$success	= NULL;
	
	$participantData = $newsletterObject->_participant->getAll();
	
	if($participantData) {
		for($i = 0; $i < count($participantData); $i++) {
			
			$participantData[$i]['_custom_reference']	= $newsletterData['newsletter_code'];	
			$participantData[$i]['_custom_category']		= 'NEWSLETTER';	
			$participantData[$i]['_comm_reference']		= 'NEWSLETTER_SEND';
			
			$participant = null;
			$participant = array_merge($participantData[$i], $newsletterData);

			$newsletterObject->_comm->sendEmail($participant, null, $newsletterData['newsletter_subject'], null, $newsletterData['newsletter_page']);

		}
	}
	
	header('Location: /administration/campaign/newsletter/mail.php?code='.$newsletterData['newsletter_code']);	
	exit;		
					
}


 /* Display the template  */	
$smarty->display('administration/campaign/newsletter/mail.tpl');
?>