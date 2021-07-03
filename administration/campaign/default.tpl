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
    <!-- Start Content Section -->
  <div id="content">
    {include_php file='administration/includes/header.php'}
  	<div id="breadcrumb">
        <ul>
            <li><a href="/administration/" title="Home">Home</a></li>
			<li><a href="/administration/campaign/" title="Jobs">Campaign</a></li>
        </ul>
	</div><!--breadcrumb-->  
  <div class="inner">  
   <h2>Campaign</h2>	

	<div class="section">
		Select campaign:
		<select id="campaign_code" name="campaign_code">
			<option value=""> ---- </option>
			{html_options options=$campaignPairs selected=$domainData.campaign_code}
		</select>
	</div>
	{if isset($domainData)}	   
  <div class="clearer"><!-- --></div>
  <h2>Campaign Administration Accounts</h2>	
  <div class="clearer"><!-- --></div>
  <div class="section">
  	<a href="/administration/campaign/accounts/" title="Manage Accounts"><img src="/administration/images/users.gif" alt="Manage Accounts" height="50" width="50" /></a>
  	<a href="/administration/campaign/accounts/" title="Manage Accounts" class="title">Manage Accounts</a>
  </div>  
  <div class="clearer"><!-- --></div>
  <h2>Campaign Pages</h2>
  {if isset($level1)}
  {section name=id loop=$level1}
  <div class="section{if $smarty.section.id.index neq '0'} mrg_left_50{/if}">
  	<a href="/administration/campaign/{$level1[id]}/" title="Manage {$level1[id]|capitalize}"><img src="/administration/images/users.gif" alt="Manage {$level1[id]|capitalize}" height="50" width="50" /></a>
  	<a href="/administration/campaign/{$level1[id]}/" title="Manage {$level1[id]|capitalize}" class="title">Manage {$level1[id]|capitalize}</a>
  </div> 
  {/section}
  {/if}
    <div class="clearer"><!-- --></div>   
  {if isset($level2)}
  {section name=id loop=$level2}
  <div class="section{if $smarty.section.id.index neq '0'} mrg_left_50{/if}">
  	<a href="/administration/campaign/{$level2[id]}/" title="Manage {$level2[id]|capitalize}"><img src="/administration/images/users.gif" alt="Manage {$level2[id]|capitalize}" height="50" width="50" /></a>
  	<a href="/administration/campaign/{$level2[id]}/" title="Manage {$level2[id]|capitalize}" class="title">Manage {$level2[id]|capitalize}</a>
  </div> 
  {/section}
  {/if} 
  <div class="clearer"><!-- --></div>   
  {if isset($level3)}
  {section name=id loop=$level3}
  <div class="section{if $smarty.section.id.index neq '0'} mrg_left_50{/if}">
  	<a href="/administration/campaign/{$level3[id]}/" title="Manage {$level3[id]|capitalize}"><img src="/administration/images/users.gif" alt="Manage {$level3[id]|capitalize}" height="50" width="50" /></a>
  	<a href="/administration/campaign/{$level3[id]}/" title="Manage {$level3[id]|capitalize}" class="title">Manage {$level3[id]|capitalize}</a>
  </div> 
  {/section}
  {/if}  
  <div class="clearer"><!-- --></div> 
  {if isset($level4)}
  {section name=id loop=$level4}
  <div class="section{if $smarty.section.id.index neq '0'} mrg_left_50{/if}">
  	<a href="/administration/campaign/{$level4[id]}/" title="Manage {$level4[id]|capitalize}"><img src="/administration/images/users.gif" alt="Manage {$level4[id]|capitalize}" height="50" width="50" /></a>
  	<a href="/administration/campaign/{$level4[id]}/" title="Manage {$level4[id]|capitalize}" class="title">Manage {$level4[id]|capitalize}</a>
  </div> 
  {/section}
  {/if}   
    </div><!--inner-->
	{/if}
  </div><!-- End Content Section -->
	
 {include_php file='administration/includes/footer.php'}

{literal}
<script type="text/javascript">

$( document ).ready(function() {

	$('#campaign_code').change(function() {
	
		var campaigncode	= $('#campaign_code :selected').val();
		
		$.ajax({
			type: "GET",
			url: "default.php",
			data: "campaigncode="+campaigncode,
			dataType: "html",
			success: function(items){
				window.location.href = window.location.href;
			}
		});
		
	});
	
});

</script>
{/literal}
</div>
<!-- End Main Container -->
</body>
</html>
