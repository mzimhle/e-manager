<?php /* Smarty version 2.6.20, created on 2015-05-12 15:34:16
         compiled from administration/campaign/default.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', 'administration/campaign/default.tpl', 28, false),array('modifier', 'capitalize', 'administration/campaign/default.tpl', 44, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Manager</title>
<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => 'administration/includes/css.php', 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

<?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => 'administration/includes/javascript.php', 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>
 
</head>
<body>
<!-- Start Main Container -->
<div id="container">
    <!-- Start Content Section -->
  <div id="content">
    <?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => 'administration/includes/header.php', 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

  	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
			<li><a href="/administration/campaign/" title="Jobs">Campaign</a></li>
        </ul>
	</div><!--breadcrumb-->  
  <div class="inner">  
   <h2>Campaign</h2>	

	<div class="section">
		Select campaign:
		<select id="campaign_code" name="campaign_code">
			<option value=""> ---- </option>
			<?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['campaignPairs'],'selected' => $this->_tpl_vars['domainData']['campaign_code']), $this);?>

		</select>
	</div>
	<?php if (isset ( $this->_tpl_vars['domainData'] )): ?>	   
  <div class="clearer"><!-- --></div>
  <h2>Campaign Administration Accounts</h2>	
  <div class="clearer"><!-- --></div>
  <div class="section">
  	<a href="/administration/campaign/accounts/" title="Manage Accounts"><img src="/administration/images/users.gif" alt="Manage Accounts" height="50" width="50" /></a>
  	<a href="/administration/campaign/accounts/" title="Manage Accounts" class="title">Manage Accounts</a>
  </div>  
  <div class="clearer"><!-- --></div>
  <h2>Campaign Pages</h2>
  <?php if (isset ( $this->_tpl_vars['level1'] )): ?>
  <?php unset($this->_sections['id']);
$this->_sections['id']['name'] = 'id';
$this->_sections['id']['loop'] = is_array($_loop=$this->_tpl_vars['level1']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['id']['show'] = true;
$this->_sections['id']['max'] = $this->_sections['id']['loop'];
$this->_sections['id']['step'] = 1;
$this->_sections['id']['start'] = $this->_sections['id']['step'] > 0 ? 0 : $this->_sections['id']['loop']-1;
if ($this->_sections['id']['show']) {
    $this->_sections['id']['total'] = $this->_sections['id']['loop'];
    if ($this->_sections['id']['total'] == 0)
        $this->_sections['id']['show'] = false;
} else
    $this->_sections['id']['total'] = 0;
if ($this->_sections['id']['show']):

            for ($this->_sections['id']['index'] = $this->_sections['id']['start'], $this->_sections['id']['iteration'] = 1;
                 $this->_sections['id']['iteration'] <= $this->_sections['id']['total'];
                 $this->_sections['id']['index'] += $this->_sections['id']['step'], $this->_sections['id']['iteration']++):
$this->_sections['id']['rownum'] = $this->_sections['id']['iteration'];
$this->_sections['id']['index_prev'] = $this->_sections['id']['index'] - $this->_sections['id']['step'];
$this->_sections['id']['index_next'] = $this->_sections['id']['index'] + $this->_sections['id']['step'];
$this->_sections['id']['first']      = ($this->_sections['id']['iteration'] == 1);
$this->_sections['id']['last']       = ($this->_sections['id']['iteration'] == $this->_sections['id']['total']);
?>
  <div class="section<?php if ($this->_sections['id']['index'] != '0'): ?> mrg_left_50<?php endif; ?>">
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level1'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level1'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
"><img src="/administration/images/users.gif" alt="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level1'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" height="50" width="50" /></a>
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level1'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level1'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" class="title">Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level1'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</a>
  </div> 
  <?php endfor; endif; ?>
  <?php endif; ?>
    <div class="clearer"><!-- --></div>   
  <?php if (isset ( $this->_tpl_vars['level2'] )): ?>
  <?php unset($this->_sections['id']);
$this->_sections['id']['name'] = 'id';
$this->_sections['id']['loop'] = is_array($_loop=$this->_tpl_vars['level2']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['id']['show'] = true;
$this->_sections['id']['max'] = $this->_sections['id']['loop'];
$this->_sections['id']['step'] = 1;
$this->_sections['id']['start'] = $this->_sections['id']['step'] > 0 ? 0 : $this->_sections['id']['loop']-1;
if ($this->_sections['id']['show']) {
    $this->_sections['id']['total'] = $this->_sections['id']['loop'];
    if ($this->_sections['id']['total'] == 0)
        $this->_sections['id']['show'] = false;
} else
    $this->_sections['id']['total'] = 0;
if ($this->_sections['id']['show']):

            for ($this->_sections['id']['index'] = $this->_sections['id']['start'], $this->_sections['id']['iteration'] = 1;
                 $this->_sections['id']['iteration'] <= $this->_sections['id']['total'];
                 $this->_sections['id']['index'] += $this->_sections['id']['step'], $this->_sections['id']['iteration']++):
$this->_sections['id']['rownum'] = $this->_sections['id']['iteration'];
$this->_sections['id']['index_prev'] = $this->_sections['id']['index'] - $this->_sections['id']['step'];
$this->_sections['id']['index_next'] = $this->_sections['id']['index'] + $this->_sections['id']['step'];
$this->_sections['id']['first']      = ($this->_sections['id']['iteration'] == 1);
$this->_sections['id']['last']       = ($this->_sections['id']['iteration'] == $this->_sections['id']['total']);
?>
  <div class="section<?php if ($this->_sections['id']['index'] != '0'): ?> mrg_left_50<?php endif; ?>">
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level2'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level2'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
"><img src="/administration/images/users.gif" alt="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level2'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" height="50" width="50" /></a>
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level2'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level2'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" class="title">Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level2'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</a>
  </div> 
  <?php endfor; endif; ?>
  <?php endif; ?> 
  <div class="clearer"><!-- --></div>   
  <?php if (isset ( $this->_tpl_vars['level3'] )): ?>
  <?php unset($this->_sections['id']);
$this->_sections['id']['name'] = 'id';
$this->_sections['id']['loop'] = is_array($_loop=$this->_tpl_vars['level3']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['id']['show'] = true;
$this->_sections['id']['max'] = $this->_sections['id']['loop'];
$this->_sections['id']['step'] = 1;
$this->_sections['id']['start'] = $this->_sections['id']['step'] > 0 ? 0 : $this->_sections['id']['loop']-1;
if ($this->_sections['id']['show']) {
    $this->_sections['id']['total'] = $this->_sections['id']['loop'];
    if ($this->_sections['id']['total'] == 0)
        $this->_sections['id']['show'] = false;
} else
    $this->_sections['id']['total'] = 0;
if ($this->_sections['id']['show']):

            for ($this->_sections['id']['index'] = $this->_sections['id']['start'], $this->_sections['id']['iteration'] = 1;
                 $this->_sections['id']['iteration'] <= $this->_sections['id']['total'];
                 $this->_sections['id']['index'] += $this->_sections['id']['step'], $this->_sections['id']['iteration']++):
$this->_sections['id']['rownum'] = $this->_sections['id']['iteration'];
$this->_sections['id']['index_prev'] = $this->_sections['id']['index'] - $this->_sections['id']['step'];
$this->_sections['id']['index_next'] = $this->_sections['id']['index'] + $this->_sections['id']['step'];
$this->_sections['id']['first']      = ($this->_sections['id']['iteration'] == 1);
$this->_sections['id']['last']       = ($this->_sections['id']['iteration'] == $this->_sections['id']['total']);
?>
  <div class="section<?php if ($this->_sections['id']['index'] != '0'): ?> mrg_left_50<?php endif; ?>">
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level3'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level3'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
"><img src="/administration/images/users.gif" alt="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level3'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" height="50" width="50" /></a>
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level3'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level3'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" class="title">Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level3'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</a>
  </div> 
  <?php endfor; endif; ?>
  <?php endif; ?>  
  <div class="clearer"><!-- --></div> 
  <?php if (isset ( $this->_tpl_vars['level4'] )): ?>
  <?php unset($this->_sections['id']);
$this->_sections['id']['name'] = 'id';
$this->_sections['id']['loop'] = is_array($_loop=$this->_tpl_vars['level4']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['id']['show'] = true;
$this->_sections['id']['max'] = $this->_sections['id']['loop'];
$this->_sections['id']['step'] = 1;
$this->_sections['id']['start'] = $this->_sections['id']['step'] > 0 ? 0 : $this->_sections['id']['loop']-1;
if ($this->_sections['id']['show']) {
    $this->_sections['id']['total'] = $this->_sections['id']['loop'];
    if ($this->_sections['id']['total'] == 0)
        $this->_sections['id']['show'] = false;
} else
    $this->_sections['id']['total'] = 0;
if ($this->_sections['id']['show']):

            for ($this->_sections['id']['index'] = $this->_sections['id']['start'], $this->_sections['id']['iteration'] = 1;
                 $this->_sections['id']['iteration'] <= $this->_sections['id']['total'];
                 $this->_sections['id']['index'] += $this->_sections['id']['step'], $this->_sections['id']['iteration']++):
$this->_sections['id']['rownum'] = $this->_sections['id']['iteration'];
$this->_sections['id']['index_prev'] = $this->_sections['id']['index'] - $this->_sections['id']['step'];
$this->_sections['id']['index_next'] = $this->_sections['id']['index'] + $this->_sections['id']['step'];
$this->_sections['id']['first']      = ($this->_sections['id']['iteration'] == 1);
$this->_sections['id']['last']       = ($this->_sections['id']['iteration'] == $this->_sections['id']['total']);
?>
  <div class="section<?php if ($this->_sections['id']['index'] != '0'): ?> mrg_left_50<?php endif; ?>">
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level4'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level4'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
"><img src="/administration/images/users.gif" alt="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level4'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" height="50" width="50" /></a>
  	<a href="/administration/campaign/<?php echo $this->_tpl_vars['level4'][$this->_sections['id']['index']]; ?>
/" title="Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level4'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" class="title">Manage <?php echo ((is_array($_tmp=$this->_tpl_vars['level4'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</a>
  </div> 
  <?php endfor; endif; ?>
  <?php endif; ?>   
    </div><!--inner-->
	<?php endif; ?>
  </div><!-- End Content Section -->
	
 <?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => 'administration/includes/footer.php', 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>


<?php echo '
<script type="text/javascript">

$( document ).ready(function() {

	$(\'#campaign_code\').change(function() {
	
		var campaigncode	= $(\'#campaign_code :selected\').val();
		
		$.ajax({
			type: "GET",
			url: "default.php",
			data: "campaigncode="+campaigncode,
			dataType: "html",
			success: function(items){
				window.location.href = window.location.href;
			}
		});
		
	});
	
});

</script>
'; ?>

</div>
<!-- End Main Container -->
</body>
</html>