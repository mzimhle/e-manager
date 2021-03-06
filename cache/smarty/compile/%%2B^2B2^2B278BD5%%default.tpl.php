<?php /* Smarty version 2.6.20, created on 2015-06-24 15:48:21
         compiled from campaigns/MU3H/0860/contact/default.tpl */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Datuma Guest House - Contact Us</title>
	<meta name="keywords" content="contact us, enquiry form, guest house, complaints, comments, south africa, thornton cape town, bed and breakfast, western cape, accomodation">
	<meta name="description" content="<?php echo $this->_tpl_vars['campaign']['campaign_name']; ?>
 is asking if you can please send us compliments, complaints or general enquiries via this page, we will get back to you as soon as possible.">          
	<meta name="robots" content="index, follow">
	<meta name="revisit-after" content="21 days">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta property="og:title" content="<?php echo $this->_tpl_vars['campaign']['campaign_name']; ?>
"> 
	<meta property="og:image" content="http://<?php echo $this->_tpl_vars['campaign']['campaign_domain']; ?>
/images/logo.png"> 
	<meta property="og:url" content="http://<?php echo $this->_tpl_vars['campaign']['campaign_domain']; ?>
">
	<meta property="og:site_name" content="<?php echo $this->_tpl_vars['campaign']['campaign_name']; ?>
">
	<meta property="og:type" content="website">
	<meta property="og:description" content="<?php echo $this->_tpl_vars['campaign']['campaign_name']; ?>
 is asking if you can please send us compliments, complaints or general enquiries via this page, we will get back to you as soon as possible.">
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/css.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/javascript.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<?php echo '
    <style>
      #map-canvas {
			height: 300px;
			widht: 700px;
			margin: 0px;
			padding: 0px
      }
    </style>	
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script type="text/javascript">
		function initialize() {
		  var myLatlng = new google.maps.LatLng(-33.919296, 18.541452);
		  var mapOptions = {
			zoom: 16,
			mapTypeId: google.maps.MapTypeId.SATELLITE,
			center: myLatlng
		  }
		  var map = new google.maps.Map(document.getElementById(\'map-canvas\'), mapOptions);

		  var marker = new google.maps.Marker({
			  position: myLatlng,
			  map: map,
			  title: \''; ?>
<?php echo $this->_tpl_vars['domainData']['campaign_name']; ?>
<?php echo '\'
		  });
		}
		google.maps.event.addDomListener(window, \'load\', initialize);
    </script>
	'; ?>

</head>
<body>
<div id="wrap">
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/header.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>
	
	<div id="main">
		<h2>Contact <?php echo $this->_tpl_vars['domainData']['campaign_name']; ?>
!</h2>		
		<p>For any enquiries, please do not hesitate to contact us via the below contact form, we would like to know of any ideas, complaints or even improvements you would like to recommend to us.</p>
		<div class="clear"></div>
		<div class="line-hor"></div>
		<div id="contact-area">			
			<form method="post" action="<?php echo $this->_tpl_vars['link']; ?>
contact/" name="detailsForm" id="detailsForm">
				<table>
					<tr>
						<td class="left">
							<label for="enquiry_name">Full name:</label>
							<?php if (isset ( $this->_tpl_vars['errorArray']['enquiry_name'] )): ?><em class="error"><?php echo $this->_tpl_vars['errorArray']['enquiry_name']; ?>
</em><?php endif; ?>
						</td>
						<td><input type="text" name="enquiry_name" id="enquiry_name" value="" /></td>
					</tr>
					<tr>
						<td class="left">
							<label for="areapost_name">City / Town:</label>
							<?php if (isset ( $this->_tpl_vars['errorArray']['areapost_code'] )): ?><em class="error"><?php echo $this->_tpl_vars['errorArray']['areapost_code']; ?>
</em><?php endif; ?>
						</td>
						<td>
							<input type="text" name="areapost_name" id="areapost_name" />
							<input type="hidden" name="areapost_code" id="areapost_code" />
						</td>
					</tr>
					<tr>
						<td class="left">
							<label for="enquiry_email">Email:</label>
							<?php if (isset ( $this->_tpl_vars['errorArray']['enquiry_email'] )): ?><em class="error"><?php echo $this->_tpl_vars['errorArray']['enquiry_email']; ?>
</em><?php endif; ?>
						</td>
						<td><input type="text" name="enquiry_email" id="enquiry_email" value="" /></td>
					</tr>
					<tr>
						<td class="left">
							<label for="enquiry_number">Cellphone :</label>
							<?php if (isset ( $this->_tpl_vars['errorArray']['enquiry_number'] )): ?><br /><em class="error"><?php echo $this->_tpl_vars['errorArray']['enquiry_number']; ?>
</em><?php else: ?><em>(Optional e.g. 0735698741)<?php endif; ?>
						</td>
						<td><input type="text" name="enquiry_number" id="enquiry_number" value="" /></td>
					</tr>
					<tr>
						<td class="left">
							<label for="enquiry_subject">Subject :</label>
							<?php if (isset ( $this->_tpl_vars['errorArray']['enquiry_subject'] )): ?><em class="error"><?php echo $this->_tpl_vars['errorArray']['enquiry_subject']; ?>
</em><?php endif; ?>
						</td>
						<td>
							<select name="enquiry_subject" id="enquiry_subject">
								<option value="Enquiry"> Enquiry </option>
								<option value="Complaint"> Complaint </option>
								<option value="Improvement / Suggestion"> Improvement / Suggestion </option>
							</select>
						</td>
					</tr>						
					<tr>
						<td class="left" valign="top">
							<label for="enquiry_comments">Message:</label>
							<?php if (isset ( $this->_tpl_vars['errorArray']['enquiry_comments'] )): ?><em class="error"><?php echo $this->_tpl_vars['errorArray']['enquiry_comments']; ?>
</em><?php endif; ?>
						</td>
						<td><textarea name="enquiry_comments" id="enquiry_comments" rows="20" cols="20"></textarea></td>
					</tr>
				</table>	
				<p>To make sure you are not a spammer and are a person, please confirm the characters you see in the box below before you submit.</p>
				<?php if (isset ( $this->_tpl_vars['errorArray']['enquiry_captcha'] )): ?><em class="error">Incorrect captcha details, please fill in the correct characters in the box.</em><?php endif; ?>
				<br /><br />
				<div id="captcha-area"><?php echo $this->_tpl_vars['captchahtml']; ?>
</div>								
				<input type="submit" name="submit" value="Submit" class="submit-button" />
			</form>
		
		</div>
		<div class="clear"></div>
		<div class="line-hor"></div>			
		<div id="map-canvas"></div>
	</div>
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/sidebar.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>
	
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/footer.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>
		
</div>
<?php echo '
<script type="text/javascript">
function submitForm() {
	document.forms.detailsForm.submit();					 
}
				
$( document ).ready(function() {

	$( "#areapost_name" ).autocomplete({
		source: "/feeds/area.php",
		minLength: 2,
		select: function( event, ui ) {
		
			if(ui.item.id == \'\') {
				$(\'#areapost_code\').val(\'\');					
			} else { 
				$(\'#areapost_code\').val(ui.item.id);									
			}
			
			$(\'#areapost_name\').val(\'\');										
		}
	});
});		
</script>
'; ?>

</body>
</html>