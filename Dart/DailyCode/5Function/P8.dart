
void main() {
  empInfo(empId:12,empName: "Pallavi",empSal : 2.5, cmpName : "XYZ");
}


void empInfo({int? empId,required String? empName, String? cmpName, double? empSal}) {
  print(empId);
  print(empName);
  print(cmpName);
  print(empSal);
}