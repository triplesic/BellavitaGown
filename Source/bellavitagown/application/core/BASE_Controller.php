<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BASE_Controller extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->model('catalog_model','',TRUE);
	}
	
	function render_page($view, $data) 
	{
		$this->load->helper('url');
		$session_data = $this->session->userdata('logged_in');
		$data['userType'] = $session_data['userType'];
		$data['firstName'] = $session_data['firstName'];
		$data['lastName'] = $session_data['lastName'];
		
		$data['catalogData'] = $this->catalog_model->getAll();
		
		$cartConten =  $this->cart->contents();
		$data['cartAmount'] = count($cartConten);
		
    	$this->load->view('template/header', $data);
    	$this->load->view($view, $data);
    	$this->load->view('template/footer');
  }
}