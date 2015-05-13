<div class="left-sidebar">
	<h2><?php echo lang('category', '')?></h2>
	<div class="panel-group category-products" id="accordian"><!--category-productsr-->
		<?php foreach ($catalogData as $catalog): ?>
        	<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
<!--						<a data-toggle="collapse" data-parent="#accordian" 	-->
						<a
							href="<?php echo base_url()."catalog/detail/json?cID=".$catalog->CATALOG_ID;?>">
							<span class="badge pull-right"><i class="fa fa-plus"></i></span>
							<?php echo $catalog->CATALOG_NAME?>
						</a>
					</h4>
				</div>
<!--
				<div id="sportswear" class="panel-collapse collapse">
					<div class="panel-body">
						<ul>
							<li><a href="#">Type 1-1 </a></li>
							<li><a href="#">Type 1-2 </a></li>
							<li><a href="#">Type 1-3 </a></li>
							<li><a href="#">other</a></li>
						</ul>
					</div>
				</div>
				-->
			</div>
		<?php endforeach ?>	
		<div class="shipping text-center" style="padding-bottom: 10px;">
			<script type="text/javascript" src="http://counter7.freecounterstat.com/private/counter.js?c=f33488f7ea9155e0e1239ced20fdb826"></script>
			<br/>
			<a target="_Blank" title="visitors"><?php echo lang('visitors', '')?></a>
			<!-- <img src="<?php echo base_url();?>images/home/shipping.jpg" alt="" /> -->
		</div>
	</div>			
</div>