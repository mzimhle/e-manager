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
			<li><a href="/administration/products/" title="">Products</a></li>
			<li><a href="/administration/products/items/" title="">Items</a></li>
			<li>{if isset($productpriceData)}Edit a product{else}Add a product{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($productpriceData)}Edit product: {$productpriceData._productprice_name}{else}Add a new product{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/products/items/details.php{if isset($productpriceData)}?code={$productpriceData._productprice_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr>
				<td colspan="2" class="heading">Details</td>
			</tr>
           <tr>
            <td class="left_col"><h4>Active</h4></td>
            <td><input type="checkbox" name="_productprice_active" id="_productprice_active" value="1" {if $productpriceData._productprice_active eq 1} checked="checked" {/if} /></td>
          </tr>	
          <tr>
            <td class="left_col" {if isset($errorArray._productprice_name)}style="color: red"{/if}><h4>Name:</h4></td>
			<td><input type="text" name="_productprice_name" id="_productprice_name" value="{$productpriceData._productprice_name}" size="30"/></td>	
          </tr> 		  
          <tr>
            <td class="left_col" {if isset($errorArray._productprice_description)}style="color: red"{/if}><h4>Description:</h4></td>
			<td><textarea type="text" name="_productprice_description" id="_productprice_description" rows="5" cols="50">{$productpriceData._productprice_description}</textarea></td>	
          </tr>	  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/products/items/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
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
