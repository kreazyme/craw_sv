import 'dart:io';

import 'package:craw_svdut/helpers/time_extension.dart';
import 'package:craw_svdut/models/account.dart';
import 'package:excel/excel.dart';

abstract class ReadCSV {
  static List<Account> readDOB() {
    print("Start reading DOB");
    List<Account> accounts = [];
    var file = './data1.xlsx';
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      for (var row in excel.tables[table]?.rows ?? []) {
        DateTime dob = DateTime.parse(row[1].value.toString());
        accounts.add(Account(
          name: row[0].value.toString(),
          dob: dob.toDOB,
        ));
      }
    }
    print("Find ${accounts.length} dob");
    return accounts;
  }

  static List<Account> findMSSV(List<Account> accounts) {
    print("Start reading MSSV");
    List<Account> found = [];
    var file = './data2.xlsx';
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      for (var row in excel.tables[table]?.rows ?? []) {
        String name = row[1].value.toString();
        String mssv = row[0].value.toString();
        for (var account in accounts) {
          if (account.name == name) {
            found.add(
              account.copyWith(
                mssv: mssv,
              ),
            );
          }
        }
      }
    }
    print("Find ${found.length} MSSV");
    return found;
  }
}
