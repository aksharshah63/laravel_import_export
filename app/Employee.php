<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Employee extends Model
{
    protected $table = "employees";

    protected $fillable = ['name','email','phone','salary','department'];

    public static function getEmployee()
    {
        $records = DB::table('employees')->select('id','name','email','phone','salary','department')->get()->toArray();
        return $records;
    }
}
