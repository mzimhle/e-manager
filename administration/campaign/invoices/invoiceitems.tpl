<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin  | Edit Campaign Invoice</title>
{include_php file='administration/includes/css.php'}
{include_php file='administration/includes/javascript.php'}
<script type="text/javascript" language="javascript" src="/administration/campaign/campaigninvoices/default.js"></script>
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
			<li><a href="/administration/campaign/campaigninvoices/" title="">Campaign Invoice</a></li>
			<li>Add Invoice items</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>Edit Campaign Invoice</h2>
    <div id="sidetabs">
        <ul > 
            <li><a href="/administration/campaign/campaigninvoices/invoiceitems.php?code={$campaigninvoiceData.campaigninvoice_code}" title="Details">Details</a></li>
			<li class="active"><a href="#" title="Items">Items</a></li>
			<li><a href="{if isset($campaigninvoiceData)}/administration/campaign/campaigninvoices/invoicefiles.php?code={$campaigninvoiceData.campaigninvoice_code}{else}#{/if}" title="Files">Files</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/campaigninvoices/details.php{if isset($campaigninvoiceData)}?code={$campaigninvoiceData.campaigninvoice_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
           <tr>
            <td class="left_col"><h4>Active</h4></td>
            <td><input type="checkbox" name="campaigninvoice_active" id="campaigninvoice_active" value="1" {if $campaigninvoiceData.campaigninvoice_active eq 1} checked="checked" {/if} /></td>
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray.campaign_code)}style="color: red"{/if}><h4>Campaign:</h4></td>
            <td>
				{$campaigninvoiceData.campaign_company}
			</td>
          </tr>
          <tr>
            <td class="left_col" {if isset($errorArray.campaigninvoice_payment_date)}style="color: red"{/if}><h4>Payment Date:</h4></td>
			<td><input type="text" name="campaigninvoice_payment_date" id="campaigninvoice_payment_date" value="{$campaignbookingData.campaigninvoice_payment_date}" size="10"/></td>		
          </tr> 		  				  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
    <div id="tableContent" align="center">
	<br />
	<h2>Invoice Items</h2>
	<br />	
		<!-- Start Content Table -->
		<div class="content_table">			
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0">
				<thead>
				<tr>
					<th>Added</th>
					<th>Campaign</th>
					<th>Reference</th>
					<th>Paid Amount</th>
					<th>Total Amount</th>
					<th>File</th>
					<th>Date Paid</th>
					<th>Full Name</th>
					<th>Contact</th>
				</tr>
			   </thead>
			   <tbody>
			  {foreach from=$invoiceitem item=item}
			  <tr>
				<td>{$item.campaigninvoice_added|date_format}</td>
				<td align="left">{$item.campaign_company}</td>
				<td align="left"><a href="/administration/campaign/campaigninvoices/details.php?code={$item.campaigninvoice_code}">{$item.campaigninvoice_code}</a></td>			
				<td align="left">{$item.campaigninvoice_amount_paid}</td>				
				<td align="left">{$item.campaigninvoice_amount_total}</td>
				<td align="left">html | pdf</td>
				<td align="left">{$item.campaigninvoice_paid_date}</td>
				<td align="left">{$item.campaigninvoice_contact_name} {$item.campaigninvoice_contact_surname}</td>
				<td align="left">{$item.campaigninvoice_contact_cell} / {$item.campaigninvoice_contact_telephone}</td>
			  </tr>
			  {/foreach}   	  
			  </tbody>
			</table>
			<br />
			<h2>Add Items</h2>
			<br />
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0">
				<thead>
				<tr>
					<th>Quantity</th>
					<th>Product</th>
					<th>Price</th>
					<th></th>
				</tr>
			   </thead>
			   <tbody>
					<td align="left"><input type="text" name="product_quantity" id="product_quantity" value="" size="3" /></td>
					<td align="left">
						<select id="campaign_code" name="campaign_code">
							<option value=""> --- </option>
							{html_options options=$campaignproductPairs}</td>
						</select>					
					</td>
					<td align="left"></td>
					<td align="left"></td>
			  </tbody>
			</table>			
		 </div>
		 <!-- End Content Table -->	
	</div>
    <div class="clearer"><!-- --></div>	
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

$( document ).ready(function() {
	
	$("#campaigninvoice_payment_date").datepicker({ minDate: 0, dateFormat: 'yy-mm-dd' });
	
});
</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
