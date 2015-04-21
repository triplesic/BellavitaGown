<?php
Class Products extends CI_Model
{
 function getNewProduct()
 {
   $this -> db -> select('p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.IMAGE_NAME');
   $this -> db -> from('product AS p');
   $this -> db -> join('product_dtl AS pd' , 'p.PRODUCT_ID = pd.PRODUCT_ID');
   $this->db->order_by('pd.UPDATED_DATE', 'desc');
   
   $this -> db -> limit(6);

   $query = $this -> db -> get();

     return $query->result();

 }
}
?>