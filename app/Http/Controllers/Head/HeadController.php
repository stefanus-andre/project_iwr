<?php

namespace App\Http\Controllers\Head;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HeadController extends Controller
{
    public function Dashboard() {
        return view("head.dashboard.head_dashboard");
    }

    public function HalamanApproval3() {
        $dataApproval = DB::table('table_iwr')
        ->join('master_resto', 'table_iwr.nama_resto', '=', 'master_resto.id')
        ->select('table_iwr.*', 'master_resto.name_store_street as nama_resto')
        ->get();

        return view('head.approval.approval_head', compact('dataApproval'));
    }

    public function UpdateApproval3(Request $request) {
        $request->validate([
            'id' => 'required',
            'approval_3' => 'required'
        ]);

        DB::table('table_iwr')
        ->where('id', $request->id)
        ->update([
            'approval_3' => $request->approval_3,
            'approval_3_username' => Auth::user()->name,
            'approval_3_date' => now()
        ]);
        return response()->json(['success' => true, 'message' => "approval update successfully"]);
    }

    public function logout(Request $request) {
        Auth::logout(); 
        Session::flush(); 
        return redirect('/')->with('success', 'You have been logged out.');
    }
}
