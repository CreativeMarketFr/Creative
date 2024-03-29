<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="container">
<div class="page-name"><?php echo $heading_title; ?></div>

<div id="content">
<?php echo $content_top; ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <p><?php echo $text_email; ?></p>
    <h5><?php echo $text_your_email; ?></h5>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
      </div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div>
<div id="right-column"><?php echo $column_right; ?></div><!--right-column ends-->
<div class="clear"></div>
</div><!--container ends-->
<div class="clear"> </div>
 <div id="latest-products"><?php echo $column_left; ?></div>
<?php echo $footer; ?>