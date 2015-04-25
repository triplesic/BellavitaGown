<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{	
			
		$this->render_page('contact_view', '');
		
	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */