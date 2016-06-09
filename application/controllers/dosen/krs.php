<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Krs extends CI_Controller {


	public function index()
	{
		$this->model_security->getsecurity();
		$data['mahasiswa']=$this->db->query('select * from mahasiswa where dosen_id='.$this->session->userdata('id'));
		print_r($this->session->userdata('id'));
		$this->load->view('dosen/krs_tampilan', $data);
	}
	public function cekkrs($id){
		$this->model_security->getsecurity();
		$data['krs'] = $this->db->query('select pilihan.id as idpilihan, pilihan.id_mahasiswa, matakuliah.nama, pilihan.status, matakuliah.id, matakuliah.semester, matakuliah.sks, matakuliah.kode from pilihan join matakuliah on pilihan.id_matakuliah=matakuliah.id where pilihan.id_mahasiswa='.$id);
		$this->load->view('dosen/cekkrs', $data);
	}
	public function setujui($id){
		$nim=$_POST['nim'][0];
		print_r($nim);
		$data=array(
			'status'=>1);
		$this->db->where('id', $id);
		$this->db->update('pilihan', $data);
		redirect('http://localhost/krsonline/index.php/dosen/krs/cekkrs/'.$nim.'/');
	}
}
