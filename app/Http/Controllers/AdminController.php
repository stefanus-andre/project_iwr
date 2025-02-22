<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\IwrModel;

class AdminController extends Controller
{
    public function Dashboard() {
        return view("Admin.dashboard.admin_dashboard");
    }

    // start function data IWR

    public function LihatDataIWR() {
        $dataIWR = DB::table('table_iwr')
        ->join('master_resto', 'table_iwr.nama_resto', '=', 'master_resto.id')
        ->select('table_iwr.*', 'master_resto.name_store_street as nama_resto')
        ->get();
        return view("Admin.iwr.lihat_data_iwr", compact('dataIWR'));
    }

    public function AddDataIwr() {
        return view("Admin.iwr.add_data_iwr");
    }

    public function SubmitAddDataIwr(Request $request) {
        try {
            \Log::info($request->all());

            $dataIWR = new IwrModel();
    
            $dataIWR->wr_no = $request->input('wr_no');
            $dataIWR->kategori = $request->input('kategori');
            $dataIWR->keterangan = $request->input('keterangan');
            $dataIWR->nama_resto = $request->input('nama_resto');
            $dataIWR->lokasi_resto = $request->input('lokasi_resto');
            $dataIWR->urgensi = $request->input('urgensi');
            $dataIWR->deskripsi = $request->input('deskripsi');
            $dataIWR->permintaan_sparepart = $request->input('permintaan_sparepart');
            $dataIWR->permintaan_barang = $request->input('permintaan_barang');
            $dataIWR->jumlah_permintaan_wcs = $request->input('jumlah_permintaan_wcs');
            $dataIWR->status_pengajuan = $request->input('status_pengajuan');

            // Debugging: Check if data is being set
            \Log::info($dataIWR);

            $dataIWR->save();
    
            return redirect()->to('/admin/lihat_data_iwr')->with('success', 'Data berhasil disimpan');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Data error: ' . $e->getMessage());
        }
    }



    public function EditDataIwr($id)
    {
        $iwr = DB::table('table_iwr')
        ->join('master_resto', 'table_iwr.nama_resto', '=', 'master_resto.id')
        ->select('table_iwr.*', 'master_resto.name_store_street as nama_resto')
        ->where('table_iwr.id', $id)
        ->first();

        if ($iwr) {
            return view('Admin.iwr.edit_data_iwr', compact('iwr'));
        } else {
            return redirect()->back()->with('error', 'Data not found.');
        }
    }


    public function UpdateDataIwr(Request $request, $id) {
    $iwr = IwrModel::find($id);

    if ($iwr) {
        $iwr->update($request->all());
        return redirect()->to('/admin/lihat_data_iwr')->with('success', 'Data berhasil Terupdate');
    } else {
        return redirect()->back()->with('error', 'Data not found.');
    }
}


    public function DeleteDataIwr($id) {
        $iwr = IwrModel::find($id);

        if ($iwr) {
            $iwr->delete(); // Soft delete the record
            return redirect()->back()->with('success', 'Data successfully deleted.');
        } else {
            return redirect()->back()->with('error', 'Data not found.');
        }
    }
    

    public function GenerateCodeWR() {
        $date = date('d.m.Y'); 
        $prefix = "OPS.$date.";
    
        
        $latestWR = DB::table('table_iwr')
            ->where('wr_no', 'like', "$prefix%")
            ->orderBy('wr_no', 'desc')
            ->value('wr_no');
    
        if ($latestWR) {
            $lastNumber = (int) substr($latestWR, -3);
            $newNumber = str_pad($lastNumber + 1, 3, '0', STR_PAD_LEFT);
        } else {
            $newNumber = '001';
        }
    
        return response()->json(['wr_no' => $prefix . $newNumber]);
    }


    public function GetDataResto(Request $request) {
        $query = $request->input('q'); 
    
        $resto = DB::table('master_resto')
            ->select('id', 'name_store_street')
            ->when($query, function ($q) use ($query) {
                return $q->where('name_store_street', 'LIKE', "%{$query}%");
            }, function ($q) { 
                return $q->limit(50); // Limit results when no search term
            })
            ->get();
    
        return response()->json($resto);
    }

    public function logout(Request $request) {
        Auth::logout(); // Log out the user
        Session::flush(); // Clear all session data
    
        return redirect('/')->with('success', 'You have been logged out.');
    }
    // end function data IWR
} 
