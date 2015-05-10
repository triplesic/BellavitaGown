<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Order extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','',TRUE);
		
	}

	public function index()
	{
		$data['cartConten'] =  $this->cart->contents();
		$this->render_page('order_view', $data);
	}
	
	public function addOrder()
	{
	
		$qty = $this->input->post('qty');
		$id = $this->input->post('id');
		$name = $this->input->post('name');
		$image = $this->input->post('image');
		$price = $this->input->post('price');
		
		$size = "L";
		$color = "red";
		
		$dataCart = array(
				'id'      => $id,
				'qty'     => $qty,
				'price'   => $price,
				'total'	 => $qty*$price,	
				'name'    => $name,
				'image'   => $image,
				'options' => array('Size' => $size, 'Color' => $color)
		);

		$this->cart->insert($dataCart);
		
		$cartTotal =  $this->cart->total();
		$cartItem = $this->cart->total_items();
		$cartConten =  $this->cart->contents();
		$cartAmount = count($cartConten);
		$status = true;
		
		echo json_encode(array('status' => $status, 'cartTotal' => $cartTotal,'cartItem' => $cartItem ,'conten' => $cartConten,'cartAmount' => $cartAmount));
	}
	
	public function destroy()
	{
		$this->cart->destroy();
		
		$cartTotal =  $this->cart->total();
		$cartItem = $this->cart->total_items();
		$status = true;
		
		echo json_encode(array('status' => $status, 'cartTotal' => $cartTotal,'cartItem' => $cartItem ));
	}
	
	
}