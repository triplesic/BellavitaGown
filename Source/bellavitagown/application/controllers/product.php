<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','',TRUE);
		$this->load->model('size_model','',TRUE);
	}
	
	public function detail()
	{
		$productDTLID = $this->input->get('pdID');
		$productID = $this->input->get('pID');
		$data['productDetail'] = $this->products_model->getProductDetail($productDTLID, $this->getLanguage());
		$data['productList'] = $this->products_model->getProduct($productID);
		$data['sizeList'] = $this->size_model->getProductSize($productDTLID);
		$this->render_page('product_detail_view', $data);

	}
	
}
