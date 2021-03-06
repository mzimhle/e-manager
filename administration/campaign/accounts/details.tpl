<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Manager</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
</head>
<body>
<!-- Start Main Container -->
<div id="container">
    <!-- Start Content agentType -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
  	<br />
	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
            <li><a href="/administration/campaign/" title="Accounts">Campaign</a></li>
			<li><a href="/administration/campaign/accounts/" title="Accounts">Accounts</a></li>
			<li>{if isset($administratorData)}Edit Account{else}Add an account{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
	<div class="inner"> 
      <h2>Add / Edit Account</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/accounts/details.php{if isset($administratorData)}?code={$administratorData.administrator_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
           <tr>
            <td class="left_col">
				<h4>Active</h4><br />
				<input type="checkbox" name="administrator_active" id="administrator_active" value="1" {if $administratorData.administrator_active eq 1} checked="checked" {/if} />
			</td>
            <td>
				<h4 class="error">Name:</h4><br />
				<input type="text" name="administrator_name" id="administrator_name" value="{$administratorData.administrator_name}" size="30"/>
				{if isset($errorArray.administrator_name)}<br /><em class="error">{$errorArray.administrator_name}</em>{/if}
			</td>
            <td>
				<h4 class="error">Surname:</h4><br />
				<input type="text" name="administrator_surname" id="administrator_surname" value="{$administratorData.administrator_surname}" size="30"/>
				{if isset($errorArray.administrator_surname)}<br /><em class="error">{$errorArray.administrator_surname}</em>{/if}
			</td>
          </tr>
          <tr>
            <td>
				<h4 class="error">Email:</h4><br />
				<input type="text" name="administrator_email" id="administrator_email" value="{$administratorData.administrator_email}" size="30"/>
				{if isset($errorArray.administrator_email)}<br /><em class="error">{$errorArray.administrator_email}</em>{/if}
			</td>
            <td>
				<h4 class="error">Password:</h4><br />
				<input type="text" name="administrator_password" id="administrator_password" value="{$administratorData.administrator_password}" size="30"/>
				{if isset($errorArray.administrator_password)}<br /><em class="error">{$errorArray.administrator_password}</em>{/if}
			</td>			
            <td>
				<h4 class="error">Cellphone:</h4><br />
				<input type="text" name="administrator_cellphone" id="administrator_cellphone" value="{$administratorData.administrator_cellphone}" size="30"/>
				{if isset($errorArray.administrator_cellphone)}<br /><em class="error">{$errorArray.administrator_cellphone}</em>{/if}
			</td>
          </tr>			  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/campaign/accounts/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
          <a href="javascript:submitForm();" class="blue_button mrg_left_20 fl"><span>Update Account</span></a>   
        </div>
    <div class="clearer"><!-- --></div>
    </div><!--inner-->
 </div> 	
<!-- End Content agentType -->
{literal}
<script type="text/javascript" language="javascript">
function submitForm() {
	document.forms.detailsForm.submit();		
}
</script>
{/literal}
 </div><!-- End Content agentType -->
 {include_php file='administration/includes/footer.php'}
</div>
<!-- End Main Container -->
</body>
</html>
