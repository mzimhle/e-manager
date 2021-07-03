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
require_once 'class/gallery.php';
require_once 'class/galleryimage.php';

$campaignObject 			= new class_campaign();
$galleryObject 				= new class_gallery();
$galleryimageObject		= new class_galleryimage();

if (isset($_GET['code']) && trim($_GET['code']) != '') {
	
	$code = trim($_GET['code']);
	
	$galleryData = $galleryObject->getByCode($code);

	if($galleryData) {
		
		$smarty->assign('galleryData', $galleryData);
		
		$campaignproductimagesData = $galleryimageObject->getByGallery($galleryData['gallery_code']);
		
		if($campaignproductimagesData) {
			$smarty->assign('campaignproductimagesData', $campaignproductimagesData);
		}

	} else {
		header('Location: /administration/campaign/galleries/');
		exit;
	}
}

/* Check posted data. */
if(count($_POST) > 0) {
	$errorArray		= array();
	$data 			= array();
	$formValid		= true;
	$success		= NULL;
	$areaByName		= NULL;
	
	if(isset($_POST['gallery_name']) && trim($_POST['gallery_name']) == '') {
		$errorArray['gallery_name'] = 'required';
		$formValid = false;		
	}
	
	if(isset($_POST['gallery_description']) && trim($_POST['gallery_description']) == '') {
		$errorArray['gallery_description'] = 'required';
		$formValid = false;		
	}

	if(count($errorArray) == 0 && $formValid == true) {
		
		$data 	= array();		
		$data['campaign_code'] 			= $zfsession->domainData['campaign_code'];
		$data['gallery_name'] 			= trim($_POST['gallery_name']);	
		$data['gallery_description'] 	= htmlspecialchars_decode(stripslashes(trim($_POST['gallery_description'])));			
		$data['gallery_active']			= isset($_POST['gallery_active']) && trim($_POST['gallery_active']) == 1 ? 1 : 0;
		
		if(isset($galleryData)) {
		
			/*Update. */
			$where		= $galleryObject->getAdapter()->quoteInto('gallery_code = ?', $galleryData['gallery_code']);
			$success	= $galleryObject->update($data, $where);
			
			if(count($errorArray) == 0) {							
				header('Location: /administration/campaign/galleries/images.php?gallery='.$galleryData['gallery_code']);				
				exit;		
			}							
			
		} else {
			$success = $galleryObject->insert($data);

			if(count($errorArray) == 0) {							
				header('Location: /administration/campaign/galleries/images.php?gallery='.$galleryData['gallery_code']);		
				exit;		
			}				
		}					
	}
	
	/* if we are here there are errors. */
	$smarty->assign('errorArray', $errorArray);	
}

$smarty->display('administration/campaign/galleries/details.tpl');

?>