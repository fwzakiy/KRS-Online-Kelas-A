<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	
	public function index()
	{
		$this->load->view('tampilan_login');
	}

	public function getlogin()
	{
		$n = $this->input->post('noink');
		$p = $this->input->post('password');
		$this->load->model('model_login');	
		$this->model_login->getlogin($n,$p);	
	}
}

