import 'package:craw_svdut/check_account.dart';
import 'package:craw_svdut/craw_svdut.dart' as craw_svdut;
import 'package:craw_svdut/models/account.dart';
import 'package:craw_svdut/read_csv.dart';

void main(List<String> arguments) {
  print('Hello world: ${craw_svdut.calculate()}!');
  List<Account> accounts = ReadCSV.findMSSV(ReadCSV.readDOB());
  // CheckAccount.checkAccount(accounts);
  print(accounts.length);
  // CheckAccount.checkAccount();
}
