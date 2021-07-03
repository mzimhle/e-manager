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
			<li><a href="/administration/campaign/galleries/" title="">Gallery</a></li>
			<li>{if isset($galleryData)}Edit Gallery{else}Add a Gallery{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($galleryData)}Edit Gallery{else}Add a Gallery{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
			<li><a href="{if isset($galleryData)}/administration/campaign/galleries/images.php?code={$galleryData.gallery_code}{else}#{/if}" title="Images">Images</a></li>
        </ul>
    </div><!--tabs-->

	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/galleries/details.php{if isset($galleryData)}?code={$galleryData.gallery_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
			<tr>
				<td colspan="2" class="heading">Details</td>
			</tr>
           <tr>
            <td>
				<h4>Active</h4><br />
				<input type="checkbox" name="gallery_active" id="gallery_active" value="1" {if $galleryData.gallery_active eq 1} checked="checked" {/if} />
			</td>
            <td>
				<h4 class="error">Name:</h4><br />
				<input type="text" name="gallery_name" id="gallery_name" value="{$galleryData.gallery_name}" size="60"/>
				{if isset($errorArray.gallery_name)}<br /><em class="error">{$errorArray.gallery_name}</em>{/if}
			</td>	
          </tr>							  
          <tr>
            <td colspan="2">
				<h4 class="error">Description:</h4><br />
				<textarea name="gallery_description" id="gallery_description" rows="10" cols="120">{$galleryData.gallery_description}</textarea>
				{if isset($errorArray.gallery_description)}<br /><em class="error">{$errorArray.gallery_description}</em>{/if}
			</td>	
          </tr>	
          <tr>
			<td colspan="2">
			<table id="dataTable" border="0" cellspacing="0" cellpadding="0" width="100%">
				<thead>
					<tr>
						<th>Added</th>
						<th>Description</th>
						<th>Primary</th>						
						<th></th>
					</tr>
				</thead>
			   <tbody>
				  {foreach from=$campaignproductimagesData item=item}
				  <tr>
					<td align="left">{$item.galleryimage_added|date_format}</td>
					<td align="left">{$item.galleryimage_description}</td>
					<td>{if $item.galleryimage_primary eq 1}<span style="color: green;">Primary</span>{else}<span style="color: red;">Primary</span>{/if}</td>									
					<td valign="top">
						<a href="http://{$item.campaign_domain}{$item.galleryimage_path}/big_{$item.galleryimage_code}{$item.galleryimage_extension}" target="_blank">
							<img src="http://{$item.campaign_domain}{$item.galleryimage_path}/tny_{$item.galleryimage_code}{$item.galleryimage_extension}" />
						</a>
					</td>		
				  </tr>
				  {/foreach}     
			  </tbody>
			</table>
			</td>	
          </tr>			  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
        <div class="mrg_top_10">
          <a href="/administration/campaign/galleries/" class="button cancel mrg_left_147 fl"><span>Cancel</span></a>
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
	$(document).ready(function() {
		
		new nicEditor({
			iconsPath	: '/library/javascript/nicedit/nicEditorIcons.gif',
			buttonList 	: ['bold','italic','underline','left','center', 'ol', 'ul', 'xhtml', 'fontFormat', 'fontFamily', 'fontSize', 'unlink', 'link', 'strikethrough', 'superscript', 'subscript'],
			maxHeight 	: '800'
		}).panelInstance('gallery_description');
			
	});
	
	function submitForm() {
		nicEditors.findEditor('gallery_description').saveContent();
		document.forms.detailsForm.submit();					 
	}
	
		function deleteImage(id) {	
			if(confirm('Are you sure you want to delete this file?')) {

					$.ajax({ 
							type: "GET",
							url: "images.php",
							data: "gallery={/literal}{$galleryData.gallery_code}{literal}&galleryimage_code_delete="+id,
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
<!-- End Main Container -->
</body>
</html>
