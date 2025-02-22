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
        Schema::create('table_barang_kerusakan_iwr', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_table_iwr');
            $table->string('nama_barang');
            $table->string('merk');
            $table->string('kuantitas');
            $table->text('keterangan');
            $table->timestamps();

            $table->foreign('id_table_iwr')->references('id')->on('table_iwr')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('table_barang_kerusakan_iwr');
    }
};
