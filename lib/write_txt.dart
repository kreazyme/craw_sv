import 'dart:io';

import 'package:craw_svdut/models/account.dart';
import 'package:craw_svdut/ueh/student_data_model.dart';

abstract class WriteTXT {
  static void addAccountToFile(Account account) {
    String data = '${account.name} - ${account.mssv} - ${account.dob}\n';
    File('data.txt').writeAsStringSync(data, mode: FileMode.append);
  }

  static void addUEHToFile(StudentData data) {
    String? mssv = '${data.roomBillResidents?[0].residentId}\n';
    print("Writed $mssv");
    File('data1.txt').writeAsStringSync(mssv, mode: FileMode.append);
  }
}
