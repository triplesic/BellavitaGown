<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->library('session');
		$this->load->model('products_model','',TRUE);
	}
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function detail()
	{
		$session_data = $this->session->userdata('logged_in');
		
		$data['userType'] = $session_data['userType'];
		$data['firstName'] = $session_data['firstName'];
		$data['lastName'] = $session_data['lastName'];
	
		$product_ID = $this->input->get('pID');
		$data['product_ID'] = $product_ID;
		$data['productDetail'] = $this->products_model->getProductDetail($product_ID);
		
		$this->load->view('product_detail_view', $data);

	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */