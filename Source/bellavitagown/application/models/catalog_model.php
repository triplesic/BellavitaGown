<?php
Class Catalog_Model extends CI_Model
{
	public function __construct() {
		$this->load->database();
	}

	function getCatalogDetail($catalog_ID)
	{
		$this -> db -> select('c.CATALOG_NAME,p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME');
		$this -> db -> from('catalog AS c');
		$this -> db -> join('product AS p' , 'p.CATALOG_ID = c.CATALOG_ID');
		$this -> db -> join('Product_dtl AS pd' , 'pd.PRODUCT_ID = p.PRODUCT_ID');
		$this -> db -> where('c.CATALOG_ID = ' . "'" . $catalog_ID . "'");	
		$this->db->order_by('pd.PRODUCT_ID', 'desc');
		$query = $this -> db -> get();
	
		return $query->result();
	
	}
	
	function getAll()
	{
		$query = $this->db->get('catalog');
		return $query->result_array();
	}
}
?>