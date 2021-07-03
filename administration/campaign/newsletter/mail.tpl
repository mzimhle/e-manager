<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Manager</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
<script type="text/javascript" language="javascript" src="default.js"></script>
</head>
<body>
<!-- Start Main Container -->
<div id="container">
    <!-- Start Content recruiter -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
  	<br />
	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
			<li><a href="/administration/campaign/" title="Campaign">Campaign</a></li>
			<li><a href="/administration/campaign/newsletter/" title="Newsletter">Newsletter</a></li>
			<li>{$newsletterData.newsletter_name}</li>
			<li>Mail to members</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{$newsletterData.newsletter_name}</h2>
    <div class="clearer"><!-- --></div>	
    <div id="sidetabs">
        <ul >             
            <li><a href="/administration/campaign/newsletter/details.php?code={$newsletterData.newsletter_code}" title="Details">Details</a></li>
			<li class="active"><a href="#" title="Mail">Mail</a></li>
        </ul>
    </div><!--tabs-->	
	<div class="detail_box">
	<h4>Members sent the mailer</h4><br />
	<form id="detailsForm" name="detailsForm" action="/administration/campaign/newsletter/mail.php?code={$newsletterData.newsletter_code}" method="post">
		<table id="dataTable" border="0" cellspacing="0" cellpadding="5" width="100%">
			<thead>
			<tr>
			<th>Sent</th>
			<th>Name</th>
			<th>Email</th>
			<th>Cellphone</th>
			<th>Result</th>
			<th>Mailer</th>
			</tr>
		   </thead>
		   <tbody> 
		  {foreach from=$commData item=item}
		  <tr class="{if $item._comm_sent eq '1'}success{else}error{/if}">
			<td align="left">{$item._comm_added|date_format}</td>
			<td align="left">{$item.participant_name} {$item.participant_surname}</td>
			<td align="left">{$item.participant_email}</td>
			<td align="left">{$item.participant_cellphone}</td>
			<td align="left">{$item._comm_output}</td>
			<td align="left"><a href="/mailer/view/{$item._comm_code}" target="_blank">View Mailer</a></td>
		  </tr>
		  {/foreach}     
		  </tbody>
		</table>
		<br /><br />		
		<button onclick="sendEmail(); return false;">Send Newsletters</button>
		<input type="hidden" id="sendnewsletter" name="sendnewsletter" value="1" />	
	</form>
	</div>
	<div class="clearer"><!-- --></div>	

    </div><!--inner-->	
<!-- End Content recruiter -->
 </div><!-- End Content recruiter -->
 {include_php file='administration/includes/footer.php'}
</div>
{literal}
<script type="text/javascript">
function sendEmail() {
	if(confirm('Are you sure you want to send this to all members?')) {
		document.forms.detailsForm.submit();					 
	}
}
</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
