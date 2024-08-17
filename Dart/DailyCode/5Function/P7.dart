//Named Parameter


void empInfo({int? empId, String? empName,String? cmpName, double? empSal}) {
  print(empId);
  print(empName);
  print(cmpName);
  print(empSal);
}

void main() {
  empInfo(empId : 1, empSal : 2.0, empName : "Ashish");
}