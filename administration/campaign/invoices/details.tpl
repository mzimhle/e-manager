<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Invoices</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
<script type="text/javascript" language="javascript" src="/administration/campaign/invoices/default.js"></script>
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
			<li><a href="/administration/campaign/invoices/" title="">Campaign Invoice</a></li>
			<li>{if isset($invoiceData)}Edit Campaign Invoice{else}Add a Campaign Invoice{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($invoiceData)}Edit Campaign Invoice{else}Add a Campaign Invoice{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
			<li><a href="{if isset($invoiceData)}/administration/campaign/invoices/invoiceitems.php?code={$invoiceData.invoice_code}{else}#{/if}" title="Items">Items</a></li>
			<li><a href="{if isset($invoiceData)}/administration/campaign/invoices/invoicefiles.php?code={$invoiceData.invoice_code}{else}#{/if}" title="Files">Files</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/invoices/details.php{if isset($invoiceData)}?code={$invoiceData.invoice_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
           <tr>
            <td class="left_col"><h4>Active</h4></td>
            <td><input type="checkbox" name="invoice_active" id="invoice_active" value="1" {if $invoiceData.invoice_active eq 1} checked="checked" {/if} /></td>
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray.campaign_code)}style="color: red"{/if}><h4>Campaign:</h4></td>
            <td>
				{if !isset($invoiceData)}
				<select id="campaign_code" name="campaign_code">
					<option value=""> --- </option>
					{html_options options=$campaignPairs selected=$invoiceData.campaign_code}</td>
				</select>
				{else}
					{$invoiceData.campaign_company}
					<input type="hidden" id="campaign_code" name="campaign_code" value="{$invoiceData.campaign_code}" />
				{/if}
			</td>
          </tr> 		  
          <tr>
            <td class="left_col" {if isset($errorArray.invoice_contact_name)}style="color: red"{/if}><h4>Contact Name:</h4></td>
			<td><input type="text" name="invoice_contact_name" id="invoice_contact_name" value="{$invoiceData.participant_name}" size="60"/></td>	
          </tr>		
          <tr>
            <td class="left_col" {if isset($errorArray.invoice_contact_surname)}style="color: red"{/if}><h4>Contact Surname:</h4></td>
			<td><input type="text" name="invoice_contact_surname" id="invoice_contact_surname" value="{$invoiceData.participant_surname}" size="60"/></td>	
          </tr>		
          <tr>
            <td class="left_col" {if isset($errorArray.invoice_contact_email)}style="color: red"{/if}><h4>Contact Email:</h4></td>
			<td><input type="text" name="invoice_contact_email" id="invoice_contact_email" value="{$invoiceData.invoice_contact_email}" size="60"/></td>	
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray.invoice_contact_cell)}style="color: red"{/if}><h4>Contact Cell:</h4></td>
			<td><input type="text" name="invoice_contact_cell" id="invoice_contact_cell" value="{$invoiceData.invoice_contact_cell}" size="60"/></td>	
          </tr>
          <tr>
            <td class="left_col" {if isset($errorArray.invoice_contact_telephone)}style="color: red"{/if}><h4>Contact Telephone:</h4></td>
			<td><input type="text" name="invoice_contact_telephone" id="invoice_contact_telephone" value="{$invoiceData.invoice_contact_telephone}" size="60"/></td>	
          </tr>			  	  		    		  
		<tr>
			<td class="left_col" {if isset($errorArray.invoice_notes)}style="color: red"{/if}><h4>Notes:</h4></td>
			<td><textarea name="invoice_notes" id="invoice_notes" rows="15" cols="50">{$invoiceData.invoice_notes}</textarea></td>	
		</tr>			  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/recruiters/clients/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
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
</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
