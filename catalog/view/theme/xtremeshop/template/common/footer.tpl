
</div><!--main ends-->

<div id="footer">

<div id="footer-center">

<div id="footer-column1">

<h3>Que vendons-nous ?</h3>

Ce site a pour but de promouvoir de jeunes artistes dans les domaines de la photographie, la peinture, l'art génératif, l'art numérique et le graffiti.


<h3>Partagez !</h3>
<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
    <a class="addthis_button_facebook"></a>
    <a class="addthis_button_twitter"></a>
    <a class="addthis_button_email"></a>
    <a class="addthis_button_delicious"></a>
    <a class="addthis_button_digg"></a>
<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e3030310ffbcd20"></script>
<!-- AddThis Button END -->


<div id="sitelock_shield_logo" class="fixed_btm" style="bottom:0;position:fixed;_position:absolute;right:0;"><a href="https://www.sitelock.com/verify.php?site=creativemarket.fr" onclick="window.open('https://www.sitelock.com/verify.php?site=creativemarket.fr','SiteLock','width=600,height=600,left=160,top=170');return false;" ><img alt="malware removal and website security" title="SiteLock"  src="http://shield.sitelock.com/sshield/creativemarket.fr"/></a></div>

</div><!--footer-column1 ends-->

<div id="footer-column2">

<h3>Informations</h3>
 <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>

 </ul>

</div><!--footer-column2 ends-->

<!--<div id="footer-column3">-->

      <!--<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>-->
      <!--<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>-->
      <!--<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>-->

</ul>

</div><!--footer-column3 ends-->

</div><!--footer-center ends-->
<div class="clear"></div>


<div id="footer-bottom">
&copy; <?php echo $name; ?> / Flags by <a href="http://www.icondrawer.com">IconDrawer</a> 
</div><!--footer-bottom ends-->
</div><!--footer ends-->


<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>
