<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{		
		$data['popup'] = false;
		$this->render_page('about_us_view',$data);	
	}
	
}