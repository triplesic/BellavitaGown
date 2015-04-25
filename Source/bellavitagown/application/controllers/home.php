<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','',TRUE);
		
	}

	public function index()
	{
		$data['productData'] = $this->products_model->getNewProduct();
		$this->render_page('home_view', $data);
	}
	
	
}