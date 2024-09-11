<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Staff;
use App\Models\Student;
use App\Models\Attendance;
use App\Models\ParentModel;
use Illuminate\Http\Request;

class AttendanceController extends Controller
{

    public function index()
    {
        return view('attendance');
    }
    public function absen(Request $request)
    {
        $request->validate([
            'code' => 'required|string',
            'gate' => 'required|string',
        ]);

        $code = $request->input('code');
        $gate = $request->input('gate');
        $now = Carbon::now();

        // LOGIC CORE
        if (strpos($code, 'father') !== false || strpos($code, 'mother') !== false) {
            // Code mengandung "father" atau "mother", cari di tabel Parent
            $user = ParentModel::where('parentcode', $code)->first();
        } elseif (is_numeric($code)) {
            // Code hanya berisi angka, cari di tabel Student
            $user = Student::where('SID', $code)->first();
        } else {
            // Else, cari di tabel Staff
            $user = Staff::where('staffcode', $code)->first();
        }

        if ($user) {
            $type = $user instanceof ParentModel ? 'Parent' : ($user instanceof Student ? 'Student' : 'Staff');
            $name = $user->name;
            $group_position = $user->class ?? $user->position;  // Dapatkan class atau position
            $photo = $user->photo;

            // Fetch last attendance
            $lastAttendance = Attendance::where('code', $code)->latest()->first();
            $state = 'IN'; // Default state

            if ($lastAttendance) {
                $lastTime = Carbon::parse($lastAttendance->time);
                if ($lastAttendance->state == 'OUT' && $now->diffInSeconds($lastTime) > 10) {
                    $state = 'IN'; //ini saya atur satuan detik, tapi untuk realcase sebaiknya satuan jam, supaya user tdk absen 2x di waktu yg sama
                } elseif ($lastAttendance->state == 'IN' && $now->diffInSeconds($lastTime) > 10) {
                    $state = 'OUT'; //ini saya atur satuan detik, tapi untuk realcase sebaiknya satuan jam, supaya user tdk absen 2x di waktu yg sama
                } else {
                    // Jika jarak waktu tdk memenuhi syarat, jangan push ke tabel attendance
                    return response()->json([
                        'name' => $name,
                        'group' => $group_position,
                        'date' => $now->toDateString(),
                        'time' => $now->toTimeString(),
                        'state' => $lastAttendance->state,
                        'photo' => $photo,
                        'message' => "Anda sudah melakukan Presensi " . $lastAttendance->state
                    ]);
                }
            }

            // Save attendance
            Attendance::create([
                'code' => $code,
                'gate' => $gate,
                'name' => $name,
                'group' => $group_position,
                'date' => $now->toDateString(),
                'time' => $now->toTimeString(),
                'state' => $state,
                'photo' => $photo,
            ]);

            return response()->json([
                'name' => $name,
                'group' => $group_position,
                'date' => $now->toDateString(),
                'time' => $now->toTimeString(),
                'state' => $state,
                'photo' => $photo,
                'message' => "Anda berhasil melakukan presensi $state"
            ]);
        }

        return response()->json(['message' => 'Code tidak ditemukan'], 404);
    }

    public function getLogs()
    {
        $logs = Attendance::all();

        return response()->json($logs);
    }
}
