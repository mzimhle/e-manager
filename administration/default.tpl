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
        </ul>
	</div><!--breadcrumb-->  
  <div class="inner">  
   <h2>E-Manager</h2>	

  <div class="clearer"><!-- --></div>
  <div class="section">
  	<a href="/administration/clients/" title="Manage Clients"><img src="/administration/images/users.gif" alt="Manage Participant" height="50" width="50" /></a>
  	<a href="/administration/clients/" title="Manage Clients" class="title">Manage Clients</a>
  </div> 
  <div class="section mrg_left_50">
  	<a href="/administration/products/" title="Manage Products"><img src="/administration/images/users.gif" alt="Manage Products" height="50" width="50" /></a>
  	<a href="/administration/products/" title="Manage Products" class="title">Manage Products</a>
  </div>   
  <div class="section mrg_left_50">
  	<a href="/administration/campaign/" title="Manage Campaign"><img src="/administration/images/users.gif" alt="Manage Participant Category" height="50" width="50" /></a>
  	<a href="/administration/campaign/" title="Manage Campaign" class="title">Manage Campaign</a>
  </div>  
    <div class="clearer"><!-- --></div>   
    </div><!--inner-->
  </div><!-- End Content Section -->
 {include_php file='administration/includes/footer.php'}
</div>
<!-- End Main Container -->
</body>
</html>
