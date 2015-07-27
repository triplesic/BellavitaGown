<!DOCTYPE html>
<html lang="en">
<head>
	<script src='https://www.google.com/recaptcha/api.js'></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
    
    <link href="<?php echo base_url();?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>css/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo base_url();?>css/price-range.css" rel="stylesheet">
    <link href="<?php echo base_url();?>css/animate.css" rel="stylesheet">
	<link href="<?php echo base_url();?>css/responsive.css" rel="stylesheet">	
	<link href="<?php echo base_url();?>css/main.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]--> 

	
  	<script src="<?php echo base_url();?>js/jquery/jquery-1.7.2.js"></script>
	<script src="<?php echo base_url();?>js/lib/bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>js/lib/jquery.scrollUp.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>js/jquery.blockUI.js"></script>
	<script src="<?php echo base_url();?>js/lib/price-range.js"></script>
	<script src="<?php echo base_url();?>js/jquery.scrollUp.min.js"></script>
    <script src="<?php echo base_url();?>js/lib/jquery.prettyPhoto.js"></script>
    <script src="<?php echo base_url();?>js/lib/main.js"></script>
	
  	<link rel="shortcut icon" href="<?php echo base_url();?>images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url();?>images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url();?>images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url();?>images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo base_url();?>images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<?php  if($popup == '1'){?>
	
	
	<?php }else{?>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> (66)2-416-0314</a></li>
								<li><a href="#"><i class="fa fa-phone"></i> (66)2-895-0013-4</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> bellavita_gown@hotmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo_new.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right" style="margin-top: 1.3em;">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									TH / EN
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a onclick="javascript:document.cookie='lang=thai'" href="">ภาษาไทย</a></li>
									<li><a onclick="javascript:document.cookie='lang=eng'" href="">English</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li>
								<?php  if($userData['userType'] == NULL){?>
								
								
								<li id="showCart"><a href="<?php echo base_url()."order"?>"><i class="fa fa-shopping-cart"></i> <?php echo lang('cart');?> (<?php echo $cartAmount; ?>)</a></li>
								
								
								<li><?php echo anchor('login', '<i class="fa fa-lock"></i>'.lang('login'));?></li>
						<?php }else { ?>
								<li><a href="<?php echo base_url();?>users/info"><i class="fa fa-user"></i><?php echo $userData['firstName']; ?> <?php echo $userData['lastName']; ?></a></li>
								<li><a href="<?php echo base_url()."order"?>"><i class="fa fa-shopping-cart"></i> Cart (<?php echo $cartAmount; ?>)</a></li>
								<li><?php echo anchor('login/logout', '<i class="fa fa-lock"></i>'.lang('logout'));?></li>
							<?php }?>	
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li>
								<?php echo anchor('home', lang('home'));?>
								</li>
								<li class="dropdown"><a href="#"><?php echo lang('catalog')?><i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">                          	
                                    	<?php foreach ($catalogData as $catalog): ?>
                                    	<li>
                                    		<a href="<?php echo base_url()."catalog/detail/json?cID=".$catalog->CATALOG_ID;?>">
                                    			<?php echo $catalog->CATALOG_NAME?>
                                    		</a>
                                    	</li>
										<?php endforeach ?>	
                                    </ul>
                                </li> 
							<?php if($userData['userType'] == "admin"){?>
                                <li><a href="<?php echo base_url()?>users/manage"><?php echo lang('user_management')?></a></li>
                                <li><a href="<?php echo base_url()?>product/manage"><?php echo lang('product_management')?></a></li>
                            <?php }else if($userData['userType'] == "user") {?>
                            	<li><a href="contact-us.html">Order</a></li>
                            <?php }?>
                            	<li><a href="<?php echo base_url()?>about"><?php echo lang('about_us')?></a></li>
								<li><a href="<?php echo base_url()?>contact"><?php echo lang('contact')?></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
<?php }?>