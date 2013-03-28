<?php echo $header; ?>

<div id="container">
<div class="page-name"><?php echo $heading_title; ?></div>
<div id="content">
<?php echo $content_top; ?>
  

  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">

    <div class="content">
    <?php echo $entry_name; ?><br />
    <input type="text" name="name" value="<?php echo $name; ?>" />
    <br />
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?>
    <br />
    <?php echo $entry_email; ?><br />
    <input type="text" name="email" value="<?php echo $email; ?>" />
    <br />
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
    <br />
    <?php echo $entry_enquiry; ?><br />
    <textarea name="enquiry" cols="40" rows="8" style="width: 59%;"><?php echo $enquiry; ?></textarea>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
    <br /><br />
    <img src="index.php?route=information/contact/captcha" id="captcha-image" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
    </div>
    <div class="buttons">
      <div class="right"><a onclick="$('#contact').submit();" class="button" id="send"><span><?php echo $button_continue; ?></span></a></div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div>
<div class="clear"></div>
</div><!--container ends-->
<div class="clear"> </div>
 <div id="latest-products"><?php echo $column_left; ?></div>
<?php echo $footer; ?>