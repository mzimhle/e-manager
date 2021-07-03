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
			<li><a href="/administration/products/" title="Home">Products</a></li>
			<li><a href="/administration/products/campaignitems/" title="">Campaign Items</a></li>
        </ul>
	</div><!--breadcrumb-->  
	<div class="inner">     
    <h2>Manage Campaign Items</h2>		
	<a href="/administration/products/campaignitems/details.php" title="Click to Add a new campaign product items" class="blue_button fr mrg_bot_10"><span style="float:right;">Add a new campaign items</span></a> <br />
    <div class="clearer"><!-- --></div>
     <!-- Start Search Form -->
    <div class="clearer"><!-- --></div>
    <div id="tableContent" align="center">
		<!-- Start Content Table -->
		<div class="content_table">			
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>Added</th>
						<th>Code</th>
						<th>Campaign</th>
						<th>Product</th>
						<th>Item</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Status</th>
						<th></th>
					</tr>
				</thead>
			   <tbody>
			  {foreach from=$campaignproductitemData item=item}
			  <tr>
				<td align="left">{$item._productcampaignitem_added|date_format}</td>
				<td align="left"><a href="/administration/products/campaignitems/details.php?code={$item._productcampaignitem_code}">{$item._productcampaignitem_code}</a></td>
				<td align="left">{$item.campaign_company}</td>
				<td align="left">{$item._productprice_name}</td>
				<td align="left">{$item._productpriceitem_name}</td>				
				<td align="left">R {$item._productpriceitem_price|number_format:2:".":","}</td>				
				<td align="left">{$item._productcampaignitem_count}</td>				
				<td align="left">{if $item._productcampaignitem_active eq 1}<span class="success">Active</span>{else}<span class="error">Inctive</span>{/if}</td>
				<td align="left"><button onclick="javascript:deleteForm('{$item._productcampaignitem_code}');">delete</button></td>		
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
<script type="text/javascript">
function deleteForm(id) {	
	if(confirm('Are you sure you want to delete this item?')) {

			$.ajax({ 
					type: "GET",
					url: "default.php",
					data: "productcampaignitem_code_delete="+id,
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
</script>
{/literal}
</div>
<!-- End Main Container -->
</body>
</html>
