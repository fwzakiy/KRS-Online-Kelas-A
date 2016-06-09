<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_isikrs extends CI_model {

	
	public function index()
	{
		//$data = "SELECT user.nim, mahasiswa.nama FROM user INNER JOIN mahasiswa ON mahasiwa.nim = user.nim";
		return $this->db->query($data);
	}



}

