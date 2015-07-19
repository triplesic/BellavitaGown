<?php
Class Users_Model extends CI_Model
{
 function login($username, $password)
 {
   $this -> db -> select('USER_ID,USER_TYPE,USERNAME,FIRSTNAME,LASTNAME,TEL,EMAIL,ADDRESS');
   $this -> db -> from('users');
   $this -> db -> where('USERNAME', $username);
   $this -> db -> where('PASSWORD', MD5($password));

   $query = $this -> db -> get();

   if($query -> num_rows() == 1)
   {
     return $query->result();
   }
   else
   {
     return false;
   }
 }
 
 public  function register($data)
 {
 	return $this->db->insert('users', $data);
 }
 
 public function activate($sId)
 {
 	$data = array(
 			'SESSION_ACTIVATE' => 1,
			'UPDATED_DATE' =>  date('Y-m-d H:i:s',now())
 	);
 	$this->db->where('SESSION_ID', $sId);
 	$this->db->where('SESSION_ACTIVATE !=', 1);
 	$result = $this->db->update('users', $data);
 	return $this->db->affected_rows();
 }
 
 public function resetPassword($email,$password)
 {
 	try{
 	$data = array(
 			'PASSWORD' => $password,
 			'UPDATED_DATE' =>  date('Y-m-d H:i:s',now())
 	);
 	$this->db->where('USERNAME', $email);
 	$this->db->update('users', $data);
 	}catch (Exception $ex)
 	{
 		throw $ex;
 	}
 }
 
 public function updateUser($sId)
 {
 	$data = array(
 			'SESSION_ACTIVATE' => 1,
 			'UPDATED_DATE' =>  date('Y-m-d H:i:s',now())
 	);
 	$this->db->where('SESSION_ID', $sId);
 	$this->db->where('SESSION_ACTIVATE !=', 1);
 	$result = $this->db->update('users', $data);
 	return $this->db->affected_rows();
 }
 
 public function editUser($data,$userId)
 {
 	$this->db->where('USER_ID', $userId);
 	$result = $this->db->update('users', $data);
 	return $this->db->affected_rows();
 }
 
 public function editPass($data,$userId)
 {
 	$this->db->where('USER_ID', $userId);
 	$result = $this->db->update('users', $data);
 	return $this->db->affected_rows();
 }
 
 function selectData($word)
 {
 	$this -> db -> select('USER_ID,USER_TYPE,USERNAME,FIRSTNAME,LASTNAME,TEL,EMAIL,ADDRESS,SESSION_ACTIVATE,CREATED_DATE,STATUS');
 	$this -> db -> from('users');
 	
//  	if(!empty($word))
//  	{
//  	$this -> db -> where('USERNAME LIKE \''.$word.'\' OR FIRSTNAME LIKE \''.$word.'\'');
//  	}
 	
 	$query = $this -> db -> get();
 	return $query->result();

 }
}
?>