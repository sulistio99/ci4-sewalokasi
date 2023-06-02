<div class="col-md-12" style="font-weight: bold;">
    <!-- general form elements -->
    <div class="card card-primary">
        <div class="card-header text-center">
            <h3 class="card-title"><?= $title; ?></h3>
        </div>
        <div class="card-body">
            <table class="table table-sm">
                <tr>
                    <th>No.</th>
                    <th>Nama Pemilik</th>
                    <th>Nama tempat</th>
                    <th>Status</th>
                    <th>Harga</th>
                    <th>Alamat</th>
                    <th>Aksi</th>
                </tr>
                <?php $no = 1;
                foreach ($datahunian as $key => $value) { ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td><?= $value['nama_pemilik']; ?></td>
                        <td><?= $value['nama_hunian']; ?></td>
                        <td><?= $value['status_hunian']; ?></td>
                        <td><?= $value['harga_hunian']; ?></td>
                        <td><?= $value['alamat_hunian']; ?></td>
                        <td>
                            <a href="<?= base_url('Home/TambahTempat/' . $value['id_member']); ?>" class="btn btn-primary btn-sm btn-flat">Tambah</a>
                            <a href="<?= base_url('Home/UbahTempat/' . $value['id_member']); ?>" class="btn btn-warning btn-sm btn-flat">Ubah</a>

                        </td>
                    </tr>
                <?php } ?>
            </table>
        </div>
    </div>
</div>
<!-- /.card-body -->
<?php echo form_close() ?>
<!-- /.card -->