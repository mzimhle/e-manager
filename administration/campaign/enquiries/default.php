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

require_once 'class/enquiry.php';

$enquiryObject = new class_enquiry();
 
/* Setup Pagination. */
$enquiryData = $enquiryObject->getAll("enquiry.campaign_code = '".$zfsession->domainData['campaign_code']."'",'enquiry.enquiry_added DESC');

if($enquiryData) $smarty->assign_by_ref('enquiryData', $enquiryData);

/* End Pagination Setup. */


$smarty->display('administration/campaign/enquiries/default.tpl');

?>