<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin | Products | {if isset($productpriceitemData)}Edit Product Item{else}Add a Product Item{/if}</title>
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
			<li><a href="/administration/products/" title="Home">Products</a></li>
			<li><a href="/administration/products/components/" title="">Product Item</a></li>
			<li>{if isset($productpriceitemData)}Edit Product Item{else}Add a Product Item{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($productpriceitemData)}Edit Product Item{else}Add a Product Item{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/products/components/details.php{if isset($productpriceitemData)}?code={$productpriceitemData._productpriceitem_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr>
				<td colspan="2" class="heading">Details</td>
			</tr>
           <tr>
            <td class="left_col"><h4>Active</h4></td>
            <td><input type="checkbox" name="_productpriceitem_active" id="_productpriceitem_active" value="1" {if $productpriceitemData._productpriceitem_active eq 1} checked="checked" {/if} /></td>
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray._productpriceitem_name)}style="color: red"{/if}><h4>Name:</h4></td>
			<td><input type="text" name="_productpriceitem_name" id="_productpriceitem_name" value="{$productpriceitemData._productpriceitem_name}" size="30"/></td>	
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray._productpriceitem_name)}style="color: red"{/if}><h4>Product :</h4></td>
            <td>
				{if !isset($productpriceitemData)}
				<select id="_productprice_code" name="_productprice_code">
					{html_options options=$productpricePairs selected=$productpriceitemData._productprice_code}
				</select>
				{else}
					{$productpriceitemData._productprice_name}
					<input type="hidden" id="_productprice_code" name="_productprice_code" value="{$productpriceitemData._productprice_code}" />
				{/if}
			</td>
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray._productpriceitem_price)}style="color: red"{/if}><h4>Price:</h4></td>
			<td><input type="text" name="_productpriceitem_price" id="_productpriceitem_price" value="{$productpriceitemData._productpriceitem_price}" size="5"/></td>	
          </tr>		
          <tr>
            <td class="left_col" {if isset($errorArray._productpriceitem_count)}style="color: red"{/if}><h4>Number of items:</h4></td>
			<td><input type="text" name="_productpriceitem_count" id="_productpriceitem_count" value="{$productpriceitemData._productpriceitem_count|default:1}" size="5"/></td>	
          </tr>			  
          <tr>
            <td class="left_col" {if isset($errorArray._productpriceitem_description)}style="color: red"{/if}><h4>Description:</h4></td>
			<td><textarea name="_productpriceitem_description" id="_productpriceitem_description" rows="3" cols="50">{$productpriceitemData._productpriceitem_description}</textarea></td>	
          </tr>			  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/products/components/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
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
