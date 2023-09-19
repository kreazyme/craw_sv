extension XTime on DateTime {
  String get toDOB {
    // return 30122001
    return '${day.toString().padLeft(2, '0')}${month.toString().padLeft(2, '0')}$year';
  }
}
