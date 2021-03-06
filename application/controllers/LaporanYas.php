<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class LaporanYas extends CI_Controller {

	private $parents = 'LaporanYas';
	private $icon	 = 'fa fa-line-chart';
	var $table 		 = '';

	function __construct(){
		parent::__construct();

		is_login();
		get_breadcrumb();
		$this->load->model('M_'.$this->parents,'mod');
		$this->load->model('M_Tap');
		$this->load->library('form_validation');
		$this->load->library('Datatables'); 
	}

	public function index(){
 
		$this->breadcrumb->append_crumb('SIM Sekolah','Beranda');
		$this->breadcrumb->append_crumb($this->parents.' Total Kas',$this->parents);

		$data['title']	= $this->parents.' Kas | SIM Sekolah';
		$data['judul']	= $this->parents.' Kas';
		$data['icon']	= $this->icon;

        $this->template->views('Backend/'.$this->parents.'/v_'.$this->parents,$data);
	}

	function getAllData(){
		header('Content-Type:application/json');
		echo $this->mod->getAllData();
		// echo $this->db->last_query();
	}

	function Cetak(){
		 $awal = $this->input->post('awal');
		 $akhir = $this->input->post('akhir');

		 $this->db->where('tanggal >=',$awal);
		 $this->db->where('tanggal>=',$akhir); 
		 $a = $this->db->get('laporanyas')->result();

		 $print = $this->mod->Cetak_periode($a,$awal,$akhir);

		 if($print)
		 	$data['status'] = TRUE;
		 $data['status'] = FALSE;

		  $this->output->set_content_type('application/json')->set_output(json_encode($data));
	}

		function Detail($id){

		$this->load->helper('data');
		$this->breadcrumb->append_crumb('SIM Sekolah ',base_url());
		$this->breadcrumb->append_crumb($this->parents.' Kas',base_url('LaporanYas'));
		$this->breadcrumb->append_crumb('Detail Laporan Kas',$this->parents);

		$data['title']	= 'Detail '.$this->parents.' Kas | SIM Sekolah ';
		$data['judul']	= 'Detail '.$this->parents.' Kas';
		$data['icon']	= $this->icon;
		$data['isi']	= $this->M_Tap->get_laporan($id);

	$this->template->views('Backend/v_Detail',$data);

	}

}

/* End of file Beranda.php */
/* Location: ./application/controllers/Beranda.php */