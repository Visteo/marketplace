<?php
class Akun extends CI_Controller {

    function __construct()
	{
		parent::__construct();

		//jika tidak ada tiket, makan disuruh login 
		if (!$this->session->userdata("id_member")) {
			redirect('/', 'refresh');
		}
	}
    
    public function index() 
    {
        $this->load->model('Mongkir');
        $data['distrik'] = $this->Mongkir->tampil_distrik();

        $inputan = $this->input->post();

        //form validasi nama kategori wajib diisi
		$this->form_validation->set_rules("email_member", "Email", "required");
        $this->form_validation->set_rules("nama_member", "Nama Member", "required");
        $this->form_validation->set_rules("alamat_member", "alamat Member", "required");
        $this->form_validation->set_rules("wa_member", "WA Member", "required");
        $this->form_validation->set_rules("kode_distrik_member", "Kode Distrik Member", "required");
		$this->form_validation->set_message("required", "%s wajib diisi");

        if ($this->form_validation->run()==TRUE) {

            $this->load->model('Mmember');
            $id_member = $this->session->userdata("id_member");

            $kode_distrik_member = $this->input->post("kode_distrik_member");
            $detail = $this->Mongkir->detail_distrik($kode_distrik_member);
            $inputan["nama_distrik_member"] = $detail['type']." ".$detail["city_name"]." ".$detail["province"];
            $this->Mmember->ubah($inputan, $id_member);

            $this->session->set_flashdata('pesan_sukses', 'Akun telah diubah');
            redirect('home', 'refresh');
        }
        $this->load->view('header');
        $this->load->view('akun', $data);
        $this->load->view('footer');
    }
}