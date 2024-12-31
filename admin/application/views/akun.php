<div class="container mt-5">
    <h5>Ubah Akun</h5>
        <div class="row">
            <div class="col-md-4">
                <form method="post">
                    <div class="mb-3">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" value="<?php echo set_value("username",$this->session->userdata("username")) ?>">
                        <span class="small text-danger">
                            <?php echo form_error("username") ?>
                        </span>
                    </div>
                    <div class="mb-3">
                        <label>Password</label>
                        <input type="text" name="password" class="form-control">
                        <p class="text-muted">kosongkan jika password tidak diubah</p>
                    </div>
                    <div class="mb-3">
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama_admin" class="form-control" value="<?php echo set_value("nama_admin",$this->session->userdata("nama_admin")) ?>">
                        <span class="small text-danger">
                            <?php echo form_error("nama_admin") ?>
                        </span>
                    </div>
                    <button class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>