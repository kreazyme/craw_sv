import 'package:craw_svdut/check_account.dart';
import 'package:craw_svdut/craw_svdut.dart' as craw_svdut;
import 'package:craw_svdut/models/account.dart';
import 'package:craw_svdut/read_csv.dart';
import 'package:craw_svdut/ueh/check_room_ueh.dart';

Future<void> main(List<String> arguments) async {
  List<String> data = await CheckRoomUEH().getMSSV();
  // print(data.length);
  // CheckRoomUEH().checkUseDorm("31211023898");
  CheckRoomUEH().checkAllMSSV(data);
  // print('Hello world: ${craw_svdut.calculate()}!');
  // List<Account> accounts = ReadCSV.findMSSV(ReadCSV.readDOB());
  // CheckAccount.checkAccount(accounts);
  // print(accounts.length);
  // // CheckAccount.checkAccount();
}
