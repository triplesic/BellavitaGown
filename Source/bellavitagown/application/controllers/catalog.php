<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Catalog extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('catalog_model','',TRUE);
	}
	
	public function detail()
	{
		$catalog_ID = $this->input->get('cID');
		$data['catalogDetail'] = $this->catalog_model->getCatalogDetail($catalog_ID, $this->language);
		$data['popup'] = false;
		$this->render_page('catalog_detail_view',$data);

	}
	
}
