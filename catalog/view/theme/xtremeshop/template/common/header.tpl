<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xtremeshop/stylesheet/stylesheet.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/xtremeshop/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xtremeshop/stylesheet/carousel-skin.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!-- CUFON -->
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/cufon.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/MyriadPro-Semibold_extended.font.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/Geosans.font.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/Daniel.font.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/Dutch__Harley_400.font.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/Bellerose_400.font.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/GeosansLight_500.font.js"></script>
<script type="text/javascript" src="catalog/view/theme/xtremeshop/js/geometry_705.font.js"></script>

<script type="text/javascript" charset="utf-8">
Cufon.replace('.page-name, .under-slider, .homepage-bottom-title,  .cart-total', { fontFamily: 'geometry' } );
Cufon.replace('h5, h6, #footer h3, #latest-products .box-heading, #currency a, #right-column .box-heading', { fontFamily: 'geometry' } );
Cufon.replace('.price-amount', { fontFamily: 'Geosans' } );
</script>

<script src="catalog/view/theme/xtremeshop/js/select-styling.js" type="text/javascript"></script>

<!-- COLORBOX -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xtremeshop/stylesheet/colorbox.css" />
<script src="catalog/view/theme/xtremeshop/js/jquery.colorbox-min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	//Examples of how to assign the ColorBox event to elements
	$("a.colorbox").colorbox({rel:'colorbox'});
	$(".ajax").colorbox();
	$(".callbacks").colorbox({
		onOpen:function(){ alert('onOpen: colorbox is about to open'); },
		onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
		onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
		onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
		onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
	});
				
	//Example of preserving a JavaScript event for inline calls.
	$("#click").click(function(){ 
		$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
		return false;
	});
	});
</script>

<!-- TOOGLE -->
<script type="text/javascript">
$(document).ready(function(){
	$(".toggle_container").hide(); 
	$(".trigger-title").click(function(){
		$(this).toggleClass("active").next().slideToggle("slow");
		return false; //Prevent the browser jump to the link anchor
	});
});
</script>


<!-- CAROUSEL -->
<script type="text/javascript">
jQuery(document).ready(function() {
    jQuery('#mycarousel').jcarousel({
    	wrap: 'circular'
    });
});
</script>

<!-- SLIDING CAPTIONS -->
<script type="text/javascript">
$(document).ready(function(){
	$('.boxgrid.captionfull').hover(function(){
		$(".cover", this).stop().animate({top:'0px'},{queue:false,duration:160});
	}, function() {
	$(".cover", this).stop().animate({top:'300px'},{queue:false,duration:160});
	});
});
</script>


<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xtremeshop/stylesheet/ie7.css" />
<![endif]-->

<?php echo $google_analytics; ?>
</head>

<body id="<?php echo empty($this->request->get['route']) ? 'common-home' : str_replace('/', '-', $this->request->get['route']); ?>">

<div id="notification"></div>

<div id="main">

<div id="header-container">
<div id="header-center">

<div id="header-level-1">
<div id="menu-top">
<ul>
<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
</ul>
</div>

<?php echo $cart; ?>

</div><!--header-level-1 ends-->

<div id="header-level-2">

<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div><!--logo ends-->

<div id="categories">
<ul class="nav">
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul><!--nav ends-->
</div><!--categories ends-->
</div><!--header-level-2 ends-->

</div><!--header-center ends-->

<div class="clear"></div>

<div id="panel-left">

<div id="panel-search">
<a href="<?php echo $search; ?>"><img src="catalog/view/theme/xtremeshop/image/search-button.png" alt="Contact" /></a>
<div class="clear"></div>
</div><!--panel-search ends-->

<?php echo $language; ?>
<?php echo $currency; ?>

</div><!--panel-left ends-->

</div><!--header-container ends-->
