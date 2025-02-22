<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class IwrModel extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'table_iwr';

    protected $fillable = [
        'wr_no',
        'kategori',
        'keterangan',
        'nama_resto',
        'lokasi_resto',
        'urgensi',
        'deskripsi',
        'permintaan_sparepart',
        'permintaan_barang',
        'jumlah_permintaan_wcs',
        'status_pengajuan',
        'approval_1',
        'approval_1_username',
        'approval_1_date',
        'approval_2',
        'approval_2_username',
        'approval_2_date',
        'approval_3',
        'approval_3_username',
        'approval_3_date'
    ];
}
