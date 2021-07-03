<?php /* Smarty version 2.6.20, created on 2015-06-01 13:48:57
         compiled from adminclient/MU3H/includes/footer.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'capitalize', 'adminclient/MU3H/includes/footer.tpl', 1, false),)), $this); ?>
<div id="footer">	<?php if (isset ( $this->_tpl_vars['userData'] )): ?>	<p>		<a href="/admin/">Home</a>		<?php unset($this->_sections['id']);
$this->_sections['id']['name'] = 'id';
$this->_sections['id']['loop'] = is_array($_loop=$this->_tpl_vars['userData']['pages']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
?>			<a href="/admin/<?php echo $this->_tpl_vars['userData']['pages'][$this->_sections['id']['index']]; ?>
/"><?php echo ((is_array($_tmp=$this->_tpl_vars['userData']['pages'][$this->_sections['id']['index']])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</a>		<?php endfor; endif; ?>	</p>	<?php endif; ?>	<p>	Copyright &copy; 2013 − <?php echo $this->_tpl_vars['domainData']['campaign_company']; ?>
	<span style="float: right;">		<a href="http://www.willow-nettica.com" target="_blank">			<img width="50" src="http://www.willow-nettica.com/img/logo/dark-wn-logo-min.png" title="Powered by Willow-Nettica" alt="Powered by Willow-Nettica" />		</a>	</span>	<span style="float: right; margin-right: 8px;">		<a href="http://www.willow-nettica.com" target="_blank">			Powered By Willow-Nettica		</a>	</span>	</p>	</div>