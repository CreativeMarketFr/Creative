<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="container">
<div class="page-name"><?php echo $heading_title; ?></div>

<div id="content">
<?php echo $content_top; ?>
  <h5><?php echo $text_address_book; ?></h5>
  <?php foreach ($addresses as $result) { ?>
  <div class="content">
    <table style="width: 100%;">
      <tr>
        <td><?php echo $result['address']; ?></td>
        <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<div id="right-column"><?php echo $column_right; ?></div><!--right-column ends-->
<div class="clear"></div>
</div><!--container ends-->
<div class="clear"> </div>
 <div id="latest-products"><?php echo $column_left; ?></div>
<?php echo $footer; ?>