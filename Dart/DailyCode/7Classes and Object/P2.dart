class Employee {
  int empId = 10;
  String empName = "Ashish";
  double empSal = 2.5;

  void empInfo() {
    print(empId);
    print(empName);
    print(empSal);
  }
}

void main() {
  Employee obj = Employee();
  obj.empInfo();
  obj.empId;
}

//Static variables or methods can access using class name