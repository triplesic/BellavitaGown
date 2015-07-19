<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{		
		$data['popup'] = '0';
		$this->render_page('contact_view',$data);	
	}
	
	public function inquiry()
	{
		$pddID = $this->input->get('pddID');
		$sess_array = array(
				'pddID'=>$pddID
		);
		
		$this->session->set_userdata('inquiry',$sess_array);
			
		$session_data = $this->session->userdata('logged_in');
		$data['userType'] = $session_data['userType'];
		$data['firstName'] = $session_data['firstName'];
		$data['lastName'] = $session_data['lastName'];
		$data['popup'] = '1';			
		if ( $session_data == null )
		{
			$view = 'login_view';
		}else
		{
			$view = 'inquiry_view';
		}
		
		$this->render_page($view,$data,true);
	}
	
	public function inquiryContact()
	{
		$name = $this->input->post('name');
		$email = $this->input->post('email');
		$phone = $this->input->post('phone');
		$data = $this->input->post('message');
		$compName = $this->input->post('compName');
	
		$html = '<div>';
		$html .='<table rules="all" style="border-color: #666;" cellpadding="10">';
		$html .='<tr><td><strong>Company:</strong> </td><td>' . $compName . '</td></tr>';
		$html .='<tr><td><strong>Name:</strong> </td><td>' . $name . '</td></tr>';
		$html .='<tr><td><strong>Email:</strong> </td><td>' . $email . '</td></tr>';
		$html .='<tr><td><strong>Phone:</strong> </td><td>' . $phone . '</td></tr>';
		$html .='<tr><td><strong>Message:</strong> </td><td>' . $data . '</td></tr>';
		$html .='</table>';
		$html .='</div>';
	
		$config['protocol'] = "smtp";
		$config['smtp_host'] = "ssl://smtp.gmail.com";
		$config['smtp_port'] = "465";
		$config['smtp_user'] = "keelatomail@gmail.com";
		$config['smtp_pass'] = "dui9b123";
		$config['charset'] = "utf-8";
		$config['mailtype'] = "html";
		$config['newline'] = "\r\n";
	
		$this->load->library('email',$config);
			
		$this->email->from($email);
	
		$list = array('keelatomail@gmail.com');
		$this->email->to($list);
		$this->email->subject('สอบถามข้อมูล Bellavitagown');
		$this->email->message($html);
	
	
	
		if($this->email->send())
		{
	
			$status =true;
			$msg ='ส่งเมลล์เรียบร้อย';
			// 						}
		}
		else
		{
			$status =false;
			$msg = 'ไม่สามารถส่งเมลล์ได้ กรุณาส่งอีกครั้ง';
		}
		//echo $this->email->print_debugger();
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
}