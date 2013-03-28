<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>

<div class="special-item">
<div class="box-container">
   <a class="box-image" href="<?php echo $product['href']; ?>" style="background-image:url('<?php echo $product['thumb']; ?>'); background-position:center center;">
   </a><!--box-image ends-->
 </div><!--box-container ends-->

<div class="box-title"> 
<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          <span class="box-price"><?php if (!$product['special']) { ?>
          <span class="box-price-child"><?php echo $product['price']; ?></span>
          <?php } else { ?>
          <span style="text-decoration:line-through; color:#ef0000; font-size:10px;"><?php echo $product['price']; ?></span> &rarr; <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?></span>
      </div><!--box-title ends-->

<div class="clear"></div>
</div><!--special-item ends-->
      <?php } ?>
    </div>

  </div>
</div>
