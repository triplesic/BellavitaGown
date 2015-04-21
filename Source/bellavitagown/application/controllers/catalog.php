<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Catalog extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->library('session');
		$this->load->model('catalog_model','',TRUE);
	}
	
	public function detail()
	{
		$session_data = $this->session->userdata('logged_in');
		
		$data['userType'] = $session_data['userType'];
		$data['firstName'] = $session_data['firstName'];
		$data['lastName'] = $session_data['lastName'];
	
		$catalog_ID = $this->input->get('cID');

		$data['catalogDetail'] = $this->catalog_model->getCatalogDetail($catalog_ID);
		
		$this->load->view('catalog_detail_view', $data);

	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */