
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import './stud.dart';

dynamic database;

void insertStudData(Student studObj) async{
  Database localDB = await database;

  await localDB.insert(
    "Student", 
    studObj.studMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
  );
}

Future<List<Map<String, dynamic>>> getOrderData() async{
  Database localDB = await database;

  List<Map<String,dynamic>> studMap = await localDB.query("Student");

  return studMap;
}

updateStudData(Student studObj) async{
  Database localDB = await database;

  await localDB.update(
    "Student", 
    studObj.studMap(),
    where: 'rollNo = ?',
    whereArgs: [studObj.rollNO],
  );
}

void deleteStudData(int rollNO) async{
  Database localDB = await database;

  await localDB.delete(
    "Student",
    where: 'rollNo = ?',
    whereArgs: [rollNO]
  );
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    join(await getDatabasesPath(),"StudentDatabase.db"),
    version: 1,
    onCreate: (db, version) async{
      await db.execute(
        '''
          create table Student(
            rollNo INT PRIMARY KEY,
            studName TEXT,
            address TEXT,
            phonNum INT
          )
        '''
      );
    },
  );

  Student stud1 = Student(
    rollNO: 20,
    studName: 'Pooja', 
    address: "Hadapsar", 
    phonNum: 7447730335
  );

  Student stud2 = Student(
    rollNO: 30,
    studName: 'Harish', 
    address: "Mumbai", 
    phonNum: 7523612458
  );

  insertStudData(stud1);
  insertStudData(stud2);

  print(await getOrderData());
  

  Student stud3 = Student(
    rollNO: 30,
    studName: 'Harish', 
    address: "${stud2.address}, Pune", 
    phonNum: 7523612458
  );

  updateStudData(stud3);

  print(await getOrderData());

  deleteStudData(stud3.rollNO);

  print(await getOrderData());
}