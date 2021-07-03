<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>WillowVine | Home | Products</title>

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
			<li><a href="/administration/products/" title="">Products</a></li>
        </ul>
	</div><!--breadcrumb-->  	
  <div class="inner">  
   <h2>Manage products</h2>	
  <p>All company products and those linked to campaigns</p>

  <div class="section">
  	<a href="/administration/products/items/" title="Manage Items"><img src="/administration/images/users.gif" alt="Manage  Products" height="50" width="50" /></a>
  	<a href="/administration/products/items/" title="Manage Items" class="title">Manage Items</a>
  </div>
  <div class="section mrg_left_50">
  	<a href="/administration/products/components/" title="Manage Components"><img src="/administration/images/projects.gif" alt="Manage Components" height="50" width="50" /></a>
  	<a href="/administration/products/components/" title="Manage Components" class="title">Manage Components</a>
  </div>
    <div class="section mrg_left_50">
  	<a href="/administration/products/campaignitems/" title="Manage Campaign Items"><img src="/administration/images/users.gif" alt="Manage Campaign Items" height="50" width="50" /></a>
  	<a href="/administration/products/campaignitems/" title="Manage Campaign Items" class="title">Manage Campaign Items</a>
  </div>
  <div class="clearer"><!-- --></div>
    </div><!--inner-->
  </div><!-- End Content Section -->
	
 {include_php file='administration/includes/footer.php'}


</div>
<!-- End Main Container -->
</body>
</html>
