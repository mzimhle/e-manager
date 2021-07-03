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
    <!-- Start Content Section -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
			<li><a href="/administration/campaign/" title="Jobs">Campaigns</a></li>
            <li><a href="/administration/campaign/invoices/" title="Jobs">Invoices</a></li>
        </ul>
	</div><!--breadcrumb-->  
	<div class="inner">     
    <h2>Manage Invoice</h2>		
	<!-- <a href="/administration/campaign/invoices/details.php" title="Click to Add a new Invoice" class="blue_button fr mrg_bot_10"><span style="float:right;">Add a new Invoice</span></a> <br /> -->
    <div class="clearer"><!-- --></div>
    <div id="tableContent" align="center">
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
					<th>Payment Date</th>
					<th>Full Name</th>
				</tr>
			   </thead>
			   <tbody>
			  {foreach from=$invoiceData item=item}
			  <tr>
				<td>{$item.invoice_added|date_format}</td>
				<td align="left">{$item.campaign_name}</td>
				<td align="left">{$item.invoice_code}</td>			
				<td align="left">{$item.payment_amount}</td>				
				<td align="left">{$item.total_amount}</td>
				<td align="left">{if $item.invoice_html neq ''}<a href="http://{$item.campaign_domain}{$item.invoice_html}" target="_blank">html</a> | <a href="http://{$item.campaign_domain}{$item.invoice_html}" target="_blank">pdf</a>{else}N/A{/if}</td>
				<td align="left">{$item.invoice_payment_date}</td>
				<td align="left">{$item.participant_name} {$item.participant_surname}</td>
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
</body>
</html>
