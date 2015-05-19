<?php
if (! defined ( 'BASEPATH' ))
	exit ( 'No direct script access allowed' );
class Login extends BASE_Controller {
	
 function __construct()
 {
   parent::__construct();
   $this->load->model('users_model','',TRUE);
 }
	
	public function index() {
		$this->load->helper ( 'url' ); 
		
		// This method will have the credentials validation
		$this->load->library ( 'form_validation' );
		
		$this->form_validation->set_rules ( 'username', 'Username', 'trim|required|xss_clean' );
		$this->form_validation->set_rules ( 'password', 'Password', 'trim|required|xss_clean|callback_check_database' );
		
		if ($this->form_validation->run () == FALSE) {
			// Field validation failed. User redirected to login page
			$session_data = $this->session->userdata('logged_in');
			$data['userType'] = $session_data['userType'];
			$data['firstName'] = $session_data['firstName'];
			$data['lastName'] = $session_data['lastName'];
			
			$this->render_page('login_view',$data );
		} else {
			// Go to private area
			// redirect('home', 'refresh');
			header ( "Location: home" );
			die ();
		}
		
	}
	
	function check_database($password)
	{
		//Field validation succeeded.  Validate against database
		$username = $this->input->post('username');
	
		//query the database
		$result = $this->users_model->login($username, $password);
	
		if($result)
		{
			$sess_array = array();
			foreach($result as $row)
			{
				$sess_array = array(
						'userId' => $row->USER_ID,
						'userType' => $row->USER_TYPE,
						'firstName' => $row->FIRSTNAME,
						'lastName' => $row->LASTNAME
				);
				$this->session->set_userdata('logged_in',$sess_array);
			}
			return TRUE;
		}
		else
		{
			$this->form_validation->set_message('check_database', 'Invalid username or password');
			return false;
		}
	}
	
	function logout()
	{
		$this->session->unset_userdata('logged_in');
		//session_destroy();
		   redirect('home', 'refresh');
// 		header("Location: home");
	}
}
