void main() {
  var student = Student();
  student.name = 'Noob'; // default setter

  print(student.name); // default getter

  student.percentage = 600; // custom setter
  print(student.percentage); // custom getter
}

class Student {
  late String
      name; // instance variable // it will act as a default setter and getter
  late double
      _percent; // private variable in this library , class can access it

  void set percentage(
          double marks) => // custom setter and instance variable percentage
      _percent = (marks / 900) * 100;

  double get percentage => // custom getter and instance variable percentage
      _percent;
}
