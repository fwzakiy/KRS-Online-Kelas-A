<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bimbingan extends CI_Controller {

	public function index()
	{
		$this->model_security->getsecurity();
		$id=$this->session->userdata('id_user');
		$data['list1']=$this->db->query("select bimbingan.id_penerima, bimbingan.id_pengirim, bimbingan.pesan, bimbingan.tanggal, dosen.nama from bimbingan left join dosen on bimbingan.id_penerima=dosen.id_user  where id_pengirim=".$id."  order by tanggal desc")->result();
		$data['list2']=$this->db->query("select bimbingan.id_penerima, bimbingan.id_pengirim, bimbingan.pesan, bimbingan.tanggal, dosen.nama from bimbingan left join dosen on bimbingan.id_pengirim=dosen.id_user  where  id_penerima=".$id." order by tanggal desc")->result();
		$data['list']=array_merge($data['list1'], $data['list2']);
		$data['dosen']=$this->db->query('select dosen.nama, dosen.id_user from dosen join mahasiswa on mahasiswa.dosen_id=dosen.id where mahasiswa.id_user='.$this->session->userdata('id_user'));
		$this->load->view('mahasiswa/bimbingan_tampilan', $data);

	}
	public function kirimpesan()
	{
		$mahasiswa=$this->input->post('nim');
		$pesan=$this->input->post('pesan');
		$data=array(
			'id_pengirim' => $this->session->userdata('id_user'),
			'id_penerima' => $mahasiswa,
			'pesan' => $pesan
			);
		$this->db->insert('bimbingan', $data);
		$id=$this->session->userdata('id_user');
		$data['list1']=$this->db->query("select bimbingan.id_penerima, bimbingan.id_pengirim, bimbingan.pesan, bimbingan.tanggal, dosen.nama from bimbingan left join dosen on bimbingan.id_penerima=dosen.id_user  where id_pengirim=".$id."  order by tanggal desc")->result();
		$data['list2']=$this->db->query("select bimbingan.id_penerima, bimbingan.id_pengirim, bimbingan.pesan, bimbingan.tanggal, dosen.nama from bimbingan left join dosen on bimbingan.id_pengirim=dosen.id_user  where  id_penerima=".$id." order by tanggal desc")->result();
		$data['list']=array_merge($data['list1'], $data['list2']);
		$data['dosen']=$this->db->query('select dosen.nama, dosen.id_user from dosen join mahasiswa on mahasiswa.dosen_id=dosen.id where mahasiswa.id_user='.$this->session->userdata('id_user'));
		$this->load->view('mahasiswa/bimbingan_tampilan', $data);
	}
}


