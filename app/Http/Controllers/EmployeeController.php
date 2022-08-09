<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use App\Exports\EmployeeExport;
use Excel;
use PDF;
use App\Imports\EmployeeImport;

class EmployeeController extends Controller
{
    public function create()
    {
        return view('employee');
    }

    public function add(Request $request)
    {
        $employee = new Employee();
        $employee->name = $request->name;
        $employee->email = $request->email;
        $employee->phone = $request->phone;
        $employee->salary = $request->salary;
        $employee->department = $request->department;
        $employee->save();
        return back()->with('success','Employee created successfully!');
    }

    public function exportIntoExcel()
    {
        return Excel::download(new EmployeeExport, 'employeelist.xlsx');
    }

    public function exportIntoCSV()
    {
        return Excel::download(new EmployeeExport, 'employeelist.csv');
    }

    public function getAllEmployees()
    {
        $employees = Employee::all();
        return view('get_all_employee',compact('employees'));
    }

    public function downloadPDF()
    {
        $employees = Employee::all();
        $pdf = PDF::loadView('get_all_employee',compact('employees'));
        return $pdf->download('employee.pdf');
    }

    public function importForm()
    {
        return view('import-form');
    }

    public function import(Request $request)
    {
        Excel::import(new EmployeeImport,  $request->file);
        return redirect('/get-all-employee')->with('success','Employee created successfully!');
    }
}
