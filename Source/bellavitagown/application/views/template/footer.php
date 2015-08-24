<body>
	<?php  if($popup == true){?>
	
	
	<?php }else{?>	
	<footer id="footer"><!--Footer-->
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="single-widget">
							<h2>BellaVitaGown</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="<?php echo base_url()?>about"><?php echo lang('about_us')?></a></li>
								<li><a href="<?php echo base_url()?>contact"><?php echo lang('contact')?></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="single-widget">
							<h2><?php echo lang('member');?></h2>
							
							<ul class="nav nav-pills nav-stacked">
								<?php  if($userData['userType'] == NULL){?>
								
								
								<li id="showCart"><a href="<?php echo base_url()."order"?>"><?php echo lang('cart');?> (<?php echo $cartAmount; ?>)</a></li>
								
								
								<li><?php echo anchor('login', lang('login'));?></li>
						<?php }else { ?>
								<li><a href="<?php echo base_url();?>users/info"><?php echo $userData['firstName']; ?> <?php echo $userData['lastName']; ?></a></li>
								<li><a href="<?php echo base_url()."order"?>"><?php echo lang('cart');?> (<?php echo $cartAmount; ?>)</a></li>
								<li><?php echo anchor('login/logout', lang('logout'));?></li>
							<?php }?>
							
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="single-widget">
							<h2><?php echo lang('follow_us');?></h2>
							<div class="nav nav-pills nav-stacked social-networks" style="text-align: left;">
								<ul>
									<li><a href="http://www.facebook.com/bellavita.bestqualitygown" target="_blank"><i class="fa fa-facebook"></i></a></li>
									<li><a href="http://line.me/ti/p/~bnandbv" target="_blank">
											<i class="fa fa-line" style="display: inline-block; padding: 0px 15px;">
												<img src="<?php echo base_url();?>images/line_logo_black.png" alt="" style="height: 1.2em;"/>
											</i>
										</a>
									</li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="logo pull-right" style="margin-top: 1em;">
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/bella_logo_gray_100.png" alt="" /></a>
						</div>
					</div>
					<!-- <div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
							</form>
						</div>
					</div>
					 -->
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
<!-- 				<div class="row"> -->
<!-- 					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p> -->
<!-- 					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p> -->
<!-- 				</div> -->
			</div>
		</div>
		
	</footer><!--/Footer-->
	<?php }?>
</body>
</html>