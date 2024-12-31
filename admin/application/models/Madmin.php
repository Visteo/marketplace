<?php
class Madmin extends CI_Model {

    function login($inputan) {
        $username = $inputan['username'];
        $password = $inputan['password'];
        $password = sha1($password);

        //cek ke database
        $this->db->where('username', $username);
        $this->db->where('password', $password);
        $q = $this->db->get('admin');
        $cekadmin = $q->row_array();

        //jika tdk kosong, maka ada 
        if (!empty($cekadmin)) {
            //membuat tiket bioskop 
            $this->session->set_userdata("id_admin", $cekadmin["id_admin"]);
            $this->session->set_userdata("username", $cekadmin["username"]);
            $this->session->set_userdata("nama_admin", $cekadmin["nama_admin"]);
            return "ada";
        }else {
            return "tidak ada";
        }
    }

    function ubah($inputan, $id_admin) {

        //jika tidak kosong password, maka enkripsi
        if (!empty($inputan["password"])) {
            $inputan['password'] = sha1($inputan['password']);
        } else {
            unset($inputan['password']);
        }

        $this->db->where('id_admin', $id_admin);
        $this->db->update('admin', $inputan);

        //krn akun  telah diubadh di database, maka tiket nya harus buat yang baru

        //dapatkan dulu data admin yang baru telah diupdate
        $this->db->where('id_admin', $id_admin);
        $q = $this->db->get('admin');
        $cekadmin = $q->row_array();

        //buat tiket lagi 
        $this->session->set_userdata("id_admin", $cekadmin["id_admin"]);
        $this->session->set_userdata("username", $cekadmin["username"]);
        $this->session->set_userdata("nama_admin", $cekadmin["nama_admin"]);
    }
}