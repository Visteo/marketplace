<?php 
class Logout extends CI_Controller {
    
    public function index() {

        //mrnghancurkan tiket yang td di loginkan
        $this->session->unset_userdata("id_admin");
        $this->session->unset_userdata("username");
        $this->session->unset_userdata("nama_admin");


        //pesan di layar
		$this->session->set_flashdata('pesan_sukses', 'Anda Berhasil Logout');
        //redirect ke halaman login
        redirect('/', 'refresh');
    }
}