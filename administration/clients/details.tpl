<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Manager</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
{literal}
<script type="text/javascript">
var map;
var marker;

function mapa()
{
	var opts = {'center': new google.maps.LatLng({/literal}{$campaignData.campaign_latitude|default:"-33.9285481685662"}, {$campaignData.campaign_longitude|default:"18.42681884765625"}{literal}), 'zoom':14, 'mapTypeId': google.maps.MapTypeId.SATELLITE }
	map = new google.maps.Map(document.getElementById('mapdiv'),opts);
	
	{/literal}{if $campaignData.campaign_latitude neq '' and $campaignData.campaign_longitude neq ''}{literal}
	marker = new google.maps.Marker({
		position: new google.maps.LatLng({/literal}{$campaignData.campaign_latitude}, {$campaignData.campaign_longitude}{literal}),
		map: map
	});
	{/literal}{/if}{literal}
	google.maps.event.addListener(map,'click',function(event) {
		
		//call function to create marker
		if (marker) {
			marker.setMap(null);
			marker = null;
		}
		
		document.getElementById('campaign_latitude').value = event.latLng.lat();
		document.getElementById('campaign_longitude').value = event.latLng.lng();
		marker = new google.maps.Marker({
			position: event.latLng,
			map: map
		});
	})
}
</script>
{/literal}
</head>
<body onload="mapa()">
<!-- Start Main Container -->
<div id="container">
    <!-- Start Content recruiter -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
  	<br />
	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
			<li><a href="/administration/clients/" title="">Clients</a></li>
			<li>{if isset($campaignData)}Edit Client{else}Add a Client{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($campaignData)}Edit client: {$campaignData.campaign_contact_name}{else}Add a new client{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/clients/details.php{if isset($campaignData)}?code={$campaignData.campaign_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr>
				<td colspan="3" class="heading">Details</td>
			</tr>
			<tr>
				<td colspan="3">
					<h4>Active</h4><br />
					<input type="checkbox" name="campaign_active" id="campaign_active" value="1" {if $campaignData.campaign_active eq 1} checked="checked" {/if} />
				</td>			
			</tr>
			<tr>
				<td>
					<h4 class="error">campaign Name:</h4><br />
					<input type="text" name="campaign_name" id="campaign_name" value="{$campaignData.campaign_name}" size="30"/><br />
					{if isset($errorArray.campaign_name)}<br /><em>{$errorArray.campaign_name}</em>{else}<em>(Shown on website)</em>{/if}
				</td>	
				<td>
					<h4 class="error">campaign company:</h4><br />
					<input type="text" name="campaign_company" id="campaign_company" value="{$campaignData.campaign_company}" size="30"/>
					{if isset($errorArray.campaign_company)}<br /><em>{$errorArray.campaign_company}</em>{/if}
				</td>	
				<td>
					<h4>campaign Registration Number:</h4><br />
					<input type="text" name="campaign_registration_number" id="campaign_registration_number" value="{$campaignData.campaign_registration_number}" size="20"/>
				</td>					
          </tr>	  
			{if isset($campaignData)}
          <tr>
            <td>
				<h4>Campaign Code:</h4><br />
				{$campaignData.campaign_code}
			</td>	
            <td>
				<h4>Directory:</h4><br />
				{$campaignData.campaign_directory}
			</td>	
            <td>
				<h4>Campaign Type:</h4><br />
				{$campaignData.campaigntype_name}
			</td>	
          </tr>			  
			{else}
          <tr>
            <td colspan="3">
				<h4>Campaign Type:</h4><br />
				<select id="campaigntype_code" name="campaigntype_code">
				{html_options options=$campaigntypePairs selected=$campaignData.campaign_code}
				</select>
				{if isset($errorArray.campaigntype_code)}<br /><em>{$errorArray.campaigntype_code}</em>{/if}
			</td>	
          </tr>				
		  {/if}
          <tr>
            <td>
				<h4 class="error">Contact Name:</h4><br />
				<input type="text" name="campaign_contact_name" id="campaign_contact_name" value="{$campaignData.campaign_contact_name}" size="30"/>
				{if isset($errorArray.campaign_contact_name)}<br /><em>{$errorArray.campaign_contact_name}</em>{/if}
			</td>	
            <td>
				<h4 class="error">Contact Surname:</h4><br />
				<input type="text" name="campaign_contact_surname" id="campaign_contact_surname" value="{$campaignData.campaign_contact_surname}" size="30"/>
				{if isset($errorArray.campaign_contact_surname)}<br /><em>{$errorArray.campaign_contact_surname}</em>{/if}
			</td>	
            <td>
				<h4 class="error">Domain:</h4><br />
				<input type="text" name="campaign_domain" id="campaign_domain" value="{$campaignData.campaign_domain}" size="30"/>
				{if isset($errorArray.campaign_domain)}<br /><em>{$errorArray.campaign_domain}</em>{/if}
			</td>	
          </tr>	
          <tr>
            <td>
				<h4 class="error">Email:</h4><br />
				<input type="text" name="campaign_email" id="campaign_email" value="{$campaignData.campaign_email}" size="30"/>
				{if isset($errorArray.campaign_email)}<br /><em>{$errorArray.campaign_email}</em>{/if}
			</td>	
			<td colspan="2">
				<h4>Area/City/Suburb:</h4><br />
				<input type="text" name="areapost_name" id="areapost_name" value="{$campaignData.areapost_name}" size="60" />
				<input type="hidden" name="areapost_code" id="areapost_code" value="{$campaignData.areapost_code}" /><br />
				<span class="success" id="selectedarea">{$campaignData.areapost_name}</span>
				{if isset($errorArray.areapost_code)}<br /><span class="error">{$errorArray.areapost_code}<span>{else}<br /><em>Where is the business located</em>{/if}			
			</td>
          </tr>	
          <tr>
            <td>
				<h4>Telephone:</h4><br />
				<input type="text" name="campaign_telephone" id="campaign_telephone" value="{$campaignData.campaign_telephone}" size="15"/>
				{if isset($errorArray.campaign_telephone)}<br /><em>{$errorArray.campaign_telephone}</em>{/if}
			</td>	
            <td>
				<h4>Cell:</h4><br />
				<input type="text" name="campaign_cell" id="campaign_cell" value="{$campaignData.campaign_cell}" size="30"/>
				{if isset($errorArray.campaign_cell)}<br /><em>{$errorArray.campaign_cell}</em>{/if}
			</td>	
            <td>
				<h4>Fax:</h4><br />
				<input type="text" name="campaign_fax" id="campaign_fax" value="{$campaignData.campaign_fax}" size="15"/>
				{if isset($errorArray.campaign_fax)}<br /><em>{$errorArray.campaign_fax}</em>{/if}
			</td>	
          </tr>
          <tr>
            <td>
				<h4>Social Media - Facebook:</h4><br />
				<input type="text" name="campaign_facebook" id="campaign_facebook" value="{$campaignData.campaign_facebook}" size="30"/>
			</td>	
            <td>
				<h4>Social Media - Twitter:</h4><br />
				<input type="text" name="campaign_twitter" id="campaign_twitter" value="{$campaignData.campaign_twitter}" size="30"/>
			</td>	
            <td>
				<h4>Social Media - Google+:</h4><br />
				<input type="text" name="campaign_google" id="campaign_google" value="{$campaignData.campaign_google}" size="30"/>
			</td>	
          </tr>
          <tr>
            <td>
				<h4>Social Media - LinkedIn:</h4><br />
				<input type="text" name="campaign_linkedIn" id="campaign_linkedIn" value="{$campaignData.campaign_linkedIn}" size="30"/>
			</td>	
            <td colspan="2">
				<h4>Social Media - Blog:</h4><br />
				<input type="text" name="campaign_blog" id="campaign_blog" value="{$campaignData.campaign_blog}" size="30"/>
			</td>	
          </tr>
          <tr>
            <td valign="top">
				<h4>Address:</h4><br />
				<textarea type="text" name="campaign_address" id="campaign_address" rows="3" cols="35">{$campaignData.campaign_address}</textarea>
			</td>			  
            <td colspan="2">
				<h4>Description:</h4><br />
				<textarea type="text" name="campaign_description" id="campaign_description" rows="5" cols="60">{$campaignData.campaign_description}</textarea>
			</td>	
          </tr>			  
          <tr>
            <td valign="top">
				<h4>Latitude:</h4><br />
				<input type="text" name="campaign_latitude" id="campaign_latitude" value="{$campaignData.campaign_latitude}" size="30" readonly />
				<h4>Longitude:</h4>
				<input type="text" name="campaign_longitude" id="campaign_longitude" value="{$campaignData.campaign_longitude}" size="30" readonly />				
			</td>	
			<td colspan="2">
				<div id="mapdiv" style="width: 500px; height: 380px;"></div>				
			</td>
		  </tr>
          <tr>
            <td>
				<h4>Bank:</h4><br />
				<input type="text" name="campaign_bankaccount_bank" id="campaign_bankaccount_bank" value="{$campaignData.campaign_bankaccount_bank}" size="30"/>
			</td>	
            <td>
				<h4>Bank Account Holder:</h4><br />
				<input type="text" name="campaign_bankaccount_holder" id="campaign_bankaccount_holder" value="{$campaignData.campaign_bankaccount_holder}" size="30"/>
			</td>	
            <td>
				<h4>Bank Account Number:</h4><br />
				<input type="text" name="campaign_bankaccount_number" id="campaign_bankaccount_number" value="{$campaignData.campaign_bankaccount_number}" size="30"/>
			</td>	
          </tr>
          <tr>
            <td>
				<h4>Bank Account Branch Code:</h4><br />
				<input type="text" name="campaign_bankaccount_branchcode" id="campaign_bankaccount_branchcode" value="{$campaignData.campaign_bankaccount_branchcode}" size="10"/>
			</td>	
            <td colspan="2">
				<h4>Vat (only % decimal):</h4><br />
				<input type="text" name="campaign_vat" id="campaign_vat" value="{$campaignData.campaign_vat}" size="10"/>
			</td>	
          </tr>			  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/clients/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
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
