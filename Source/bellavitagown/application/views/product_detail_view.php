<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
				<div class="col-sm-9 padding-right">
				
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
						
							<?php 
								$amountProductDetail = count($productDetail);
								

								if($amountProductDetail%3==0){
									$rows = $amountProductDetail/3;
									$sead = 0;
								}
								else{
									$rows = ($amountProductDetail/3)+1;
									$sead = $amountProductDetail%3;
								}
								
								
								for($i = 0 ; $i<$amountProductDetail ;$i++)
								{					
							?>	
						
							<?php 	
								if($i==0)
								{
							?>

								<div class="view-product">
									<img src="<?php echo base_url();?>images/<?php echo $productDetail[$i]->IMAGE_NAME?>" alt="" />
								</div>	

	
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
				    					<div class="item active">
							<?php }?>
							
							<?php 			
								if($i>=1 && $i<=3)	
								{
							?>	
										  <a href=""><img src="<?php echo base_url();?>images/<?php echo $productDetail[$i]->IMAGE_NAME?>" alt="" style="width: 25%; height: 25%;"></a>
							<?php }?>		
							<?php 			
								if( $i == 3 ||$i == $amountProductDetail-1 )	
								{
							?>		 
										  </div>	
							<?php }?>			
										
									<?php 
									if($rows >= 2)
									{
									?>	
									<?php 
									if($i%3 == 0)
									{
									?>	
										<div class="item">
										
									<?php }?>	
									
									<?php 
									if($i >= 4)
									{
									?>
										  <a href=""><img src="<?php echo base_url();?>images/<?php echo $productDetail[$i]->IMAGE_NAME?>" alt="" style="width: 25%; height: 25%;"></a>

									<?php }?>
									
							<?php 	
								if( $amountProductDetail%3 ==1 ||$i == $amountProductDetail-1)
								{
							?>	  
										</div>
								
								
								<?php }?>		
										
								<?php }?>
							<?php 	
								if($i == $amountProductDetail-1)
								{
							?>
									</div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="<?php echo base_url();?>images/product-details/new.jpg" class="newarrival" alt="" />
								<h2><?php echo $productDetail[0]->PRODUCT_NM_TH?></h2>
								<p>Code : <?php echo $productDetail[0]->PRODUCT_DTL_ID?></p>
<!-- 								<img src="images/product-details/rating.png" alt="" /> -->
								<span>
									<span><?php echo $productDetail[0]->PRICE?>.</span>
									<label>Quantity:</label>
									<input type="text" value="<?php echo $productDetail[0]->QUANTITY?>" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand:</b> Bella Vita Gown</p>
								<p><?php echo $productDetail[0]->DETAIL?></p>
<!-- 								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a> -->
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
				
							<?php
								}
							?>		
				
						<?php
							}
						?>
				
					
					
					
				</div>
			</div>
		</div>
</section>