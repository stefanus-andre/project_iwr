<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('table_iwr', function (Blueprint $table) {
            $table->id();
            $table->string('wr_no');
            $table->string('kategori');
            $table->string('keterangan');
            $table->string('nama_resto');
            $table->string('lokasi_resto');
            $table->string('urgensi');
            $table->text('deskripsi');
            $table->text('permintaan_sparepart');
            $table->text('permintaan_barang');
            $table->integer('jumlah_permintaan_wcs');
            $table->string('status_pengajuan');
            $table->integer('approval_1');
            $table->string('approval_1_username');
            $table->datetime('approval_1_date');
            $table->integer('approval_2');
            $table->string('approval_2_username');
            $table->datetime('approval_2_date');
            $table->integer('approval_3');
            $table->string('approval_3_username');
            $table->datetime('approval_3_date');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('table_iwr');
    }
};
