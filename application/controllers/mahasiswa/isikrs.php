<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Isikrs extends CI_Controller {

	public function  __construct()
	{
		parent:: __construct();
		$this->load->helper('form');
	}

	public function index()
	{
		
		//$this->load->view('mahasiswa/isi_krs');
		$this->model_security->getsecurity();
		$nim=$this->session->userdata('id');
		$isi['data'] = $this->db->query('select matakuliah.id, matakuliah.kode, matakuliah.nama, matakuliah.semester, matakuliah.sks from matakuliah left join pilihan on matakuliah.id=pilihan.id_matakuliah where matakuliah.id not in (select id_matakuliah from pilihan where id_mahasiswa='.$nim.') order by matakuliah.semester asc');
		$this->load->view('mahasiswa/isi_krs',$isi);
		
	}

	public function isi()
	{
		$cek = $this->input->post('cek');
		$totalsks = 0;
		foreach ($cek as $key => $value) {
			$totalsks += $this->db->where("id",$value)->select('sks')->get('matakuliah')->row()->sks;
		}
		print_r($totalsks);	
		if($totalsks <= $this->session->userdata('sks_asal')){
			foreach ($cek as $key => $value) {
				$this->db->insert('pilihan',array(
					'id_mahasiswa'=>$this->session->userdata('id'),
					'id_matakuliah'=>$value
					));
			}

			//echo "Data Berhasil Ditambahkan, Jumlah SKS : ".$totalsks;
			redirect('mahasiswa/krs');
		}
		else{
			$this->session->set_flashdata('error','kelebihan');
			redirect('mahasiswa/isikrs');
		}

		
	}
}
