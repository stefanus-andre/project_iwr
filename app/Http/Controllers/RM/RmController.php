<?php

namespace App\Http\Controllers\RM;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class RmController extends Controller
{
    public function Dashboard() {
        return view("rm.dashboard.rm_dashboard");
    }

    public function HalamanApproval2() {
        $dataApproval = DB::table('table_iwr')
        ->join('master_resto', 'table_iwr.nama_resto', '=', 'master_resto.id')
        ->select('table_iwr.*', 'master_resto.name_store_street as nama_resto')
        ->get();

        return view('rm.approval.approval_rm', compact('dataApproval'));
    }

    public function UpdateApproval2(Request $request) {
        $request->validate([
            'id' => 'required',
            'approval_2' => 'required'
        ]);

        DB::table('table_iwr')
        ->where('id', $request->id)
        ->update([
            'approval_2' => $request->approval_2,
            'approval_2_username' => Auth::user()->name,
            'approval_2_date' => now()
        ]);
        return response()->json(['success' => true, 'message' => "approval update successfully"]);
    }

    public function logout(Request $request) {
        Auth::logout(); 
        Session::flush(); 
        return redirect('/')->with('success', 'You have been logged out.');
    }
}
