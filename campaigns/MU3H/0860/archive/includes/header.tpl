<!-- header -->
<div id="header">
	<div class="row-1">
		<div class="wrapper">
			<div class="logo">
				<h1><a href="#"> </a>
				</h1>
				<em> </strong> 
			</div> 
			<div class="phones"> 021 534 2441<br />
							076 837 0692  
			</div>
		</div>
	</div>
	<div class="row-2">
		<div class="indent">
		<!-- header-box begin -->
				<div class="header-box">
					<div id="slideshow">
						<div class="slide-text"><img src="{$link}images/slide1.jpg" alt="" class="slidehalf" /></div>
						<div class="slide-text"> <img src="{$link}images/slide2.jpg" alt="" class="slidehalf" /></div>
						<div class="slide-text"> <img src="{$link}images/slide3.jpg" alt="" class="slidehalf" /></div>
						<div class="slide-text"> <img src="{$link}images/slide4.jpg" alt="" class="slidehalf" /></div>
						<div class="slide-text"> <img src="{$link}images/slide5.jpg" alt="" class="slidehalf" /></div>
					</div>
					<div id="box-nav-slider"><div id="slideshow-navigation"><div id="pager"></div></div></div>
					<div class="inner">
						<ul class="nav">
							<li><a href="{$link}" {if $page eq '' or $page eq '/'}class="current"{/if}>Home</a></li>
							<li><a href="{$link}about-us/" {if $page eq 'about-us'}class="current"{/if}>About</a></li>
							<li><a href="{$link}facility/" {if $page eq 'facility'}class="current"{/if}>Facilities</a></li>
							<li><a href="{$link}gallery/" {if $page eq 'gallery'}class="current"{/if}>Gallery</a></li>
							<li><a href="{$link}booking/" {if $page eq 'booking'}class="current"{/if}>Booking</a></li>
							<li><a href="{$link}contact/" {if $page eq 'contact'}class="current"{/if}>Contact</a></li>
						</ul>
					</div>
			</div>
			<!-- header-box end -->
		</div>
	</div>
</div>