<?php
Class Products_Model extends CI_Model
{
 function getNewProduct()
 {
   $this -> db -> select('p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME');
   $this -> db -> from('product AS p');
   $this -> db -> join('product_dtl AS pd' , 'p.PRODUCT_ID = pd.PRODUCT_ID', 'left');
   $this->db->group_by('pd.PRODUCT_ID');
   $this->db->order_by('pd.UPDATED_DATE', 'desc');
   
   $this -> db -> limit(6);

   $query = $this -> db -> get();

     return $query->result();

 }
 
 function getProduct($product_ID)
 {
 	$this -> db -> select('p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME,pd.DETAIL,pd.COLOR_ID,pd.COLOR,s.QUANTITY,sz.SIZE_ID,sz.SIZE_NM');
 	$this -> db -> from('product AS p');
 	$this -> db -> join('product_dtl AS pd' , 'p.PRODUCT_ID = pd.PRODUCT_ID', 'left');
 	$this -> db -> join('stock AS s' , 's.PRODUCT_DTL_ID = pd.PRODUCT_DTL_ID', 'left');
 	$this -> db -> join('size AS sz' ,'sz.SIZE_ID = pd.SIZE_ID', 'left' );
 	$this -> db -> where('p.PRODUCT_ID = ' . "'" . $product_ID . "'");	
 	$this -> db -> group_by('pd.COLOR_ID');
 	$this->db->order_by('pd.PRODUCT_DTL_ID', 'desc');	
 	$query = $this -> db -> get();
 
 	return $query->result();
 
 }
 
 function getProductDetail($product_DTL_ID)
 {
 	$this -> db -> select('p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME,pd.DETAIL,pd.COLOR,pd.SIZE,s.QUANTITY');
 	$this -> db -> from('product_dtl AS pd');
 	$this -> db -> join('product AS p' , 'p.PRODUCT_ID = pd.PRODUCT_ID', 'left');
 	$this -> db -> join('stock AS s' , 's.PRODUCT_DTL_ID = pd.PRODUCT_DTL_ID', 'left');
 	$this -> db -> where('pd.PRODUCT_DTL_ID = '  . $product_DTL_ID );
 	
 	$query = $this -> db -> get();
 
 	return $query->result();
 
 }
}
?>