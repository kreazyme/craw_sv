import 'dart:io';

import 'package:craw_svdut/models/account.dart';

abstract class WriteTXT {
  static void addAccountToFile(Account account) {
    String data = '${account.name} - ${account.mssv} - ${account.dob}\n';
    File('data.txt').writeAsStringSync(data, mode: FileMode.append);
  }
}
