class StudentData {
  String? status;
  List<RoomBillResidents>? roomBillResidents;

  StudentData({this.status, this.roomBillResidents});

  StudentData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['roomBillResidents'] != null) {
      roomBillResidents = <RoomBillResidents>[];
      json['roomBillResidents'].forEach((v) {
        roomBillResidents!.add(RoomBillResidents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (roomBillResidents != null) {
      data['roomBillResidents'] =
          roomBillResidents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoomBillResidents {
  int? id;
  String? paymentPeriodId;
  String? residentId;
  String? roomId;
  int? dormId;
  int? price;
  bool? paid;
  String? createdBy;
  String? createdAt;
  String? updatedAt;
  Resident? resident;
  Dorm? dorm;
  PaymentPeriod? paymentPeriod;

  RoomBillResidents(
      {this.id,
      this.paymentPeriodId,
      this.residentId,
      this.roomId,
      this.dormId,
      this.price,
      this.paid,
      this.createdBy,
      this.createdAt,
      this.updatedAt,
      this.resident,
      this.dorm,
      this.paymentPeriod});

  RoomBillResidents.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    paymentPeriodId = json['paymentPeriodId'];
    residentId = json['residentId'];
    roomId = json['roomId'];
    dormId = json['dormId'];
    price = json['price'];
    paid = json['paid'];
    createdBy = json['createdBy'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    resident =
        json['resident'] != null ? Resident.fromJson(json['resident']) : null;
    dorm = json['dorm'] != null ? Dorm.fromJson(json['dorm']) : null;
    paymentPeriod = json['paymentPeriod'] != null
        ? PaymentPeriod.fromJson(json['paymentPeriod'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['paymentPeriodId'] = paymentPeriodId;
    data['residentId'] = residentId;
    data['roomId'] = roomId;
    data['dormId'] = dormId;
    data['price'] = price;
    data['paid'] = paid;
    data['createdBy'] = createdBy;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (resident != null) {
      data['resident'] = resident!.toJson();
    }
    if (dorm != null) {
      data['dorm'] = dorm!.toJson();
    }
    if (paymentPeriod != null) {
      data['paymentPeriod'] = paymentPeriod!.toJson();
    }
    return data;
  }
}

class Resident {
  int? index;
  String? id;
  String? name;
  String? roomId;
  int? dormId;
  String? course;
  String? phone;
  String? startDt;
  String? endDt;
  bool? gender;
  String? nationalId;
  String? issuedDt;
  String? issuedPlace;
  String? ethnic;
  String? religion;
  String? relName;
  String? relRelationship;
  String? relPhone;
  String? priority;
  String? department;
  String? dob;
  String? street;
  String? commune;
  String? district;
  String? province;
  String? avaLink;
  String? studentClass;
  String? relAddress;
  bool? isActive;
  String? branch;
  int? bankId;
  String? emailUeh;
  String? bankAccountNumber;

  Resident({
    this.index,
    this.id,
    this.name,
    this.roomId,
    this.dormId,
    this.course,
    this.phone,
    this.startDt,
    this.endDt,
    this.gender,
    this.nationalId,
    this.issuedDt,
    this.issuedPlace,
    this.ethnic,
    this.religion,
    this.relName,
    this.relRelationship,
    this.relPhone,
    this.priority,
    this.department,
    this.dob,
    this.street,
    this.commune,
    this.district,
    this.province,
    this.avaLink,
    this.studentClass,
    this.relAddress,
    this.isActive,
    this.branch,
    this.bankId,
    this.emailUeh,
    this.bankAccountNumber,
  });

  Resident.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    id = json['id'];
    name = json['name'];
    roomId = json['roomId'];
    dormId = json['dormId'];
    course = json['course'];
    phone = json['phone'];
    startDt = json['startDt'];
    endDt = json['endDt'];
    gender = json['gender'];
    nationalId = json['nationalId'];
    issuedDt = json['issuedDt'];
    issuedPlace = json['issuedPlace'];
    ethnic = json['ethnic'];
    religion = json['religion'];
    relName = json['relName'];
    relRelationship = json['relRelationship'];
    relPhone = json['relPhone'];
    priority = json['priority'];
    department = json['department'];
    dob = json['dob'];
    street = json['street'];
    commune = json['commune'];
    district = json['district'];
    province = json['province'];
    avaLink = json['avaLink'];
    studentClass = json['studentClass'];
    relAddress = json['relAddress'];
    isActive = json['isActive'];
    branch = json['branch'];
    bankId = json['bankId'];
    emailUeh = json['email_ueh'];
    bankAccountNumber = json['bankAccountNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index'] = index;
    data['id'] = id;
    data['name'] = name;
    data['roomId'] = roomId;
    data['dormId'] = dormId;
    data['course'] = course;
    data['phone'] = phone;
    data['startDt'] = startDt;
    data['endDt'] = endDt;
    data['gender'] = gender;
    data['nationalId'] = nationalId;
    data['issuedDt'] = issuedDt;
    data['issuedPlace'] = issuedPlace;
    data['ethnic'] = ethnic;
    data['religion'] = religion;
    data['relName'] = relName;
    data['relRelationship'] = relRelationship;
    data['relPhone'] = relPhone;
    data['priority'] = priority;
    data['department'] = department;
    data['dob'] = dob;
    data['street'] = street;
    data['commune'] = commune;
    data['district'] = district;
    data['province'] = province;
    data['avaLink'] = avaLink;
    data['studentClass'] = studentClass;
    data['relAddress'] = relAddress;
    data['isActive'] = isActive;
    data['branch'] = branch;
    data['bankId'] = bankId;
    data['email_ueh'] = emailUeh;
    data['bankAccountNumber'] = bankAccountNumber;
    return data;
  }
}

class Dorm {
  int? id;
  String? code;
  String? name;
  String? address;
  String? remark;
  String? createdAt;
  String? updatedAt;
  int? capacity;
  int? residentsCount;
  int? roomsAvailCount;
  int? roomsUnAvailCount;
  int? seatsAvailCount;
  int? seatsAvailCountByMale;
  int? seatsAvailCountByFemale;

  Dorm(
      {this.id,
      this.code,
      this.name,
      this.address,
      this.remark,
      this.createdAt,
      this.updatedAt,
      this.capacity,
      this.residentsCount,
      this.roomsAvailCount,
      this.roomsUnAvailCount,
      this.seatsAvailCount,
      this.seatsAvailCountByMale,
      this.seatsAvailCountByFemale});

  Dorm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    address = json['address'];
    remark = json['remark'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    capacity = json['capacity'];
    residentsCount = json['residentsCount'];
    roomsAvailCount = json['roomsAvailCount'];
    roomsUnAvailCount = json['roomsUnAvailCount'];
    seatsAvailCount = json['seatsAvailCount'];
    seatsAvailCountByMale = json['seatsAvailCountByMale'];
    seatsAvailCountByFemale = json['seatsAvailCountByFemale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['name'] = name;
    data['address'] = address;
    data['remark'] = remark;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['capacity'] = capacity;
    data['residentsCount'] = residentsCount;
    data['roomsAvailCount'] = roomsAvailCount;
    data['roomsUnAvailCount'] = roomsUnAvailCount;
    data['seatsAvailCount'] = seatsAvailCount;
    data['seatsAvailCountByMale'] = seatsAvailCountByMale;
    data['seatsAvailCountByFemale'] = seatsAvailCountByFemale;
    return data;
  }
}

class PaymentPeriod {
  String? id;
  String? dormIds;
  String? months;
  int? year;
  String? description;
  String? startDt;
  String? endDt;
  String? createdAt;
  String? createdBy;
  String? updatedAt;
  String? updatedBy;

  PaymentPeriod(
      {this.id,
      this.dormIds,
      this.months,
      this.year,
      this.description,
      this.startDt,
      this.endDt,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy});

  PaymentPeriod.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dormIds = json['dormIds'];
    months = json['months'];
    year = json['year'];
    description = json['description'];
    startDt = json['startDt'];
    endDt = json['endDt'];
    createdAt = json['createdAt'];
    createdBy = json['createdBy'];
    updatedAt = json['updatedAt'];
    updatedBy = json['updatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['dormIds'] = dormIds;
    data['months'] = months;
    data['year'] = year;
    data['description'] = description;
    data['startDt'] = startDt;
    data['endDt'] = endDt;
    data['createdAt'] = createdAt;
    data['createdBy'] = createdBy;
    data['updatedAt'] = updatedAt;
    data['updatedBy'] = updatedBy;
    return data;
  }
}
