<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Maverick</title>
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
			<li><a href="/administration/campaign/" title="Jobs">Campaign</a></li>
			<li><a href="/administration/campaign/newsletter/" title="Jobs">Newsletters</a></li>
			<li>{if isset($newsletterData)}Edit Newsletter{else}Add a Newsletter{/if}</li>
        </ul>
	</div><!--breadcrumb--> 
  
	<div class="inner"> 
      <h2>{if isset($newsletterData)}Edit Newsletter{else}Add a Newsletter{/if}</h2>
    <div id="sidetabs">
        <ul > 
            <li class="active"><a href="#" title="Details">Details</a></li>
			<li><a href="{if isset($newsletterData)}/administration/campaign/newsletter/mail.php?code={$newsletterData.newsletter_code}{else}#{/if}" title="Mail">Mail</a></li>
        </ul>
    </div><!--tabs-->
	<div class="detail_box">
      <form id="detailsForm" name="detailsForm" action="/administration/campaign/newsletter/details.php{if isset($newsletterData)}?code={$newsletterData.newsletter_code}{/if}" method="post">
        <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="form">
          <tr>
			<td>
				<h4 class="error">Name:</h4><br />
				<input type="text" name="newsletter_name" id="newsletter_name" value="{$newsletterData.newsletter_name}" size="60" />
				{if isset($errorArray.newsletter_name)}<br /><span class="error">{$errorArray.newsletter_name}</span>{else}<br /><em>As will be seen on the website</em>{/if}
			</td>					
          </tr>
          <tr>
			<td>
				<h4 class="error">Subject:</h4><br />
				<input type="text" name="newsletter_subject" id="newsletter_subject" value="{$newsletterData.newsletter_subject}" size="60" />
				{if isset($errorArray.newsletter_subject)}<br /><span class="error">{$errorArray.newsletter_subject}</span>{else}<br /><em>Subject on email</em>{/if}
			</td>					
          </tr>	
          <tr>
			<td colspan="2">
				<h4 class="error">Content:</h4><br />
				<textarea id="newsletter_content" name="newsletter_content" cols="100" rows="50">{$newsletterData.newsletter_content}</textarea>
				{if isset($errorArray.newsletter_content)}<br /><span class="error">{$errorArray.newsletter_content}</span>{/if}
			</td>
          </tr>		  
        </table>
      </form>
	</div>
    <div class="clearer"><!-- --></div>
	<div class="mrg_top_10">
	  <a class="button cancel mrg_left_147 fl" href="/administration/campaign/newsletter/"><span>Cancel</span></a>
	  <a class="blue_button mrg_left_20 fl" href="javascript:submitForm();"><span>Save &amp; Complete</span></a>   
	</div>
    <div class="clearer"><!-- --></div>
	<br /><br />	
    </div><!--inner-->
<!-- End Content recruiter -->
 </div><!-- End Content recruiter -->
 {include_php file='administration/includes/footer.php'}
</div>
{literal}
<script type="text/javascript" language="javascript">
$(document).ready(function() {			
	new nicEditor({
		iconsPath	: '/library/javascript/nicedit/nicEditorIcons.gif',
		buttonList 	: ['bold','italic','underline','left','center', 'ol', 'ul', 'xhtml', 'fontFormat', 'fontFamily', 'fontSize', 'unlink', 'link', 'strikethrough', 'superscript', 'subscript', 'upload'],
		uploadURI : '/library/javascript/nicedit/nicUpload.php',
	}).panelInstance('newsletter_content');				
});

function submitForm() {
	nicEditors.findEditor('newsletter_content').saveContent();
	document.forms.detailsForm.submit();					 
}

</script>
{/literal}
<!-- End Main Container -->
</body>
</html>
