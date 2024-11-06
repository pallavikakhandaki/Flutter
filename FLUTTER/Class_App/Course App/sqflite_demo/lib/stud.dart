
class Student{
  final int rollNO;
  final String  studName;
  final String address;
  final int phonNum;

  Student({
    required this.rollNO,
    required this.studName,
    required this.address,
    required this.phonNum,
  });

  Map<String, dynamic> studMap () {
    return {
      'rollNo' : rollNO,
      'studName' : studName,
      'address' : address,
      'phonNum' : phonNum,
    };
  }
}