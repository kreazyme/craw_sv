import 'dart:ffi';
import 'dart:io';

import 'package:craw_svdut/ueh/student_data_model.dart';
import 'package:craw_svdut/write_txt.dart';
import 'package:dio/dio.dart';

class CheckRoomUEH {
  Dio _dio = Dio();
  Future<List<String>> getMSSV() async {
    final File file = File('./mssvueh.txt');
    String text = await file.readAsString();
    return text.split('\n');
  }

  Future<void> checkAllMSSV(List<String> datas) async {
    // datas.forEach((element) async {

    // });
    for (int i = 0; i < datas.length; i++) {
      // await checkUseDorm(datas[i]);
      // print(i);
      print(
        "Check number ${datas.indexOf(datas[i])} of ${datas.length}: ${datas[i]}",
      );
      checkUseDorm(datas[i]);
      await Future.delayed(Duration(
        milliseconds: 100,
      ));
    }
  }

  Future<void> checkUseDorm(String mssv) async {
    final response = await _dio.get(
      'https://kytucxa.ueh.edu.vn/student/search-room-bill-resident/?id=$mssv',
    );
    StudentData? data;
    try {
      data = StudentData.fromJson(response.data);
    } catch (e) {
      // print(e);
      return;
    }
    if (data.roomBillResidents == null || data.roomBillResidents!.isEmpty) {
      // print('Không có dữ liệu');
      return;
    } else {
      for (var element in data.roomBillResidents!) {
        if (element.roomId == null) {
          continue;
        }
        try {
          int roomId = int.parse(element.roomId!);
          if (roomId < 700 &&
              roomId > 599 &&
              element.dorm?.name == 'Ký túc xá Trần Hưng Đạo') {
            WriteTXT.addUEHToFile(data);
            continue;
          }
        } catch (e) {
          return;
        }
      }
    }
  }
}
