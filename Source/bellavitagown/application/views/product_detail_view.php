	<script
	
	type="text/javascript"
	src="<?php echo base_url();?>js/order.js">

	</script>
	<section>
		<div class="container">
			<div class="row">
			
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
			
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">

								<img src="<?php echo base_url();?>images/<?php echo $productDetail[0]->IMAGE_NAME?>" alt="" />
								<input type="hidden" id="productImage" name="productImage" value="<?php echo $productDetail[0]->IMAGE_NAME?>"/>
	<!-- 							<h3>ZOOM</h3> -->
							</div>
							
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								  
								    <div class="carousel-inner">
							<?php 	    
							$amountProduct = count($productList);
							

							if($amountProduct%3==0)
							{
								$rows = $amountProduct/3;
								$sead = 0;
							}else
							{
								$rows = ($amountProduct/3)+1;
								$sead = $amountProduct%3;
							}
							
							for($i = 1 ; $i <= $amountProduct ;$i++)
								{	

											
									 if($i == 1)
								   {
								   	?>
								   
										<div class="item active">
										
							<?php }?>
							<?php 	

							if($i <= 3)
							{
								
									if($i>=0 && $i<=3)	
									{
							?>	
										<a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $productList[$i-1]->PRODUCT_DTL_ID?>&pID=<?php echo $productList[$i-1]->PRODUCT_ID?>"><img src="<?php echo base_url();?>images/<?php echo $productList[$i-1]->IMAGE_NAME?>" alt="" style="width: 25%; height: 25%;"></a>
							<?php }?>	
										
							<?php 			
										if( $i == 3 ||$i == $amountProduct )	
											{
							?>		 
										  </div>	
							<?php }}?>
							
							
									<?php 
									if($i > 3)
									{
									?>	
									<?php 
									if(($i-1)%3 == 0)
									{
									?>	
										<div class="item">
										
									<?php }?>	
									
									<?php 
									if($i > 3)
									{
									?>
										  <a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $productList[$i-1]->PRODUCT_DTL_ID?>&pID=<?php echo $productList[$i-1]->PRODUCT_ID?>&clrID=<?php echo $productList[$i-1]->COLOR_ID?>"><img src="<?php echo base_url();?>images/<?php echo $productList[$i-1]->IMAGE_NAME?>" alt="" style="width: 25%; height: 25%;"></a>

									<?php }?>
									
										<?php 
									if(($i > 3 && ($i-1) % 3 ==0)||$i == $amountProduct )
									{
									?>
									</div>
		<?php }?>
										
									<?php } ?>		
									<?php } ?>
									
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
								<h2><?php echo $productDetail[0]->PRODUCT_NM_TH?>
								<input type="hidden" id="productName" name="productName" value="<?php echo $productDetail[0]->PRODUCT_NM_TH?>"/>
								</h2>
								<p>Code : <?php echo $productDetail[0]->PRODUCT_DTL_ID?>
								<input type="hidden" id="pddID" name="pddID" value="<?php echo $productDetail[0]->PRODUCT_DTL_ID?>"/>
								</p>
<!-- 								<img src="images/product-details/rating.png" alt="" /> -->
								<span>
									<span><?php echo $productDetail[0]->PRICE?>. บาท
									<input type="hidden" id="price" name="price" value="<?php echo $productDetail[0]->PRICE?>"/>
									</span>	
								</span>
								
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand:</b> Bella Vita Gown</p>
								<p><b>Detail :</b> <?php echo $productDetail[0]->DETAIL?></p>
								<p><b>Color :</b><?php echo $productDetail[0]->COLOR?>
								<input type="hidden" id="color" name="color" value="<?php echo $productDetail[0]->COLOR?>"/>
								</p>
								<p><b>Size :</b> 
								
								<select name="size" id="size"  style="width: 25%;">
   								<?php foreach($sizeList as $size){ ?>
        							<option value="<?php echo $size->SIZE_ID?>"><?php echo $size->SIZE_NM?></option>';
    							<?php } ?>
								</select>
								
								
								 </p>
								<p><b>จำนวนที่สั่ง :</b> <input type="text" placeholder="0" id="amountOrder" name="amountOrder"/></p>
								<p><button type="button" onclick="addCart();"class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
									
									<button type="button" onclick="destroyCart();"class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Destroy
									</button>
									</p>
<!-- 								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a> -->
							</div>
						</div>
					</div><!--/product-details-->
					

				</div>
			</div>
		</div>
	</section>