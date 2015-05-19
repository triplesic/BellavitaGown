<?php
Class order_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public  function insertOrder($data)
	{
		
		$this->db->set('ORDER_CFM_TIME', 'NOW()', FALSE);
		return $this->db->insert('order', $data);
		
	}
	
	public  function insertOrderDTL($data)
	{

		return $this->db->insert('order_dtl', $data);
	
	}
	
	public  function getOrder($userID)
	{
	
		$this -> db -> select('o.ORDER_ID,o.ORDER_PRICE_TOTAL,o.ORDER_CFM_TIME,o.ORDER_PAY_TIME,o.ORDER_PAY_SLIP,o.ORDER_PST_CODE,o.ORDER_GNR_NUMBER');
		$this -> db -> from('order AS o');
		$this -> db -> where('o.USER_ID = ' . $userID );
		$this->db->order_by('o.ORDER_ID', 'asc');
		$query = $this -> db -> get();
		
		return $query->result();
	
	}
	
	public  function getOrderDetail($orderGNRID)
	{
	
		$this -> db -> select('od.QUANTITY,o.PRICE,o.TOTAL,pd.COLOR,pd.DETAIL,pd.IMAGE_NAME,s.SIZE_NM');
		$this -> db -> from('order_dtl AS od');
		$this -> db -> join('product_dtl AS pd' , 'od.PRODUCT_DTL_ID = pd.PRODUCT_DTL_ID', 'left');
		$this -> db -> join('size AS s' , 'pd.SIZE_ID = s.SIZE_ID', 'left');
		$this -> db -> where('od.ORDER_GRN_NUMBER = ' ."'".$orderGNRID."'");
		$this->db->order_by('od.ORDER_DTL_ID', 'asc');
		$query = $this -> db -> get();
	
		return $query->result();
	
	}
}