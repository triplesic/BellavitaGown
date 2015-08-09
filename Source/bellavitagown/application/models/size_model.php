<?php
Class Size_Model extends CI_Model
{
 function getProductSize($productDTLID)
 {
 	
   $this -> db -> select('s.SIZE_ID,s.SIZE_NM');
   $this -> db -> from('product_dtl_size AS p');
   $this -> db -> join('size AS s' , 's.SIZE_ID = p.SIZE_ID', 'left');
   $this -> db -> where('p.PRODUCT_DTL_ID = ' . $productDTLID );
   $this -> db -> order_by('s.SIZE_ID', 'asc');
   $query = $this -> db -> get();

   return $query->result();

 }
}
?>