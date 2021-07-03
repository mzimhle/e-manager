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
            <li><a href="/administration/campaign/" title="">Campaign</a></li>
			<li><a href="/administration/campaign/daily-bookings/" title="">Daily Bookings</a></li>
        </ul>
	</div><!--breadcrumb-->  
	<div class="inner">     
    <h2>Manage Daily Bookings</h2>		
	<a href="/administration/campaign/daily-bookings/details.php" title="Click to Add a new booking" class="blue_button fr mrg_bot_10"><span style="float:right;">Add a new booking</span></a> <br />
    <div class="clearer"><!-- --></div>
    <div id="tableContent" align="center">
		<!-- Start Content Table -->
		<div class="content_table">			
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0">
				<thead>
			  <tr>
				<th>Added</th>
				<th>Person</th>
				<th>Start Date - End Date</th>
				<th>Days</th>				
				<th>Product</th>
				<th>Number of Adults</th>				
				<th>Number of Children</th>
				<th></th>				
			   </tr>
			   </thead>
			   <tbody>
			  {foreach from=$bookingData item=item}
			  <tr>
				<td>{$item.booking_added|date_format}</td>
				<td align="left">{$item.participant_name} {$item.participant_surname}</td>				
				<td align="left"><a href="/administration/campaign/daily-bookings/details.php?code={$item.booking_code}">{$item.booking_startdate|date_format:"%A, %B %e, %Y"} till {$item.booking_enddate|date_format:"%A, %B %e, %Y"}</a></td>
				<td align="left">{date_diff date1=$item.booking_startdate date2=$item.booking_enddate}</td>
				<td align="left">{$item.product_name}</td>
				<td align="left">{$item.booking_number_adult}</td>	
				<td align="left">{$item.booking_number_children}</td>
				<td align="left"><button onclick="deleteitem('{$item.booking_code}'); return false;">Delete</button></td>
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
