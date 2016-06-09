<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cekkrs extends CI_Controller {

	public function index($id)
	{
		
		$this->load->view('dosen/tampil_cek');
	}
}
