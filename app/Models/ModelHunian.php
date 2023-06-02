<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelHunian extends Model
{
  protected $table = 'tb_hunian';
  public function AllData()
  {
    return $this->db->table('tb_hunian')
      ->join('tb_kategori', 'tb_kategori.id_kategori=tb_hunian.id_kategori')
      ->orderBy('id_hunian', 'DESC')
      ->get()->getResultArray();
  }

  public function AllDataLimit()
  {
    return $this->db->table('tb_hunian')
      ->limit(5)
      ->orderBy('id_hunian', 'DESC')
      ->get()->getResultArray();
  }

  public function AllDataGambar($id_hunian)
  {
    return $this->db->table('tb_gambar')
      ->where('id_hunian', $id_hunian)
      ->get()->getResultArray();
  }

  public function AllDataGambarHunian($id_hunian)
  {
    return $this->db->table('tb_hunian')
      ->where('id_hunian', $id_hunian)
      ->get()->getResultArray();
  }

  public function DetailData($id_hunian)
  {
    return $this->db->table('tb_hunian')
      ->join('tb_kategori', 'tb_kategori.id_kategori=tb_hunian.id_kategori')
      ->where('id_hunian', $id_hunian)
      ->get()->getRowArray();
  }

  public function AllDetailData($id_hunian)
  {
    return $this->db->table('tb_gambar')
      ->where('id_hunian', $id_hunian)
      ->get()->getResultArray();
  }

  public function AddData($data)
  {
    $this->db->table('tb_hunian')
      ->insert($data);
  }

  public function AddDataGambar($data)
  {
    $this->db->table('tb_gambar')
      ->insert($data);
  }

  public function UpdateData($data)
  {
    $this->db->table('tb_hunian')
      ->where('id_hunian', $data['id_hunian'])
      ->update($data);
  }

  public function DeleteData($data)
  {
    $this->db->table('tb_hunian')
      ->where('id_hunian', $data['id_hunian'])
      ->delete($data);
  }

  public function Pencarian($keywoard)
  {
    return $this->db->table('tb_hunian')
      ->like('nama_hunian', $keywoard)
      ->orLike('harga_hunian', $keywoard)
      ->orLike('alamat_hunian', $keywoard)
      ->get()->getResultArray();
  }
}