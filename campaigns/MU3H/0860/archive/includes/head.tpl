<link href="{$link}css/style.css" rel="stylesheet" type="text/css" />
<link href="{$link}css/layout.css" rel="stylesheet" type="text/css" />
<script src="{$link}javascript/maxheight.js" type="text/javascript"></script>
<link href="{$link}css/styleslider.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="{$link}css/coin-slider.css" />
<script type="text/javascript" src="{$link}javascript/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{$link}javascript/cufon.js"></script>
<script type="text/javascript" src="{$link}javascript/coin-slider.min.js"></script>
<script type="text/javascript" src="{$link}javascript/script.js"></script>
<link href="{$link}css/style.css" rel="stylesheet" type="text/css" />
<link href="{$link}css/layout.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{$link}javascript/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
<script type="text/javascript" src="{$link}javascript/jquery.js"></script>
<script type="text/javascript" src="{$link}javascript/jquery-1.3.2.min.js"></script>
<script src="{$link}javascript/jquery.cycle.all.js" type="text/javascript"></script>
{literal}
<script type="text/javascript">
$(function () {
    $('#slideshow').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#pager',
        pause: 0,
        pauseOnPagerHover: 0
    });
    $('#featured').cycle({
        timeout: 12000,
        fx: 'scrollUp',
        pause: 0,
        pauseOnPagerHover: 0
    });
});
</script>
{/literal}