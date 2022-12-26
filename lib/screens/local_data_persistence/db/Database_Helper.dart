import 'dart:io';

import 'package:my_learning/screens/local_data_persistence/models/Student.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper
{
  DatabaseHelper._privateConstructor(); // Name constructor to create instance of database
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  // getter for database

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }

    return _database!;
  }

  Future<Database> initializeDatabase() async {
    // Get the directory path for both Android and iOS
    // to store database

    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + '/students.db';

    // open/ create database at a given path
    var studentsDatabase = await openDatabase(
      path,
      version: 1,
      onCreate: _createDb,
    );

    return studentsDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute('''Create TABLE tbl_student (
                  id INTEGER PRIMARY KEY AUTOINCREMENT,
                  name TEXT,
                  address TEXT,
                  institute TEXT,
                  mobileNumber TEXT, 
                  monthlyFee INTEGER, 
                  admissionFee INTEGER )
    
    ''');
  }

  // insertion in database
  Future<int> insertStudent(Student s) async{
    Database db = await instance.database;
    // using rawInsert
    //int result = await db.rawInsert('INSERT into tbl_student (name, address, institute, mobileNumber, monthlyFee, admissionFee) VALUES(?, ?, ?, ?, ?, ?)', [s.name, s.address, s.institute, s.mobileNumber, s.monthlyFee, s.admissionFee]);

    // using insert
    int result = await db.insert('tbl_student', s.toMap());
    return result;
  }


  // Read Data from database
  Future<List<Student>> getAllStudents() async {
    List<Student> students = [];
    // read from table
    Database db = await instance.database;
    // using rawQuery
    //db.rawQuery('SELECT * From tbl_student');
    // using Query
    List<Map<String, dynamic>> listMap =await db.query('tbl_student');

    for( var studentMap in listMap){
      Student s = Student.fromMap(studentMap);
      students.add(s);
    }

    await Future.delayed(Duration(seconds: 1));
    return students;
  }


  // Deleting from database
  Future<int> deleteStudent(int id) async {
    Database db = await instance.database;

    int result = await db.rawDelete('DELETE from tbl_student where id=?', [id]);
    return result;
  }

  // Updating
  Future<int> updateStudent(Student s) async {
    Database db = await instance.database;
    // using raw Update sql query
    // int result = await db.rawUpdate('UPDATE tbl_student set name=?, address=?, institute=?, mobileNumber=?, monthlyFee=?, admissionFee=? WHERE id=?',
    // [s.name, s.address, s.institute, s.mobileNumber, s.monthlyFee, s.admissionFee, s.id] );

    // using update function
    int result = await db.update('tbl_student', s.toMap(), where: 'id=?', whereArgs: [s.id]);

    return result;
  }

}