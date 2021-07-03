<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Participants</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
<script type="text/javascript" language="javascript" src="default.js"></script>
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
            <li><a href="/administration/campaign/" title="Campaign">Campaign</a></li>
			<li><a href="/administration/campaign/participants/" title="Participants">Participants</a></li>
        </ul>
	</div><!--breadcrumb-->  
	<div class="inner">     
    <h2>Manage Participants</h2>		
	<a href="/administration/campaign/participants/details.php" title="Click to Add a new Participant" class="blue_button fr mrg_bot_10"><span style="float:right;">Add a new Participant</span></a> <br />
    <div class="clearer"><!-- --></div>
    <div id="tableContent" align="center">
		<!-- Start Content Table -->
		<div class="content_table">			
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>Added</th>
						<th>Campaign</th>
						<th>Full name</th>
						<th>E-mail address</th>
						<th>Cellphone</th>
						<th></th>
					</tr>
			   </thead>
			   <tbody> 
			  {foreach from=$participantData item=item}
			  <tr>
				<td>{$item.participant_added|date_format}</td>
				<td align="left">{$item.campaign_company}</td>
				<td align="left"><a href="/administration/campaign/participants/details.php?code={$item.participant_code}">{$item.participant_name} {$item.participant_surname}</a></td>					
				<td align="left">{$item.participant_email}</td>
				<td align="left">{$item.participant_cellphone|default:"N/A"}</td>
				<td align="left"><button onclick="deleteitem('{$item.participant_code}'); return false;">delete</button></td>
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
</div>
<!-- End Main Container -->
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
</script>
{/literal}
</body>
</html>
