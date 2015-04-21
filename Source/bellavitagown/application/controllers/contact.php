<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->model('products_model','',TRUE);
	}
	
	public function index()
	{
		$this->load->helper('url');
	
		$session_data = $this->session->userdata('logged_in');
		
		$data['userType'] = $session_data['userType'];
		$data['firstName'] = $session_data['firstName'];
		$data['lastName'] = $session_data['lastName'];
		
		
		$this->load->view('contact_view', $data);

	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */