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
            <li><a href="/administration/campaign/" title="">Campaign</a></li>
			<li><a href="/administration/campaign/daily-bookings/" title="">Bookings</a></li>
			<li>{if isset($bookingData)}Edit booking{else}Add a booking{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($bookingData)}Edit booking{else}Add a new booking{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/daily-bookings/details.php{if isset($bookingData)}?code={$bookingData.booking_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr><td colspan="3"><h2>Booking</h2></td></tr>
			<tr>
				<td>
					<h4 class="error">Person:</h4><br />					
					<input type="text" id="participant_name" name="participant_name" size="30" value="{$bookingData.participant_name} {$bookingData.participant_surname}" /> &nbsp;
					<input type="hidden" id="participant_code" name="participant_code" value="{$bookingData.participant_code}" />
					<br><span class="success" name="participantcodename" id="participantcodename">{$bookingData.participant_name} {$bookingData.participant_surname}</span>
					{if isset($errorArray.participant_code)}<br /><em class="error">{$errorArray.participant_code}</em>{/if}
				</td>			
				<td>
					<h4 class="error">Start Date:</h4><br />
					<input type="text" name="booking_startdate" id="booking_startdate" value="{$bookingData.booking_startdate}" size="30"/>
					{if isset($errorArray.booking_startdate)}<br /><em class="error">{$errorArray.booking_startdate}</em>{/if}
				</td>
				<td>
					<h4 class="error">End Date:</h4><br />
					<input type="text" name="booking_enddate" id="booking_enddate" value="{$bookingData.booking_enddate}" size="30"/>
					{if isset($errorArray.booking_enddate)}<br /><em class="error">{$errorArray.booking_enddate}</em>{/if}
				</td>				
          </tr>
			<tr>
				<td valign="top">
					<h4 class="error">Product:</h4><br />			
					<select id="product_code" name="product_code">
						<option value=""> --- </option>
						{html_options options=$productPairs selected=$bookingData.product_code}
					</select>	
					{if isset($errorArray.product_code)}<br /><em class="error">{$errorArray.product_code}</em>{/if}					
				</td>
				<td valign="top">
					<h4 class="error">Product Price:</h4><br />			
					<span id="productpricediv" name="productpricediv">
						{if isset($bookingData.productprice_name)} 
							{$bookingData.productprice_name} - R {$bookingData.productprice_price}								
						{else}
							<span class="error">Please select a product first.</span>
						{/if}
						<input type="hidden" name="productprice_code" id="productprice_code" value="{$bookingData.productprice_code}" />				
					</span>
				</td>
				<td valign="top">
					<h4 class="error">Number of Adults:</h4><br />
					<input type="text" name="booking_number_adult" id="booking_number_adult" value="{$bookingData.booking_number_adult}" size="20"/>
					{if isset($errorArray.booking_number_adult)}<br /><em class="error">{$errorArray.booking_number_adult}</em>{/if}<br />
					<h4>Number of Kids:</h4><br />
					<input type="text" name="booking_number_children" id="booking_number_children" value="{$bookingData.booking_number_children}" size="20"/>
					{if isset($errorArray.booking_number_children)}<br /><em class="error">{$errorArray.booking_number_children}</em>{/if}					
				</td>				
			</tr>
			<tr>
				<td colspan="3" valign="top">
				<h4>Notes:</h4><br />
					<textarea cols="90" rows="3" id="booking_message" name="booking_message">{$bookingData.booking_message}</textarea>
				</td>
			</tr>
			{if isset($bookingData)}
			<tr><td colspan="3"><h2>Invoice Details</h2></td></tr>
			<tr>
				<td>
					<h4>Paid:</h4><br />					
					<input type="checkbox" id="invoice_paid" name="invoice_paid" value="1" {if $bookingData.invoice_paid eq '1'}checked{/if} disabled />
				</td>			
				<td>
					<h4>Date Paid:</h4><br />
					<input type="text" name="invoice_paid_date" id="invoice_paid_date" value="{$bookingData.invoice_paid_date}" size="10"/>
				</td>
				<td>
					<h4>Download latest created invoice</h4><br />
					{if $bookingData.invoice_html neq ''}
					<a href="http://{$domainData.campaign_domain}{$bookingData.invoice_pdf}" target="_blank">Download PDF</a> | <a href="http://{$domainData.campaign_domain}{$bookingData.invoice_html}" target="_blank">View HTML</a> 
					{else}
					<span class="error">No pdf has been generated for this invoice.</span>
					{/if}
				</td>					
			</tr>
			<tr>
			<tr>
				<td colspan="3">
					<table id="dataTable" border="0" cellspacing="0" cellpadding="0" width="100%">
						<thead>
					  <tr>
							<th>Date Paid</th>
							<th>Amount</th>
							<th>Notes</th>
							<th></th>
					   </tr>
					   </thead>
					   <tbody>					   
					  {foreach from=$bookingData.invoicepayments item=item}
					  <tr>
						<td>{$item.invoicepayment_added|date_format:"%A, %B %e, %Y"}</td>
						<td align="left">R {$item.invoicepayment_amount}</td>				
						<td align="left">{$item.invoicepayment_description}</td>				
						<td align="left"><button onclick="deleteItem('{$item.booking_code}'); return false;">Delete</button></td>
					  </tr>
					  {foreachelse}
						<tr>		
							<td>There are no payments made yet.</td>					
						</tr>					  
					  {/foreach}
						<tr>		
							<td>
								<input type="text" name="invoicepayment_paid_date" id="invoicepayment_paid_date" value="" size="10" />
							</td>
							<td>
								<input type="text" name="invoicepayment_amount" id="invoicepayment_amount" value="" size="10" />
							</td>							
							<td>
								<textarea name="invoicepayment_description" id="invoicepayment_description" rows="1" cols="50"></textarea>
							</td>	
							<td>
							<button onclick="addPayment(); return false;">Add Item</button>
							</td>						
						</tr>						  
					  </tbody>
					</table>
				</td>			
			</tr>
			{/if}		  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/campaign/daily-bookings/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
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
<script type="text/javascript">
function submitForm() {
	document.forms.detailsForm.submit();					 
}

function addPayment() {	
	
	var paymentdate 	= $('#invoicepayment_paid_date').val();
	var description 		= $('#invoicepayment_description').val();
	var amount			= $('#invoicepayment_amount').val();
	
	$.ajax({ 
			type: "GET",
			url: "details.php?code={/literal}{$bookingData.booking_code}{literal}",
			data: "addpayment=1&invoicepayment_amount="+amount+"&invoicepayment_description="+description+"&invoicepayment_paid_date="+paymentdate,
			dataType: "json",
			success: function(data){
					if(data.result == 1) {
						window.location.href = window.location.href;
					} else {
						alert(data.message);
					}
			}
	});	
		
}

function deleteItem(code) {	
	if(confirm('Are you sure you want to delete this item?')) {
			$.ajax({ 
					type: "GET",
					url: "details.php",
					data: "code={/literal}{$bookingData.booking_code}{literal}&invoicepayment_code_delete="+code,
					dataType: "json",
					success: function(data){
							if(data.result == 1) {
								alert('Deleted');
								window.location.href = window.location.href;
							} else {
								alert(data.error);
							}
					}
			});	
		}
}
				
$( document ).ready(function() {
		
	$('#product_code').change(function() {
	
	var product	= $('#product_code :selected').val();
	
		$.ajax({
			type: "GET",
			url: "/administration/campaign/daily-bookings/details.php",
			data: "code={/literal}{$bookingData.booking_code}{literal}&product_code_search="+product,
			dataType: "html",
			success: function(items){
				//show table
				$('#productpricediv').html(items);
			}
		});	
	});

	$( "#participant_name" ).autocomplete({
		source: "/administration/feeds/participant.php",
		minLength: 2,
		select: function( event, ui ) {
		
			if(ui.item.id == '') {
				$('#participantcodename').html('');
				$('#participant_code').val('');					
			} else { 
				$('#participantcodename').html('<b>' + ui.item.value + '</b>');
				$('#participant_code').val(ui.item.id);									
			}
			
			$('#participant_name').val('');										
		}
	});
	
	$( "#invoice_paid_date" ).datepicker({
	  defaultDate: "+1w",
	  dateFormat: 'yy-mm-dd',
	  changeMonth: true,
	  changeYear: true
	});
	
	
	$( "#invoicepayment_paid_date" ).datepicker({
	  defaultDate: "+1w",
	  dateFormat: 'yy-mm-dd',
	  changeMonth: true,
	  changeYear: true
	});	
	
	$( "#booking_startdate" ).datepicker({
	  defaultDate: "+1w",
	  dateFormat: 'yy-mm-dd',
	  changeMonth: false,
	  numberOfMonths: 3,
	  onClose: function( selectedDate ) {
		$( "#booking_enddate" ).datepicker( "option", "minDate", selectedDate );
	  }
	});
	
	$( "#booking_enddate" ).datepicker({
	  defaultDate: "+1w",
	  dateFormat: 'yy-mm-dd',
	  changeMonth: false,
	  numberOfMonths: 3,
	  onClose: function( selectedDate ) {
		$( "#booking_startdate" ).datepicker( "option", "maxDate", selectedDate );
	  }
	});
	
});		
</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
