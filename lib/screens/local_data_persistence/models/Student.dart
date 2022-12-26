

class Student
{
  late int? id;
  late String name;
  late String address;
  late String institute;
  late String mobileNumber;
  late int monthlyFee;
  late int admissionFee;

  Student({
    this.id,
    required this.name,
    required this.address,
    required this.institute,
    required this.mobileNumber,
    required this.monthlyFee,
    required this.admissionFee,
});

  // function to convert object to map
  Map<String, dynamic> toMap() {

    Map<String, dynamic> map = {};
    map['id'] = id;
    map['name'] = name;
    map['address'] = address;
    map['institute'] = institute;
    map['mobileNumber'] = mobileNumber;
    map['monthlyFee'] = monthlyFee;
    map['admissionFee'] = admissionFee;

    return map;
  }

  // function to convert map to obj

  Student.fromMap(Map<String, dynamic> map){

    id = map['id'];
    name = map['name'];
    address = map['address'];
    institute = map['institute'];
    mobileNumber = map['mobileNumber'];
    monthlyFee = map['monthlyFee'];
    admissionFee = map['admissionFee'];

  }

}