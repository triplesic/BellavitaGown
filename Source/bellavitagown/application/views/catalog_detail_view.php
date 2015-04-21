<?php $this->load->view('template/header');?>


	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">สินค้า :: <?php echo$catalogDetail[0]->CATALOG_NAME?></h2>
						
		<?php 
		$amountcatalogDetail = count($catalogDetail);
				
		for($i = 0 ; $i<$amountcatalogDetail ;$i++)
		{
		?>
		
		<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src=<?php echo base_url();?>images/<?php echo $catalogDetail[$i]->IMAGE_NAME?> alt="" />
											<h2><?php echo $catalogDetail[$i]->PRICE?></h2>
											<p><?php echo $catalogDetail[$i]->PRODUCT_NM_TH?></p>
											<a href="product/detail/json?pID=<?php echo $catalogDetail[$i]->PRODUCT_ID?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>ดูรายละเอียด</a>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>สั่งซื้อ</a>
											
										</div>
<!-- 										<div class="product-overlay"> -->
<!-- 											<div class="overlay-content"> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="product-details.html" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>ดูรายละเอียด</a> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>สั่งซื้อ</a> -->
<!-- 											</div> -->
<!-- 										</div> -->
								</div>
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
							</div>
						</div>
						
		
		
		

		<?php		
			}	
		?>	
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 										<div class="productinfo text-center"> -->
<!-- 											<img src="images/home/product1.jpg" alt="" /> -->
<!-- 											<h2>$56</h2> -->
<!-- 											<p>Easy Polo Black Edition</p> -->
<!-- 											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 										</div> -->
<!-- 										<div class="product-overlay"> -->
<!-- 											<div class="overlay-content"> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 								</div> -->
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img src="images/home/product2.jpg" alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->
<!-- 									<div class="product-overlay"> -->
<!-- 										<div class="overlay-content"> -->
<!-- 											<h2>$56</h2> -->
<!-- 											<p>Easy Polo Black Edition</p> -->
<!-- 											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img src="images/home/product3.jpg" alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->
<!-- 									<div class="product-overlay"> -->
<!-- 										<div class="overlay-content"> -->
<!-- 											<h2>$56</h2> -->
<!-- 											<p>Easy Polo Black Edition</p> -->
<!-- 											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img src="images/img01.jpg" alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->
<!-- 									<div class="product-overlay"> -->
<!-- 										<div class="overlay-content"> -->
<!-- 											<h2>$56</h2> -->
<!-- 											<p>Easy Polo Black Edition</p> -->
<!-- 											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<img src="images/home/new.png" class="new" alt="" /> -->
<!-- 								</div> -->
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img src="images/img02.jpg" alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->
<!-- 									<div class="product-overlay"> -->
<!-- 										<div class="overlay-content"> -->
<!-- 											<h2>$56</h2> -->
<!-- 											<p>Easy Polo Black Edition</p> -->
<!-- 											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<img src="images/home/sale.png" class="new" alt="" /> -->
<!-- 								</div> -->
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img src="images/img03.jpg" alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->
<!-- 									<div class="product-overlay"> -->
<!-- 										<div class="overlay-content"> -->
<!-- 											<h2>$56</h2> -->
<!-- 											<p>Easy Polo Black Edition</p> -->
<!-- 											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="choose"> -->
<!-- 									<ul class="nav nav-pills nav-justified"> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li> -->
<!-- 										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
					</div><!--features_items-->
					
<!-- 					<div class="category-tab">category-tab -->
<!-- 						<div class="col-sm-12"> -->
<!-- 							<ul class="nav nav-tabs"> -->
<!-- 								<li class="active"><a href="#tshirt" data-toggle="tab">T-Shirt</a></li> -->
<!-- 								<li><a href="#blazers" data-toggle="tab">Blazers</a></li> -->
<!-- 								<li><a href="#sunglass" data-toggle="tab">Sunglass</a></li> -->
<!-- 								<li><a href="#kids" data-toggle="tab">Kids</a></li> -->
<!-- 								<li><a href="#poloshirt" data-toggle="tab">Polo shirt</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 						<div class="tab-content"> -->
<!-- 							<div class="tab-pane fade active in" id="tshirt" > -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery1.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery2.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery3.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery4.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							
<!-- 							<div class="tab-pane fade" id="blazers" > -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery4.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery3.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery2.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery1.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							
<!-- 							<div class="tab-pane fade" id="sunglass" > -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery3.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery4.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery1.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery2.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							
<!-- 							<div class="tab-pane fade" id="kids" > -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery1.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery2.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery3.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery4.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							
<!-- 							<div class="tab-pane fade" id="poloshirt" > -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery2.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery4.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery3.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<div class="product-image-wrapper"> -->
<!-- 										<div class="single-products"> -->
<!-- 											<div class="productinfo text-center"> -->
<!-- 												<img src="images/home/gallery1.jpg" alt="" /> -->
<!-- 												<h2>$56</h2> -->
<!-- 												<p>Easy Polo Black Edition</p> -->
<!-- 												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 											</div> -->
											
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div>/category-tab -->
	
							
								
<!-- 							</div> -->
<!-- 							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev"> -->
<!-- 								<i class="fa fa-angle-left"></i> -->
<!-- 							  </a> -->
<!-- 							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next"> -->
<!-- 								<i class="fa fa-angle-right"></i> -->
<!-- 							  </a>			 -->
<!-- 						</div> -->
					</div><!--/recommended_items-->
					
				</div>
			</div>
		</div>
	</section>
	

<?php $this->load->view('template/footer');?>