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
			<li><a href="/administration/campaign/" title="campaign">Campaign</a></li>
			<li><a href="/administration/campaign/products/" title="Products">Products</a></li>
			<li>{$productData.product_name}</li>
			<li>Items</li>
        </ul>
	</div><!--breadcrumb--> 
	<br />  
	<div class="inner"> 
      <h2>{$productData.product_name} Items / Features</h2>
	<br />
    <div id="sidetabs">
        <ul>             
            <li><a href="/administration/campaign/products/details.php?code={$productData.product_code}" title="Details">Details</a></li>
			<li class="active"><a href="#" title="Items">Items</a></li>
			<li><a href="/administration/campaign/products/prices.php?code={$productData.product_code}" title="Prices">Prices</a></li>
        </ul>
    </div><!--tabs-->	
	<div class="detail_box">
	
	<form id="submitForm" name="submitForm" action="/administration/campaign/products/items.php?code={$productData.product_code}" method="post" enctype="multipart/form-data">
	<table width="100%" class="innertable" border="0" cellspacing="0" cellpadding="0">
		<thead>
		<tr>		
			<th>Name</th>
			<th>Cost</th>
			<th>Description</th>
			<th></th>
			<th></th>
		</tr>
		</thead>
		<tbody>
		{foreach from=$productitemData item=item name=food}
		<tr>	
			<td><input type="text" value="{$item.productitem_name}" size="20" id="productitem_name_{$item.productitem_code}" name="productitem_name_{$item.productitem_code}" /></td>
			<td><input type="text" value="{$item.productitem_price}" size="5" id="productitem_price_{$item.productitem_code}" name="productitem_price__{$item.productitem_code}" /></td>
			<td><textarea cols="30" rows="2" id="productitem_description_{$item.productitem_code}" name="productitem_description_{$item.productitem_code}">{$item.productitem_description}</textarea></td>
			<td><button onclick="updateitem('{$item.productitem_code}'); return false;">Update</button></td>
			<td><button onclick="deleteitem('{$item.productitem_code}'); return false;">Delete</button></td>
		</tr>
		{/foreach}	
		<tr>
			<td>
				<input type="text" id="productitem_name" name="productitem_name" value="" size="20" />
				{if isset($errorArray.productitem_name)}<br /><span class="error">{$errorArray.productitem_name}</span>{/if}
			</td>
			<td>
				<input type="text" id="productitem_price" name="productitem_price" value="" size="20" />
				{if isset($errorArray.productitem_price)}<br /><span class="error">{$errorArray.productitem_price}</span>{/if}
			</td>
			<td>
				<textarea id="productitem_description" name="productitem_description" cols="30" rows="2"></textarea>
				{if isset($errorArray.productitem_description)}<br /><span class="error">{$errorArray.productitem_description}</span>{/if}
			</td>
			<td colspan="2"><button onclick="additem();">Add Item</button></td>
		</tr>			
		</tbody>						
	</table>
	<input type="hidden" name="productitem_code_selected" id="productitem_code_selected" value="" />
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
function additem() {
	document.forms.submitForm.submit();					 
}

function deleteitem(code) {
	if(confirm('Are you sure you want to delete this item?')) {
		$.ajax({
			type: "GET",
			url: "items.php?code={/literal}{$productData.product_code}{literal}",
			data: "deleteitem="+code,
			dataType: "json",
			success: function(data){
				if(data.result == 1) {
					alert('Deleted');
					window.location.href = window.location.href;
				} else {
					alert(data.message);
				}
			}
		});		
	}
	return false;			

}

function updateitem(code) {
	if(confirm('Are you sure you want to update this file ?')) {		
		
		$.ajax({ 
				type: "GET",
				url: "items.php",
				data: "code={/literal}{$productData.product_code}{literal}&updateitem="+code+"&productitem_name="+$('#productitem_name_'+code).val()+"&productitem_price="+$('#productitem_price_'+code).val()+"&productitem_description="+$('#productitem_description_'+code).val(),
				dataType: "json",
				success: function(data){
						if(data.result == 1) {
							alert('Updated');
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
<!-- End Main Container -->
</body>
</html>
