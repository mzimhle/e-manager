<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Accounts</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
<script type="text/javascript" language="javascript" src="/administration/campaign/accounts/default.js"></script>
</head>

<body>
<!-- Start Main Container -->
<div id="container">
    <!-- Start Content Section -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
            <li><a href="/administration/campaign/" title="Accounts">Campaign</a></li>
			<li><a href="/administration/campaign/accounts/" title="Accounts">Accounts</a></li>
        </ul>
	</div><!--breadcrumb-->  
	<div class="inner">     
    <h2>Manage Accounts</h2>			
	<a href="/administration/campaign/accounts/details.php" title="Click to Add a new Account" class="blue_button fr mrg_bot_10"><span style="float:right;">Add a new Account</span></a> <br />
    <div class="clearer"><!-- --></div>
    <div id="tableContent" align="center">
		<!-- Start Content Table -->
		<div class="content_table">
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0">
			<thead>
			  <tr>
				<th>Added</th>	
				<th>Full Name</th>
				<th>Cellphone</th>
				<th>Email</th>
				<th>Password</th>
				<th>Domain</th>
				<th></th>
				<th></th>
				<th></th>
			   </tr>
			   </thead>
			   <tbody>
			  {foreach from=$administratorData item=item}
			  <tr>
				<td>{$item.administrator_added|date_format}</td>
				<td align="left"><a href="/administration/campaign/accounts/details.php?code={$item.administrator_code}">{$item.administrator_name} {$item.administrator_surname}</a></td>	
				<td align="left">{$item.administrator_cellphone}</td>
				<td align="left">{$item.administrator_email}</td>	
				<td align="left">{$item.administrator_password}</td>		
				<td align="left"><a href="http://{$item.campaign_domain}" target="_blank">{$item.campaign_company}</a></td>	
				<td align="left">{if $item.administrator_active eq '1'}<span style="color: green;">Active</span>{else}<span style="color: red;">Not Active</span>{/if}</td>
				<td align="left">{if $item.administrator_active eq '1'}<button onclick="sendcompemail('{$item.administrator_code}')">Send Login</button>{else}<span style="color: red; font-weight: bold">Not Active</span>{/if}</td>	
				<td align="left"><button onclick="deleteitem('{$item.administrator_code}')">Delete</button></td>	
			   </tr>
			  {/foreach}
			  </tbody>
			</table>
		 </div>
		 <!-- End Content Table -->	
	</div>
    <div class="clearer"><!-- --></div>
    </div><!--inner-->
  </div><!-- End Content Section -->
 {include_php file='administration/includes/footer.php'}
 {literal}
 <script type="text/javascript" language="javascript">
function deleteitem(code) {					
	if(confirm('Are you sure you want to delete this item?')) {
		$.ajax({ 
				type: "GET",
				url: "default.php",
				data: "delete_code="+code,
				dataType: "json",
				success: function(data){
						if(data.result == 1) {
							alert('Item deleted!');
							window.location.href = window.location.href;
						} else {
							alert(data.error);
						}
				}
		});							
	}
	
	return false;
	
}

function sendcompemail(code) {					
	if(confirm('Are you sure you want to send this competition entry mail?')) {
		$.ajax({ 
				type: "GET",
				url: "default.php",
				data: "login_code="+code,
				dataType: "json",
				success: function(data){
					if(data.result == 1) {
						alert('Email sent!');
						window.location.href = window.location.href;
					} else {
						alert(data.error);
					}
				}
		});							
	}
	
	return false;
	
}
</script>
{/literal}
</div>
<!-- End Main Container -->
</body>
</html>
