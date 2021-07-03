<?php
/* Add this on all pages on top. */
set_include_path($_SERVER['DOCUMENT_ROOT'].'/'.PATH_SEPARATOR.$_SERVER['DOCUMENT_ROOT'].'/library/classes/');

/**
 * Standard includes
 */
require_once 'config/database.php';
require_once 'config/smarty.php';

error_reporting(!E_ALL);

/**
 * Check for login
 */
require_once 'administration/includes/auth.php';

require_once 'class/campaign.php';


$campaginObject = new class_campaign();
 

/* Ajax */
$action			= (isset($_GET['a']) && !is_null($_GET['a']) && $_GET['a'] != '') ? $_GET['a'] : '';
$campaigncode	= (isset($_GET['campaigncode']) && !is_null($_GET['campaigncode']) && $_GET['campaigncode'] != '') ? $_GET['campaigncode'] : '';

if ($action != '') {
	if ($campaigncode != '') {
		if ($action == 'delete') {
			$campaigncode = explode(',',$campaigncode);			
			$data = array('campaign_deleted' => 1);
			foreach ($campaigncode as $code) {
				$where = $campaginObject->getAdapter()->quoteInto('campaign_code = ?', $code);
				$campaginObject->update($data, $where);
			}
		}
	}	
	exit;
}

/* Setup Pagination. */
$campaignData = $campaginObject->getAll('campaign_deleted = 0',array('campaign.campaign_active DESC', 'campaign.campaign_added DESC'));

$smarty->assign_by_ref('campaignData', $campaignData);

/* End Pagination Setup. */


$smarty->display('administration/clients/default.tpl');

?>