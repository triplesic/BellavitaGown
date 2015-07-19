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

		$inquiry_data = $this->session->userdata('inquiry');
		$session_data = $this->session->userdata('logged_in');		
		$data['userType'] = $session_data['userType'];
		$data['firstName'] = $session_data['firstName'];
		$data['lastName'] = $session_data['lastName'];
		$data['popup'] = '0';
		
		$this->render_page('login_view',$data);				
	}
	
	function check_database()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$popup = $this->input->post('popup');
		$result = $this->users_model->login($username, $password);
			
		if($result)
		{
			$sess_array = array();
			foreach($result as $row)
			{
				$sess_array = array(
						'userId' => $row->USER_ID,
						'userName' => $row->USERNAME,
						'userType' => $row->USER_TYPE,
						'firstName' => $row->FIRSTNAME,
						'lastName' => $row->LASTNAME,
						'tel' => $row->TEL,
						'email' => $row->EMAIL,
						'address' => $row->ADDRESS,
				);
				$this->session->set_userdata('logged_in',$sess_array);
			}
			$status =true;
			$msg = '';
		}
		else
		{
			$status =false;
			$msg = 'ไม่สามารถเข้าสู่ระบบได้กรุณาลองใหม่อีกครั้ง';
		}
		
		echo json_encode(array('status' => $status, 'msg' => $msg,'popup' => $popup));
	}
	

	function register()
	{
		$firstName = $this->input->post('firstName');
		$lastName = $this->input->post('lastName');
		$email = $this->input->post('email');
		$password = $this->input->post('password');
		$address = $this->input->post('address');
		$sessionID = random_string('unique',40);
		
			$userInfo = array(
					'USERNAME' => $email,
					'PASSWORD' => MD5($password),
					'FIRSTNAME' => $firstName,
					'LASTNAME' => $lastName,
					'EMAIL' => $email,
					'ADDRESS' => $address,
					'SESSION_ID' => $sessionID,
					'CREATED_DATE' => date('Y-m-d H:i:s',now())
			);			
			$result = 	$this->users_model->register($userInfo);	
			if($result)
			{
				if($this -> sendActivateMail($email,$sessionID))
				{
					$status = true;
					$msg = 'สมัครสมาชิกเรียบร้อยแล้วกรุณายืนยันการสมัครสมาชิกที่เมลล์ของคุณ';
				}
			}
			else
			{
				$status = false;
			}
			echo json_encode(array('status' => $status, 'msg' => $msg));
	}
	
	function sendActivateMail($email,$sessionID)
	{
		$html ='<div>';
		$html .= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ยินดีต้อนรับสู่ระบบสมาชิกค่ะ<br/><br/>';
		$html .= 'เมื่อท่านลงทะเบียนเสร็จแล้วท่านจะสามารถใช้อีเมล และรหัสผ่านที่ท่านกำหนดเพื่อลงชื่อเข้าสู่เวบไซต์<br/>';
		$html .= 'กรุณายินยันความเป็นเจ้าของอีเมล์และบัญชีสมาชิกของท่านโดยคลิกลิงค์ด้านล่างนี้<br/>';
		$html .= '<a href="'.base_url().'login/activate/json?sId='.$sessionID.'" title="ยืนยันการสมัครสมาชิก">ยืนยันการสมัครสมาชิก</a>';
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
		
		$list = array($email);
		$this->email->to($list);
		$this->email->subject('ยืนยันการสมัครสมาชิก');
		$this->email->message($html);
	
		if($this->email->send())
		{
		
			return true;

		}
		else
		{
			return false;

		}

	}
	function activate()
	{
		$sessionId = $this->input->get('sId');	
		if($this->users_model->activate($sessionId) == 1 )
		{
			$data['activateMessage'] = 'ยืนยันการสมัครสมาชิกเรียบร้อย';
		}else {
			$data['activateMessage'] = 'ไม่สามารถยีนยันการสมัครสมาชิกได้';
		}
		$data['popup'] = false;
		$this->render_page('activated_view',$data);		
	}
	

	function reset()
	{
		try
		{
		$email = $this->input->post('resetMail');
		$newPass = random_string('unique',5);		
		
		
		$html ='<div>';
		$html .= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;โปรดตรวจสอบข้อมูลด้วยความรอบคอบค่ะ<br/><br/>';
		$html .= 'คุณได้ทำการ reset รหัสผ่านของเวบไซต์ รหัสผ่านใหม่ของคุณคือ <br/>';
		$html .= '<b>'.$newPass.'</b>';
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
		
		$list = array($email);
		$this->email->to($list);
		$this->email->subject('ยืนยันการสมัครสมาชิก');
		$this->email->message($html);
		
		
		$this->users_model->resetPassword($email,md5($newPass));	
		$this->email->send();
				
				$status = true;
				$msg = 'รีเซ็ตรหัสผ่านเรียบร้อย โปรดตรวจสอบอีเมลล์ของคุณ';
			
			
		
		
		}catch(Exception $e)
		{
    		$status = false;
			$msg = $e.$msg;
		}
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
	
	function logout()
	{
		$this->session->unset_userdata('logged_in');
		//session_destroy();
		redirect('home', 'refresh');
		//header("Location: home");
	}
}
