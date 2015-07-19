<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('users_model','',TRUE);
	}
	
	public function info()
	{
		$data['popup'] = false;
		$this->render_page('user_view',$data);
	}
	
	public function manage()
	{
		$data['popup'] = false;
		$this->render_page('manageuser_view',$data);
	}
	
	public function editUser()
	{
		$firstname = $this->input->post('firstname');
		$lastname = $this->input->post('lastname');
		$tel = $this->input->post('tel');
		$address = $this->input->post('address');
		$session_data = $this->session->userdata('logged_in');
		$userId = $session_data['userId'];
		
		$userInfo = array(
				'FIRSTNAME' => $firstname,
				'LASTNAME' => $lastname,
				'TEL' => $tel,
				'ADDRESS' => $address,
				'UPDATED_DATE' => date('Y-m-d H:i:s',now())
		);
		
		$result = 	$this->users_model->editUser($userInfo,$userId);
		
		if($result==1)
		{

				$status = true;
				$msg = 'แก้ไขข้อมูลเรียบร้อย';
		}
		else
		{
				$status = false;
				$msg = 'ไม่สามารถแก้ไขข้อมูลได้';
		}
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
	
	public function changePass()
	{
		$oldPass = $this->input->post('oldPass');
		$newPass = $this->input->post('newPass');
		
		$session_data = $this->session->userdata('logged_in');
		$userName = $session_data['userName'];
		$userId = $session_data['userId'];
		$result = $this->users_model->login($userName,$oldPass);
	
		if($result)
		{
			$data = array(
					'PASSWORD' => MD5($newPass),
					'UPDATED_DATE' => date('Y-m-d H:i:s',now())
			);
			$result = $this->users_model->editPass($data,$userId);
			
			if($result == 1)
			{
				$status = true;
				$msg = 'แก้ไขข้อมูลเรียบร้อย';
			}else 
			{
				$status = false;
				$msg = 'ไม่สามารถแก้ไขรหัสผ่านได้';
			}
		}
		else
		{
			$status = false;
			$msg = 'คุณใส่รหัสผ่านเก่าผิด';
		}
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
	
	public function userData()
	{
		$word = $this->input->post('word');
		
		$result = $this->users_model->selectData($word);
		$count = count($result);
		$output = array();
		$i =0;
		
// 		$responce->draw = 1;
// 		$responce->recordsTotal =  $count;
// 		$responce->recordsFiltered = $count;
		
		foreach($result as $r) {
// 			$responce->data[$i]=array($r->USER_ID,$r->USER_TYPE,$r->USERNAME,$r->FIRSTNAME,$r->LASTNAME,$r->TEL,$r->EMAIL,$r->ADDRESS,$r->SESSION_ACTIVATE,$r->CREATED_DATE,$r->STATUS);
			$responce->data[$i]=$r;
			$i++;
		}	
		
		echo json_encode($responce);
	}
	
	public function changeStatus()
	{
		$id = $this->input->post('id');
		$status = $this->input->post('st');
		
	
		$userInfo = array(
				'STATUS' => $status,
		);
	
		$result = 	$this->users_model->editUser($userInfo,$id);
	
		if($result==1)
		{
	
			$status = true;
			$msg = 'แก้ไขข้อมูลเรียบร้อย';
		}
		else
		{
			$status = false;
			$msg = 'ไม่สามารถแก้ไขข้อมูลได้';
		}
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
}
