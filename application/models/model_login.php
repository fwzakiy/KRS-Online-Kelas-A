<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_model {

	
	public function getlogin($n,$p)
	{
		$query = $this->db->query('select * from user where noink='.$n.' && password="'.$p.'"')->result_array();
		if(count($query)>0)
		{
			for ($i=0;$i<count($query);$i++) 
			{
				if($query[0]['level']==1){
					$rows = $this->db->query('select * from user join mahasiswa on user.id_user=mahasiswa.id_user where noink='.$n.' && password="'.$p.'"')->result_array();
				$sess = array('id'=>$rows[0]['id'],'noink' =>$rows[0]['noink'],
							  'level' =>$rows[0]['level'],
							  'nama'  =>$rows[0]['nama'],
							  'sks_asal' =>$rows[0]['sks_asal'],
							  'id_user' =>$rows[0]['id_user']);
				$this->session->set_userdata($sess);
				redirect('mahasiswa/home');
				
				//redirect('home');
				}
				else if($query[0]['level']==2){
					$rows = $this->db->query('select * from user join dosen on user.id_user=dosen.id_user where noink='.$n.' && password="'.$p.'"')->result_array();
					$sess = array('id'=>$rows[0]['id'],'noink' =>$rows[0]['noink'],
							  'level' =>$rows[0]['level'],
							  'nama'  =>$rows[0]['nama'],
							  'id_user' =>$rows[0]['id_user']);
				$this->session->set_userdata($sess);
					redirect('dosen/home');
					
					
				}
			}
		
		}
		else
		{
			$this->session->set_flashdata('info','maaf nomor induk atau password tidak sesuai');
			redirect('login');
		}
	}

	public function tampilkrs()
	{
		
	}
}

