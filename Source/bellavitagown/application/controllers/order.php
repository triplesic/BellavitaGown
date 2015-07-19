<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Order extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','',TRUE);
		$this->load->model('size_model','',TRUE);
		$this->load->model('order_model','',TRUE);
	}

	public function index()
	{
		$data['cartConten'] =  $this->cart->contents();
		$data['popup'] = false;
		$this->render_page('order_view',$data);
	}
	
	public function addCart()
	{
	
		$qty = $this->input->post('qty');
		$id = $this->input->post('id');
		$name = $this->input->post('name');
		$image = $this->input->post('image');
		$price = $this->input->post('price');
		$sizeID = $this->input->post('sizeID');
		$color = $this->input->post('color');
		$size = $this->input->post('size');
		
		$dataCart = array(
			
				'id'      => $id,
				'qty'     => 1,
				'price'   => 1,	
				'name'    => $name,
				'image'   => $image,
				'sizeID'  => $sizeID,
				'size'   => $size,
				'color'	  => $color,
				'sizeList' => $this->size_model->getProductSize($id)
		);

		$this->cart->insert($dataCart);		
		$cartTotal =  $this->cart->total();
		$cartItem = $this->cart->total_items();
		$cartConten =  $this->cart->contents();
		$cartAmount = count($cartConten);
		$status = true;
		
		echo json_encode(array('status' => $status, 'cartTotal' => $cartTotal,'cartItem' => $cartItem ,'conten' => $cartConten,'cartAmount' => $cartAmount));
	}
	
	public function deleteCart()
	{
	
		$rowID = $this->input->post('rowID');
		$data = array(
				'rowid' => $rowID,
				'qty' => 0
		);
		// Update cart data, after cancel.
		$this->cart->update($data);
		$status = true;
		echo json_encode(array('status' => $status));
	}
	
	
	
	
	public function confirmOrder()
	{
		
		$session_data = $this->session->userdata('logged_in');
		$userId = $session_data['userId'];

		do{
			$key = substr(md5(microtime().rand()),0,10);	
			$data = array(
					'ORDER_PRICE_TOTAL' => $this->cart->total(),
					'USER_ID' => $userId,
					'ORDER_GNR_NUMBER' => $key
			);			
		}while(!$this->order_model->insertOrder($data));
		
		foreach ($this->cart->contents() as $item)
		{
			$cartItem = array(
					'PRODUCT_DTL_ID' => $item['id'],
					'SIZE_ID' => $item['sizeID'],
					'QUANTITY' => $item['qty'],
					'TOTAL' => $item['total'],
					'PRICE' => $item['price'],
					'ORDER_GRN_NUMBER' => $key

			);
			
			$this->order_model->insertOrderDTL($cartItem);
		}
		$this->cart->destroy();
		$status = true;
		echo json_encode(array('status' => $status, 'message' => "สั่งซื้อเรียบร้อย"));
		
	}
	
	public function confirm()
	{
		$session_data = $this->session->userdata('logged_in');
		$userId = $session_data['userId'];
		
		$data['orderList'] = $this->order_model->getOrder($userId);
		$this->render_page('order_confirm_view',$data,false);
	}
	

	public function destroy()
	{
		$this->cart->destroy();
		
		$cartTotal =  $this->cart->total();
		$cartItem = $this->cart->total_items();
		$status = true;
		
		echo json_encode(array('status' => $status, 'cartTotal' => $cartTotal,'cartItem' => $cartItem ));
	}
	
	public function upload()
	{
		$upload_dir = "uploads/";
		if (isset($_FILES["myfile"])) {
			if ($_FILES["myfile"]["error"] > 0) {
				echo "Error: " . $_FILES["file"]["error"] . "<br>";
			} else {
				move_uploaded_file($_FILES["myfile"]["tmp_name"], $upload_dir . $_FILES["myfile"]["name"]);
				//echo "Uploaded File :" . $_FILES["myfile"]["name"];
				echo "<pre>";
				print_r($_POST);
				print_r($_FILES);
			}
		}
	}
	// สมหมายสลักเพรช
}