<?php $this->load->view('template/header');?>

	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>Supreme</span> In Design</h1>
									<h2>OHS004TSTWH</h2>
									<p>เสื้อปกฮาวายตัวยาวแขนสั้นสีขาว </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<?php echo base_url();?>/images/img01.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>BV</span>013TSLR </h1>
									<h2>สีแดงเลือดหมู</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<?php echo base_url();?>/images/img02.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>NBE</span>006TSLGL</h1>
									<h2>เสื้อผ่าตัดเล็กสีเขียว</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<?php echo base_url();?>/images/img03.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">New Arrivals :: สินค้ามาใหม่</h2>
						
		<?php foreach ($productData as $product): ?>
			<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src=<?php echo base_url();?>images/<?php echo $product->IMAGE_NAME?> alt="" />
											<h2><?php echo $product->PRICE?></h2>
											<p><?php echo $product->PRODUCT_NM_TH?></p>
											<a href="product/detail/json?pID=<?php echo $product->PRODUCT_ID?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>ดูรายละเอียด</a>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>สั่งซื้อ</a>
											
										</div>
								</div>
							</div>
						</div>
		<?php endforeach ?>	
					</div><!--features_items-->				
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">Top Recommended :: สินค้าแนะนำ</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
						
						<?php $amountNewProduct = count($productData);
						for ($i = 0; $i < $amountNewProduct; $i++) { ?>
						
									<?php if ($i < 3) { ?>
									<?php if ($i == 0) { ?>
								<div class="item active">
									<?php } ?>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src=<?php echo base_url();?>images/<?php echo $productData[$i]->IMAGE_NAME?> alt="" />
											<h2><?php echo $productData[$i]->PRICE?></h2>
											<p><?php echo $productData[$i]->PRODUCT_NM_TH?></p>
											<a href="product-details.html" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>ดูรายละเอียด</a>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>สั่งซื้อ</a></div>												
											</div>
										</div>
									</div>
									<?php if ($i == 2) { ?>
								</div>
									<?php } ?>
									<?php } ?>
									<?php if ($i >= 3 && $i <= 5) { ?>
									<?php if ($i == 3) { ?>
								<div class="item">
									<?php } ?>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src=<?php echo base_url();?>images/<?php echo $productData[$i]->IMAGE_NAME?> alt="" />
											<h2><?php echo $productData[$i]->PRICE?></h2>
											<p><?php echo $productData[$i]->PRODUCT_NM_TH?></p>	
											<a href="product-details.html" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>ดูรายละเอียด</a>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>สั่งซื้อ</a></div>
											</div>
										</div>
									</div>
									<?php if ($i == 5) { ?>
								</div>
									<?php } ?>
									<?php } ?>					
									<?php } ?>	
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
					
				</div>
			</div>
		</div>
	</section>
	

<?php $this->load->view('template/footer');?>