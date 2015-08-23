<!--slider-->
	<section id="slider">
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
									<img src="<?php echo base_url();?>/images/slide/img01.jpg" class="girl img-responsive" alt="" />
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
									<img src="<?php echo base_url();?>/images/slide/img02.jpg" class="girl img-responsive" alt="" />
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
									<img src="<?php echo base_url();?>/images/slide/img03.jpg" class="girl img-responsive" alt="" />
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
	</section>
	<!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category', $catalogData);?>
				</div>
				
				<div class="col-sm-9 padding-right">
					
					<!--features_items-->
					<div class="features_items">
						<h2 class="title text-center"><?php echo lang('new_arrival')?></h2>
					<?php foreach ($productData as $product): ?>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src=<?php echo base_url();?>images/small/<?php echo $product->IMAGE_NAME?> alt="" />
										<p></p>
										<p><?php echo $product->PRODUCT_NM?></p>
										<a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $product->PRODUCT_DTL_ID?>&pID=<?php echo $product->PRODUCT_ID?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i><?php echo lang('detail')?></a>
										
									</div>
								</div>
							</div>
						</div>
					<?php endforeach ?>	
					</div>
					<!--features_items-->		
					
					<!--recommended_items-->
					<div class="recommended_items">
						<h2 class="title text-center"><?php echo lang('top_recommend')?></h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<?php $index = 0 ?>
								<?php foreach ($productData as $product): ?>
								<?php if($index == 0) 
									{
										echo '<div class="item active">';
									}
									else if($index == 3)
									{
										echo '</div>';
										echo '<div class="item">';
									}
									$index++;
								?>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src=<?php echo base_url();?>images/small/<?php echo $product->IMAGE_NAME?> alt="" />
													<p></p>
													<p><?php echo $product->PRODUCT_NM?></p>
													<a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $product->PRODUCT_DTL_ID?>&pID=<?php echo $product->PRODUCT_ID?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i><?php echo lang('detail')?></a>
													
												</div>												
											</div>
										</div>
									</div>
								<?php endforeach ?>
								<?php echo '</div>' ?>
							</div>
							<a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
								</a>
								<a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							</a>			
						</div>
					</div>
					<!--/recommended_items-->
					
				</div>
			</div>
		</div>
	</section>