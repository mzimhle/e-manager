<?php /* Smarty version 2.6.20, created on 2015-06-01 13:48:57
         compiled from adminclient/MU3H/includes/header.tpl */ ?>
<div id="header">
	<div id="logo">
		<h1><a href="/admin/"><?php echo $this->_tpl_vars['domainData']['campaign_company']; ?>
 Admin</a></h1>
	</div>
		<?php if (isset ( $this->_tpl_vars['userData'] )): ?>
		<span class="top_header_links"><a href="#"><?php echo $this->_tpl_vars['userData']['administrator_name']; ?>
 <?php echo $this->_tpl_vars['userData']['administrator_surname']; ?>
 </a> | <a href="/admin/logout.php">logout</a></span>
		<?php endif; ?>
	<div class="clr"></div>
</div>