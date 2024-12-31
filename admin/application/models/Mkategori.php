<?php
class Mkategori extends CI_Model {
    function tampil() {

        $q = $this->db->get("kategori");

        $d = $q->result_array();

        return $d;
    }

	function simpan($inputan) {
		//kita urusi dulu upload foto_kategori
		$config['upload_path'] = $this->config->item("assets_kategori");
		$config['allowed_types'] = 'gif|jpg|png';

		$this->load->library('upload', $config);

		//adegan mengupload, foto kategori
		$ngupload = $this->upload->do_upload("foto_kategori");

		//jika ngupload, maka dapatkan nama fotonya utk ditampung ke db
		if ($ngupload) {
			$inputan['foto_kategori'] = $this->upload->data("file_name");
		}

		//query simpan data ke tabel kategori
		//insert into kategori 
		$this->db->insert('kategori', $inputan); 
	}

	function hapus($id_kategori) {
		
		//delete from kategori where id_kategori=5
		$this->db->where('id_kategori', $id_kategori);
		$this->db->delete('kategori');

	}

	function detail($id_kategori) {

		//select from kategori where id_kategori
		$this->db->where('id_kategori', $id_kategori);
		$q = $this->db->get('kategori');
		$d = $q->row_array();

		return $d;
	}

	function edit($inputan, $id_kategori) {
		//ngurusi foro_kategori jika pengguna upload foto

		$config['upload_path'] = $this->config->item("assets_kategori");
		$config['allowed_types'] = 'gif|jpg|png';
		$this->load->library("upload", $config);

		//adegan ngupload
		$ngupload = $this->upload->do_upload("foto_kategori");

		//jika ngupload
		if ($ngupload) {
			$inputan['foto_kategori'] = $this->upload->data("file_name");
		}

		//query update data sesuai id_kategori
		$this->db->where('id_kategori', $id_kategori);
		$this->db->update('kategori', $inputan);
	}
}
