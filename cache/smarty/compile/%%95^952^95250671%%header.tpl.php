<?php /* Smarty version 2.6.20, created on 2015-07-20 15:14:57
         compiled from campaigns/MU3H/0860/includes/header.tpl */ ?>
<div id="header">
	<div class="header-box">
		<div id="slideshow">
			<div class="slide-text"><img src="<?php echo $this->_tpl_vars['link']; ?>
images/slide1.jpg" alt="" class="slidehalf" /></div>
			<div class="slide-text"> <img src="<?php echo $this->_tpl_vars['link']; ?>
images/slide2.jpg" alt="" class="slidehalf" /></div>
			<div class="slide-text"> <img src="<?php echo $this->_tpl_vars['link']; ?>
images/slide3.jpg" alt="" class="slidehalf" /></div>
			<div class="slide-text"> <img src="<?php echo $this->_tpl_vars['link']; ?>
images/slide4.jpg" alt="" class="slidehalf" /></div>
			<div class="slide-text"> <img src="<?php echo $this->_tpl_vars['link']; ?>
images/slide5.jpg" alt="" class="slidehalf" /></div>
		</div>
		
		<div id="box-nav-slider" style="width: 500px;"><div id="slideshow-navigation"><div id="pager"></div></div></div>
	</div>	
</div>
<div id="navigation">
	<ul class="nav">
		<li><a href="<?php echo $this->_tpl_vars['link']; ?>
" <?php if ($this->_tpl_vars['page'] == '' || $this->_tpl_vars['page'] == '/'): ?>class="current"<?php endif; ?>>Home</a></li>
		<li><a href="<?php echo $this->_tpl_vars['link']; ?>
about-us/" <?php if ($this->_tpl_vars['page'] == 'about-us'): ?>class="current"<?php endif; ?>>About</a></li>
		<li><a href="<?php echo $this->_tpl_vars['link']; ?>
facility/" <?php if ($this->_tpl_vars['page'] == 'facility'): ?>class="current"<?php endif; ?>>Facilities</a></li>
		<li><a href="<?php echo $this->_tpl_vars['link']; ?>
gallery/" <?php if ($this->_tpl_vars['page'] == 'gallery'): ?>class="current"<?php endif; ?>>Gallery</a></li>
		<li><a href="<?php echo $this->_tpl_vars['link']; ?>
booking/" <?php if ($this->_tpl_vars['page'] == 'booking'): ?>class="current"<?php endif; ?>>Booking</a></li>
		<li><a href="<?php echo $this->_tpl_vars['link']; ?>
contact/" <?php if ($this->_tpl_vars['page'] == 'contact'): ?>class="current"<?php endif; ?>>Contact</a></li>
	</ul>
</div>