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
			<li><a href="/administration/campaign/" title="Home">Campaign</a></li>
			<li><a href="/administration/campaign/products/" title="">product</a></li>
			<li>{if isset($productData)}Edit product{else}Add a product{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($productData)}Edit product{else}Add a product{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
			<li><a href="{if isset($productData)}/administration/campaign/products/items.php?code={$productData.product_code}{else}#{/if}" title="Items">Items</a></li>
			<li><a href="{if isset($productData)}/administration/campaign/products/prices.php?code={$productData.product_code}{else}#{/if}" title="Prices">Prices</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/products/details.php{if isset($productData)}?code={$productData.product_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr>
				<td colspan="2" class="heading">Details</td>
			</tr>
           <tr>
            <td>
				<h4>Active</h4><br />
				<input type="checkbox" name="product_active" id="product_active" value="1" {if $productData.product_active eq 1} checked="checked" {/if} />
			</td>
            <td>
				<h4 class="error">Name:</h4><br />
				<input type="text" name="product_name" id="product_name" value="{$productData.product_name}" size="60"/>
				{if isset($errorArray.product_name)}<br /><em class="error">{$errorArray.product_name}</em>{/if}
			</td>	
          </tr>							  
          <tr>
            <td colspan="2">
				<h4 class="error">Description:</h4><br />
				<textarea name="product_description" id="product_description" rows="5" cols="80">{$productData.product_description}</textarea>
				{if isset($errorArray.product_description)}<br /><em class="error">{$errorArray.product_description}</em>{/if}
			</td>	
          </tr>	
          <tr>
            <td colspan="2">
				<h4 class="error">Page:</h4><br />
				<textarea name="product_page" id="product_page" rows="10" cols="120">{$productData.product_page}</textarea>
				{if isset($errorArray.product_page)}<br /><em class="error">{$errorArray.product_page}</em>{/if}
			</td>	
          </tr>		  
        </table>
		<input type="hidden" id="action" name="action" value="details" />
      </form>
        <div class="mrg_top_10">
          <a href="/administration/campaign/products/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
          <a href="javascript:submitForm();" class="blue_button mrg_left_20 fl"><span>Save &amp; Complete</span></a>   
        </div>
    <div class="clearer"><!-- --></div>	  
	</div>
    <div class="clearer"><!-- --></div>

	{if isset($productData)}
	<br /><br />
    <div id="sidetabs">
        <ul > 
			<li><a href="/administration/campaign/products/details.php?code={$productData.product_code}" title="Images">Images</a></li>
        </ul>
    </div><!--tabs-->	
		  <div class="detail_box">  
		  <form name="imageForm" id="imageForm" action="/administration/campaign/products/details.php?code={$productData.product_code}" method="post"  enctype="multipart/form-data">
			  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="innertable"> 
			  <thead>
			  <tr>				
				<th valign="top" colspan="2" {if isset($errorArray.category_code)}class="error"{/if}>Updaload</th>
				<th valign="top">Delete Image</th>
				<th valign="top">Make Primary</th>
			  </tr>
			  </thead>
			  {foreach from=$productimageData item=item}
			  <tr>	
				<td valign="top"{if $item.productimage_primary eq '1'}class="success"{/if}>{$item.productimage_description}</td>	
				<td valign="top">
					<a href="http://{$item.campaign_domain}{$item.productimage_path}/big_{$item.productimage_code}{$item.productimage_extension}" target="_blank">
						<img src="http://{$item.campaign_domain}{$item.productimage_path}/tny_{$item.productimage_code}{$item.productimage_extension}" />
					</a>
				</td>			
				<td valign="top">{if $item.productimage_primary eq '0'}<button type="button" onclick="deleteitem('{$item.productimage_code}'); return false;">Delete</button>{else}<b>Primary</b>{/if}</td>	
				<td valign="top">{if $item.productimage_primary eq '0'}<button type="button" onclick="makeprimary('{$item.productimage_code}'); return false;">Primary</button>{else}<b>Primary</b>{/if}</td>	
			  </tr>
			  {/foreach}			
			  <tr>
				<td valign="top"  colspan="2">
					<textarea cols="60" rows="3" name="productimage_description" id="productimage_description"></textarea>
					{if isset($errorArray.productimage_description)}<br /><em class="error">{$errorArray.productimage_description}</em>{/if}
				</td>
				<td valign="top">
					<input type="file" id="imagefile" name="imagefile" />
					{if isset($errorArray.imagefile)}<br /><em class="error">{$errorArray.imagefile}</em>{/if}
				</td>		
				<td valign="top">
					<button type="submit" onclick="submitImages();">Upload Image</button>	
				</td>			
			  </tr>
			</table>
			{if isset($errorArray.error)}<span class="error">{$errorArray.error}</span>{/if}
			<input type="hidden" id="action" name="action" value="images" />
			</form>
		</div>	
		{/if}
<div class="clearer"><!-- --></div>		
    </div><!--inner-->
 </div> 	
<!-- End Content recruiter -->
 </div><!-- End Content recruiter -->
 {include_php file='administration/includes/footer.php'}
</div>
{literal}
<script type="text/javascript" language="javascript">
	$(document).ready(function() {
		
		new nicEditor({
			iconsPath	: '/library/javascript/nicedit/nicEditorIcons.gif',
			buttonList 	: ['bold','italic','underline','left','center', 'ol', 'ul', 'xhtml', 'fontFormat', 'fontFamily', 'fontSize', 'unlink', 'link', 'strikethrough', 'superscript', 'subscript'],
			maxHeight 	: '800'
		}).panelInstance('product_page');
			
	});
	
	function submitForm() {
		nicEditors.findEditor('product_page').saveContent();
		document.forms.detailsForm.submit();					 
	}
	
function submitImages() {
	document.forms.imageForm.submit();					 
}

function makeprimary(code) {
	if(confirm('Are you sure you want to make this item primary?')) {
		$.ajax({
				type: "GET",
				url: "details.php?code={/literal}{$productData.product_code}{literal}",
				data: "primarycode="+code,
				dataType: "json",
				success: function(data){
						if(data.result == 1) {
							alert('Changed');
							window.location.href = window.location.href;
						} else {
							alert(data.message);
						}
				}
		});		
	}
	return false;			
}

function deleteitem(code) {
	if(confirm('Are you sure you want to delete this item?')) {
		$.ajax({
				type: "GET",
				url: "details.php?code={/literal}{$productData.product_code}{literal}",
				data: "deletecode="+code,
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
</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
