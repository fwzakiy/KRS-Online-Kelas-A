<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Krs extends CI_Controller {

	public function index()
	{
		$this->model_security->getsecurity();
		$nim=$this->session->userdata('id');
		$data['krs'] = $this->db->query('select pilihan.id as idpilihan, matakuliah.nama, pilihan.status, matakuliah.id, matakuliah.semester, matakuliah.sks, matakuliah.kode from pilihan join matakuliah on pilihan.id_matakuliah=matakuliah.id where pilihan.id_mahasiswa='.$nim);
			
		//$this->load->model('model_biodatakrs');
		//$isi['data'] = $this->Model_biodatakrs->index();
		$user = $this->session->userdata('noink');

		$this->load->view('mahasiswa/krs_tampilan',$data);
	}

	public function delete($id)
	{
		$this->db->delete('pilihan', array('id'=>$id));
		redirect('mahasiswa/krs');
	}
}
