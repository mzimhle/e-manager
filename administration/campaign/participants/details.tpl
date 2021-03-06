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
    <!-- Start Content recruiter -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
  	<br />
	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
            <li><a href="/administration/campaign/" title="Campaign">Campaign</a></li>
			<li><a href="/administration/campaign/participants/" title="Participants">Participants</a></li>
			<li>{if isset($participantData)}Edit Participant{else}Add a Participant{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($participantData)}Edit Participant{else}Add a Participant{/if}</h2>
    <div id="sidetabs">
        <ul> 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->
	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/participants/details.php{if isset($participantData)}?code={$participantData.participant_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">			  	   
          <tr>
            <td>
				<h4 class="error">Name:</h4><br />
				<input type="text" name="participant_name" id="participant_name" value="{$participantData.participant_name}" size="30"/>
				{if isset($errorArray.participant_name)}<br /><em class="error">{$errorArray.participant_name}</em>{/if}
			</td>	
            <td>
				<h4 class="error">Surname:</h4><br />
				<input type="text" name="participant_surname" id="participant_surname" value="{$participantData.participant_surname}" size="30"/>
				{if isset($errorArray.participant_surname)}<br /><em class="error">{$errorArray.participant_surname}</em>{/if}
			</td>	
			<td>
				<h4 class="error">Area:</h4><br />
				<input type="text" name="areapost_name" id="areapost_name" value="{if $participantData.areapost_code neq ''}{$participantData.areapost_suburb}, {$participantData.areapost_city}, {$participantData.areapost_box}{/if}" size="30" />
				<input type="hidden" name="areapost_code" id="areapost_code" value="{$participantData.areapost_code}" />
				{if isset($errorArray.areapost_code)}<br /><em class="error">{$errorArray.areapost_code}</em>{/if}
			</td>		
          </tr>	 
          <tr>
            <td>
				<h4 class="error">E-Mail:</h4><br />
				<input type="text" name="participant_email" id="participant_email" value="{$participantData.participant_email}" size="30"/>
				{if isset($errorArray.participant_email)}<br /><em class="error">{$errorArray.participant_email}</em>{/if}
			</td>	
            <td colspan="2">
				<h4>Cellphone:</h4><br />
				<input type="text" name="participant_cellphone" id="participant_cellphone" value="{$participantData.participant_cellphone}" size="30"/>
				{if isset($errorArray.participant_cellphone)}<br /><em class="error">{$errorArray.participant_cellphone}</em>{/if}
			</td>		
          </tr>
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/resources/recruiters/clients/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
          <a href="javascript:submitForm();" class="blue_button mrg_left_20 fl"><span>Save &amp; Complete</span></a>   
        </div>
    <div class="clearer"><!-- --></div>
    </div><!--inner-->
 </div> 	
<!-- End Content recruiter -->
 </div><!-- End Content recruiter -->
 {include_php file='administration/includes/footer.php'}
</div>
{literal}
<script type="text/javascript" language="javascript">

function submitForm() {
	document.forms.detailsForm.submit();					 
}

$( document ).ready(function() {
	$( "#areapost_name" ).autocomplete({
		source: "/feeds/area.php",
		minLength: 2,
		select: function( event, ui ) {
		
			if(ui.item.id == '') {
				$('#areapost_name').html('');
				$('#areapost_code').val('');					
			} else {
				$('#areapost_name').html('<b>' + ui.item.value + '</b>');
				$('#areapost_code').val(ui.item.id);	
			}
			$('#areapost_name').val('');										
		}
	});
});

</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
