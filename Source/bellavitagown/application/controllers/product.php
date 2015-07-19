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
		$data['productDetail'] = $this->products_model->getProductDetail($productDTLID);
		$data['productList'] = $this->products_model->getProduct($productID);
		$data['sizeList'] = $this->size_model->getProductSize($productDTLID);
		$data['productDTLIMG'] = $this->products_model->getProductImg($productDTLID);
		$data['popup'] = false;
		$this->render_page('product_detail_view',$data);

	}
	
	public function manage()
	{
		$data['popup'] = false;
		$this->render_page('manage_product_view',$data);
	}
	
	public function manageData()
	{
		$text = $this->input->post('txt');		
		$result = $this->products_model->searchPD($text);
		$count = count($result);
		$output = array();
		
		$i =0;
		
		foreach($result as $r) {
			$responce->data[$i]=$r;
			$i++;
		}
		
		echo json_encode($responce);
	}
	
}
