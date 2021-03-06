<?php /* Smarty version 2.6.20, created on 2015-07-09 16:16:16
         compiled from campaigns/MU3H/0860/about-us/default.tpl */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Datuma Guest House - About Us</title>
	<meta name="keywords" content="about us, guest house, south africa, thornton cape town, bed and breakfast, company profile, western cape, accomodation">
	<meta name="description" content="<?php echo $this->_tpl_vars['campaign']['campaign_name']; ?>
 has been in business for the past 4 years. Suites are elegantly decorated and spacious with en-suite bathrooms.">          
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
 has been in business for the past 4 years. Suites are elegantly decorated and spacious with en-suite bathrooms.">
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/css.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/javascript.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

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
		<h2>About <?php echo $this->_tpl_vars['domainData']['campaign_name']; ?>
!</h2>		
		<img class="img-indent pimg" alt="<?php echo $this->_tpl_vars['domainData']['campaign_name']; ?>
 is happy to welcome you!" src="<?php echo $this->_tpl_vars['link']; ?>
images/nqulelwa-mzana.jpg" />  
		<p class="alt-top">
			Datuma Guesthouse has been in business for the past 4 years. Suites are elegantly decorated and spacious with en-suite bathrooms. 
			<br /><br />6 Individually decorated luxury guest units with views of Table Mountain and Grand West Casino. Experience our units with heaters & en-suite bathrooms.
			<br /><br />Fine dining on request with excellence full English breakfast. Personal attention to detail in every aspect.
		</p>
		<p>Luxurious percale linen and high quality towels and personal toiletries complete your retreat experience at Datuma's which endeavours to go the extra mile in providing you with service excellence in every discipline.</p>
		<img class="img-indent png" alt="" src="<?php echo $this->_tpl_vars['link']; ?>
images/1page-img1.png" /> 
		<img class="img-indent png" alt="" src="<?php echo $this->_tpl_vars['link']; ?>
images/1page-img1b.png" /> 
		<img class="img-indent png" alt="" src="<?php echo $this->_tpl_vars['link']; ?>
images/1page-img1c.png" /> 
		<img class="img-indent png" alt="" src="<?php echo $this->_tpl_vars['link']; ?>
images/1page-img1cent.png">
		<div class="clear"></div>
		<div class="line-hor"></div>
		<div class="clear"></div>
<div class="wrapper line-ver">
            <div class="col-1">
              <h3>Facilities Offers</h3>
              <ul>
                <li>Own tv with Dstv channels</li>
				 <li>Internet Connectivity(Wifi)</li>
                <li>Ensuite bathrooms</li>
                <li>Breakfast included </li>
				 <li>Splash pool</li>
                <li>Exclusive souvenirs</li>
              </ul>
            </div>
            <div class="col-2">
              <h3>Value Added Services</h3>
              <ul>
                <li>Laundry services by arrangement</li>
				 <li>Secure parking</li>
                <li>Picnic baskets</li>
                <li>Tours and Transfers(by arrangement) </li>
				 <li>24 Hours security and access control to property</li>
              </ul>
            </div>
			 <div class="col-1">
              <h3>Conveniently Close to</h3>
              <ul>
                <li>Cape Town Stadium</li>
				 <li>Grand West Casino</li>
                <li>Cape Town International Airport</li>
                <li>V&amp;A Waterfront </li>
                <li>Century City Mall</li>
				 <li>Vincent Palloti Hospital </li>
                <li>And Many More</li>
              </ul>
            </div>
            <div class="col-2">
              <h3>Location</h3>
              <p>We are located in a Surburb called Thornton right opposite Grand West Casino, and 5 Km away from CAnal Walk Mall in Century City.</p>
            </div>
          </div>
		<div class="clear"></div>
		<div class="line-hor"></div>
		<div class="clear"></div>		
		<div id="map-canvas"></div>
	</div>
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/sidebar.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>
	
	<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => ($this->_tpl_vars['smartypath'])."/includes/footer.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>
	
</div>
</body>
</html>