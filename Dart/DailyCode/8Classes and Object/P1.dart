//In 4 ways we can create the object of the class 

class Employee {
  int empId = 18;
  String empName = "Kanha";
  double empSal = 2.5;

  void empInfo() {
    print(empId);
    print(empName);
    print(empSal);
  }
}

void main() {
  Employee obj1 = new Employee();
  obj1.empInfo();

  Employee obj2 = Employee();
  obj2.empInfo();

  new Employee().empInfo();

  Employee().empInfo();
}