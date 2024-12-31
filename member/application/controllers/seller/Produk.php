<?php
class Produk extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata("id_member")) {
            $this->session->set_flasdata('pesan_gagal', 'Anda harus Login');
            redirect('','refresh');
        }
    }

    function index(){

        //menambahkan id_member yang login
        $id_member = $this->session->userdata("id_member");
        $this->load->model('Mproduk');
        $data["produk"] = $this->Mproduk->produk_member($id_member);

        $this->load->view('header');
        $this->load->view('seller/produk_tampil', $data);
        $this->load->view('footer');
    }

    function tambah() {

        $this->load->model('Mkategori');
        $this->load->model('Mproduk');
        $data['kategori'] = $this->Mkategori->tampil();

        $inputan = $this->input->post();
        if ($inputan) {
            $this->Mproduk->simpan($inputan);
            $this->session->set_flashdata('pesan_sukses', 'produk tersimpan');
            redirect('seller/produk','refresh');
        }

        $this->load->view('header');
        $this->load->view('seller/produk_tambah', $data);
        $this->load->view('footer');
    }

    function edit($id_produk) {
        $this->load->model('Mproduk');
        $data['produk'] = $this->Mproduk->detail($id_produk);

        $this->load->model('Mkategori');
        $data['kategori'] = $this->Mkategori->tampil();

        $inputan = $this->input->post();
        if ($inputan) {
            $this->Mproduk->ubah($inputan, $id_produk);
            $this->session->set_flashdata('pesan_sukses', 'produk tersimpan');
            redirect('seller/produk','refresh');
        }
        
        $this->load->view('header');
        $this->load->view('seller/produk_edit', $data);
        $this->load->view('footer');
    }

    function hapus($id_produk) {
        $this->load->model('Mproduk');
        $this->Mproduk->hapus($id_produk);

        $this->session->set_flashdata('pesan_sukses', 'pesan telah dihapus');
        redirect('seller/produk','refresh');
    }
}