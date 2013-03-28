<?php echo $header; ?>

<div id="container">
<div class="page-name"><?php echo $heading_title; ?></div>
<div id="content">
<?php echo $content_top; ?>
    
    <div class="content"><?php echo $text_error; ?></div>
    <div class="buttons-error">
    <div class="right"><a href="<?php echo $continue; ?>" class="button" id="continue-button"><?php echo $button_continue; ?></a></div>
    </div><!--buttons-error ends-->
    <?php echo $content_bottom; ?></div><!--content ends-->
<div class="clear"> </div>
</div><!--container ends-->
<div class="clear"> </div>
 <div id="latest-products"><?php echo $column_left; ?></div>
<?php echo $footer; ?>