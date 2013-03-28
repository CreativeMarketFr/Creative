<?php foreach ($products as $product) { ?>
<div class="box-container">
  <div class="box-preloader">
   <div class="boxgrid captionfull">
     <a class="box-image" href="<?php echo $product['href']; ?>" style="background-image:url('<?php echo $product['thumb']; ?>'); background-position:center center;">
         <span class="cover boxcaption">
	<span class="boxcaption-child">
	     <?php echo  <?php echo strip_tags(html_entity_decode($product['description'])) ?><br /> ?><br />
	     <?php if ($product['rating']) { ?>
	     <img class="rating-stars" src="catalog/view/theme/xtremeshop/image/stars-<?php echo $product['rating'] . 'a.png'; ?>" alt="Rating" />
                   <?php } ?>
	 </span>
          </span>
     </a><!--box-image ends-->
   </div><!--boxgrid captionfull ends-->
  </div><!--box-preloader -->

 <div class="box-bottom">
  <div class="box-title"><a href="<?php echo $product['href']; ?>"><?php if( strlen( $product['name'] ) < 28 ) { echo $product['name']; } else { echo substr( $product['name'],0,25 )."..."; } ?></a></div><!--box-title ends-->
  <div class="box-title-lower">

          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>&nbsp; <span class="box-add-to-cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');">Add to Cart &rarr;</a></span>
          <?php } else { ?>
          <span class="price-old"><?php echo str_replace('.00','',$product['price']); ?></span> <?php echo $product['special']; ?>&nbsp; <span class="box-add-to-cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');">Add to Cart &rarr;</a></span>
          <?php } ?>

  </div><!--box-title-lower ends-->
 <div class="clear"></div>
 </div><!--box-bottom ends-->
</div><!--box-container ends-->
<?php } ?>