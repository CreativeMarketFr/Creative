<?php echo $header; ?>
<div id="container">
<div class="page-name"><?php echo $heading_title; ?></div>

<div id="content">
<?php echo $content_top; ?>

  <p><?php echo $text_balance; ?><b> <?php echo $balance; ?></b>.</p>
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $column_date_added; ?></td>
        <td class="left"><?php echo $column_description; ?></td>
        <td class="right"><?php echo $column_amount; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php if ($transactions) { ?>
      <?php foreach ($transactions  as $transaction) { ?>
      <tr>
        <td class="left"><?php echo $transaction['date_added']; ?></td>
        <td class="left"><?php echo $transaction['description']; ?></td>
        <td class="right"><?php echo $transaction['amount']; ?></td>
      </tr>
      <?php } ?>
      <?php } else { ?>
      <tr>
        <td class="center" colspan="5"><?php echo $text_empty; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
  <div class="pagination"><?php echo $pagination; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<div id="right-column"><?php echo $column_right; ?></div><!--right-column ends-->
<div class="clear"></div>
</div><!--container ends-->
<div class="clear"> </div>
 <div id="latest-products"><?php echo $column_left; ?></div>
<?php echo $footer; ?>