<?php
Class Products_Model extends CI_Model
{
function getNewProduct($lang)
 {
 	$sqlStr = '';
 	if($lang == "english")
 	{
 		$sqlStr = 'p.PRODUCT_ID,p.PRODUCT_NM_EN PRODUCT_NM,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME';
 	}
 	else
 	{
 		$sqlStr = 'p.PRODUCT_ID,p.PRODUCT_NM_TH PRODUCT_NM,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME';
 	}
 	
   $this -> db -> select($sqlStr);
   $this -> db -> from('product AS p');
   $this -> db -> join('product_dtl AS pd' , 'p.PRODUCT_ID = pd.PRODUCT_ID', 'left');
   $this -> db -> where('pd.IMAGE_NAME != "" AND pd.IMAGE_NAME IS NOT NULL');
   $this->db->group_by('pd.PRODUCT_ID');
   $this->db->order_by('pd.PRODUCT_ID', 'desc');
   
   $this -> db -> limit(6);

   $query = $this -> db -> get();

     return $query->result();

 }
 
 function getProduct($productID)
 {
 	$this -> db -> select('p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME,pd.DETAIL,pd.COLOR_ID,pd.COLOR,sz.SIZE_ID,sz.SIZE_NM');
 	$this -> db -> from('product AS p');
 	$this -> db -> join('product_dtl AS pd' , 'p.PRODUCT_ID = pd.PRODUCT_ID', 'left');
 	$this -> db -> join('size AS sz' ,'sz.SIZE_ID = pd.SIZE_ID', 'left' );
 	$this -> db -> where('p.PRODUCT_ID = ' . "'" . $productID . "'");	
 	$this -> db -> group_by('pd.COLOR_ID');
 	$this->db->order_by('pd.PRODUCT_DTL_ID', 'desc');	
 	$query = $this -> db -> get();
 
 	return $query->result();
 
 }
 
function getProductDetail($product_DTL_ID, $lang)
 {
 		$sqlStr = '';
		if($lang == "english")
		{
			$sqlStr = 'p.PRODUCT_ID,p.PRODUCT_NM_EN PRODUCT_NM,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME,pd.DETAIL_EN DETAIL,pd.COLOR,pd.SIZE';
		}
		else
		{
			$sqlStr = 'p.PRODUCT_ID,p.PRODUCT_NM_TH PRODUCT_NM,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME,pd.DETAIL DETAIL,pd.COLOR,pd.SIZE';
		}

 	$this -> db -> select($sqlStr);
 	$this -> db -> from('product_dtl AS pd');
 	$this -> db -> join('product AS p' , 'p.PRODUCT_ID = pd.PRODUCT_ID', 'left');

 	$this -> db -> where('pd.PRODUCT_DTL_ID = '  . $product_DTL_ID );
 	
 	$query = $this -> db -> get();
 
 	return $query->result();
 
 }
 
 function getProductImg($productDTLID)
 {
 	$this -> db -> select('pdi.PRODUCT_DTL_IMG_NAME');
 	$this -> db -> from('product_dtl_image AS pdi');
 	$this -> db -> where('pdi.PRODUCT_DTL_ID = '  . $productDTLID );
 	$query = $this -> db -> get();
 	return $query->result();
 }
 
 function searchPD($text)
 {
 	$this -> db -> select('p.PRODUCT_NM_TH,pd.PRODUCT_DTL_ID,pd.SUGGEST_FLG,pd.IS_AVAILABLE_FLG,pdi.PRODUCT_DTL_IMG_NAME,c.COLOR_NM_TH');
 	$this -> db -> from('product AS p');
 	$this -> db -> join('product_dtl AS pd','p.PRODUCT_ID = pd.PRODUCT_ID', 'left');
 	$this -> db -> join('product_dtl_image AS pdi','pd.PRODUCT_DTL_ID = pdi.PRODUCT_DTL_ID', 'left');
 	$this -> db -> join('colors AS c','pd.COLOR_ID = c.COLOR_ID', 'left');
 	//  	if(!empty($text))
 		//  	{
 		//  	$this -> db -> where('USERNAME LIKE \''.$word.'\' OR FIRSTNAME LIKE \''.$word.'\'');
 		//  	}
 		
 	$query = $this -> db -> get();
 	return $query->result();
 }
 
}
?>