<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends BASE_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('products_model','',TRUE);
	}
	
	public function detail()
	{
		
		$product_DTL_ID = $this->input->get('pdID');
		$product_ID = $this->input->get('pID');
		
		$data['productDetail'] = $this->products_model->getProductDetail($product_DTL_ID);
		//$this -> db -> select('p.PRODUCT_ID,p.PRODUCT_NM_TH,p.PRODUCT_NM_EN,p.PRICE,pd.PRODUCT_DTL_ID,pd.IMAGE_NAME,pd.DETAIL,pd.COLOR,pd.SIZE,s.QUANTITY');

		$data['productList'] = $this->products_model->getProduct($product_ID);
		
		$this->render_page('product_detail_view', $data);

	}
	
	
}
