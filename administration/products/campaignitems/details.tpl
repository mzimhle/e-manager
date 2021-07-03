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
			<li><a href="/administration/products/" title="Home">Products</a></li>
			<li><a href="/administration/products/campaignitems/" title="">Campaign Items</a></li>
			<li>{if isset($productcampaignitemData)}Edit Campaign Product Item{else}Add a Campaign Product Item{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($productcampaignitemData)}Edit Campaign Product Item{else}Add a Campaign Product Item{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/products/campaignitems/details.php{if isset($productcampaignitemData)}?code={$productcampaignitemData._productcampaignitem_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr>
				<td colspan="2" class="heading">Details</td>
			</tr>
           <tr>
            <td class="left_col"><h4>Active</h4></td>
            <td><input type="checkbox" name="_productcampaignitem_active" id="_productcampaignitem_active" value="1" {if $productcampaignitemData._productcampaignitem_active eq 1} checked="checked" {/if} /></td>
          </tr>			
          <tr>
            <td class="left_col" {if isset($errorArray.campaign_code)}style="color: red"{/if}><h4>Campaign:</h4></td>
            <td>
				{if !isset($productcampaignitemData)}
				<select id="campaign_code" name="campaign_code">
					{html_options options=$campaignPairs}
				</select>
				{else}
					{$productcampaignitemData.campaign_company}
					<input type="hidden" id="campaign_code" name="campaign_code" value="{$productcampaignitemData.campaign_code}" />
				{/if}
			</td>
          </tr> 	
          <tr>
            <td class="left_col" {if isset($errorArray._productpriceitem_code)}style="color: red"{/if}><h4>Product Item:</h4></td>
            <td>
				{if !isset($productcampaignitemData)}
				<select id="_productpriceitem_code" name="_productpriceitem_code">
					{html_options options=$productpriceitemPairs}
				</select>
				{else}
					{$productcampaignitemData._productpriceitem_name}
					<input type="hidden" id="_productpriceitem_code" name="_productpriceitem_code" value="{$productcampaignitemData._productpriceitem_code}" />
				{/if}
			</td>
          </tr>		
          <tr>
            <td class="left_col" {if isset($errorArray._productcampaignitem_count)}style="color: red"{/if}><h4>Number of items:</h4></td>
			<td><input type="text" name="_productcampaignitem_count" id="_productcampaignitem_count" value="{$productcampaignitemData._productcampaignitem_count|default:1}" size="5"/></td>	
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
