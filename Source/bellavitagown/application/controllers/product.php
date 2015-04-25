<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','',TRUE);
	}
	
	public function detail()
	{
		
		$product_ID = $this->input->get('pID');
		$data['product_ID'] = $product_ID;
		$data['productDetail'] = $this->products_model->getProductDetail($product_ID);
		$this->render_page('product_detail_view', $data);

	}
	
	
}
