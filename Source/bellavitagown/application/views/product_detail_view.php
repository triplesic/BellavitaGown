<?php $this->load->view('template/header');?>

<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
												<?php 
		$amountProductDetail = count($productDetail);
		$divide = $amountProductDetail / 3;
		if($divide==0)
		{
			$x = $amountProductDetail ;
		}else if($divide>0)
		{
			$x = 3;
		}
		
		for($i = 0 ; $i<$amountProductDetail ;$i++)
		{

			
			
		?>	
		<?php 	if($i==0)
			{
			?>
						<div class="col-sm-5">
							<div class="view-product">
								<img src="<?php echo base_url();?>images/<?php echo $productDetail[$i]->IMAGE_NAME?>" alt="" />
<!-- 								<h3>ZOOM</h3> -->
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
				<?php
			}
			?>								    
	
						<?php 	if($i==0)
			{
			?>	
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="<?php echo base_url();?>images/product-details/new.jpg" class="newarrival" alt="" />
								<h2><?php echo $productDetail[$i]->PRODUCT_NM_TH?></h2>
								<p>Code : <?php echo $productDetail[$i]->PRODUCT_DTL_ID?></p>
<!-- 								<img src="images/product-details/rating.png" alt="" /> -->
								<span>
									<span><?php echo $productDetail[$i]->PRICE?>.</span>
									<label>Quantity:</label>
									<input type="text" value="<?php echo $productDetail[$i]->QUANTITY?>" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand:</b> Bella Vita Gown</p>
								<p><?php echo $productDetail[$i]->DETAIL?></p>
<!-- 								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a> -->
							</div><!--/product-information-->
						</div>
									<?php
			}
			?>
						<?php
			}
			?>
					</div><!--/product-details-->
					
					
					
				</div>
			</div>
		</div>
	</section>
	<?php $this->load->view('template/footer');?>