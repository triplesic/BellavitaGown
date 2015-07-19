<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BASE_Controller extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('catalog_model','',TRUE);
	}
	
	function render_page($view,$data) 
	{
		
		$session_data = $this->session->userdata('logged_in');
		$data['userData'] = $session_data;
		
		$data['catalogData'] = $this->catalog_model->getAll();
		
		$cartConten =  $this->cart->contents();
		$data['cartAmount'] = count($cartConten);

		/*
		 * Set language
		 */
		$lang = $this->input->cookie('lang', false);
		if($lang == "eng")
		{
			$this->lang->load('resource', 'english');
			$data['language'] = "english";
		}else
		{
			$this->lang->load('resource', 'thai');
			$data['language'] = "thai";
		}
		
    	$this->load->view('template/header',$data);
    	$this->load->view($view, $data);
    	$this->load->view('template/footer',$data);
  }
}