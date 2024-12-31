<?php
class Kategori extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		//jika tidak ada tiket, makan disuruh login 
		if (!$this->session->userdata("id_admin")) {
			redirect('/', 'refresh');
		}
	}
	
    function index() {

        $this->load->model('Mkategori');

        $data['kategori'] = $this->Mkategori->tampil();

        $this->load->view('header');
        $this->load->view('kategori_tampil', $data);
        $this->load->view('footer');
    }

	function tambah() {

		//mendapatkan inputan dari formulir pakai $this->input->post()
		$inputan = $this->input->post();

		//pasang form validasi
		//form validasi nama kategori wajib diisi
		$this->form_validation->set_rules("nama_kategori", "Nama Kategori", "required");
		
		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");

		//jika ada inputan
		if($this->form_validation->run()==TRUE) {
			//panggil model kategori
			$this->load->model('Mkategori');
			//jalankan fungsi simpan()
			$this->Mkategori->simpan($inputan);

			//pesan dilayar
			$this->session->set_flashdata('pesan_sukses', 'Data kategori tersimpan');

			//redirect ke fitur kategori untuk tampil kategori
			redirect('kategori','refresh');
		}

		$this->load->view('header');
        $this->load->view('kategori_tambah');
        $this->load->view('footer');
	}

	function hapus ($id_kategori) {

		echo $id_kategori;

		//panggil model Mkategori
		$this->load->model('Mkategori');

		//jalankan fungsi hapus();
		$this->Mkategori->hapus($id_kategori);

		//pesan di layar
		$this->session->set_flashdata('pesan_sukses', 'kategori telah terhapus');

		//redirect ke kategori utk tampil data
		redirect('kategori','refresh');
	}

	function edit($id_kategori) {

		//1. tampilkan dulu kategori yg lama
		$this->load->model("Mkategori");
		$data['kategori'] = $this->Mkategori->detail($id_kategori);

		//2. baru mikir ngubah data
		$inputan = $this->input->post();

		//form validasi nama kategori wajib diisi
		$this->form_validation->set_rules("nama_kategori", "Nama Kategori", "required");
		
		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");

		//jika ada imputan
		if ($this->form_validation->run()==TRUE) {
			//jlnkan fungsi edit
			$this->Mkategori->edit($inputan, $id_kategori);

			//pesan
			$this->session->set_flashdata('pesan_sukses', 'kategori telah diubah');

			//redirect
			redirect('kategori','refrech');
		}


		$this->load->view('header');
        $this->load->view('kategori_edit', $data);
        $this->load->view('footer');
	}
}
    