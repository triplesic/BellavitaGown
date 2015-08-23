	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center"><?php echo lang('product')?> :: <?php echo$catalogDetail[0]->CATALOG_NAME?></h2>
						
		<?php 
		$amountcatalogDetail = count($catalogDetail);
				
		for($i = 0 ; $i<$amountcatalogDetail ;$i++)
		{
		?>
		
						<div class="col-sm-4" >
							<div class="product-image-wrapper" style="height:470px">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src=<?php echo base_url();?>images/small/<?php echo $catalogDetail[$i]->IMAGE_NAME?> alt="" />
											<!--  <h2><?php echo $catalogDetail[$i]->PRICE?></h2>-->
											<p></p>
											<p><?php echo $catalogDetail[$i]->PRODUCT_NM?></p>
											<a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $catalogDetail[$i]->PRODUCT_DTL_ID?>&pID=<?php echo $catalogDetail[$i]->PRODUCT_ID?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i><?php echo lang('detail')?></a>
											
											
										</div>
								</div>
							</div>
						</div>
						
		
		
		

		<?php		
			}	
		?>	

					</div><!--/recommended_items-->
					
				</div>
			</div>
		</div>
	</section>