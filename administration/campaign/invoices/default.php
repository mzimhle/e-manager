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

require_once 'class/invoice.php';

$invoiceObject = new class_invoice();

/* Setup Pagination. */
$invoiceData = $invoiceObject->getAll("invoice_deleted = 0",'invoice.invoice_added DESC');

$smarty->assign_by_ref('invoiceData', $invoiceData);

/* End Pagination Setup. */
$smarty->display('administration/campaign/invoices/default.tpl');
?>