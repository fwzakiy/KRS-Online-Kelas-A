<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_security extends CI_model {

	public function getsecurity()
	{
		$noink = $this->session->userdata('noink');
		if(empty($noink))
		{
			$this->session->sess_destroy();
			redirect('login');
		}
	} 
}

