class Account {
  final String name;
  final String dob;
  final String? mssv;

  Account({
    required this.name,
    required this.dob,
    this.mssv,
  });

  Account copyWith({
    required String mssv,
  }) {
    return Account(
      name: name,
      dob: dob,
      mssv: mssv,
    );
  }
}
