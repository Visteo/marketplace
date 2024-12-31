<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$inputan = $this->input->post();

		//form validasi username dan password wajib diisi
		$this->form_validation->set_rules("username", "Username", "required");
		$this->form_validation->set_rules("password", "Password", "required");

		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");

		//pakai validasinya
		if ($this->form_validation->run()==TRUE) {
			$this->load->model('Madmin');
			$output = $this->Madmin->login($inputan);

			if ($output=="ada") {

				//pesan
			$this->session->set_flashdata('pesan_sukses', 'Berhasil LOGIN');
				redirect('home', 'refresh');
			}else {
				//pesan
			$this->session->set_flashdata('pesan_gagal', 'Gagal LOGIN');
				redirect('/', 'refresh');
			}
		}

		$this->load->view('login');
	}
}
