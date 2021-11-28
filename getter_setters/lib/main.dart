// Objectives
// 1. Default Getter and Setter
// 2. Custom Getter and Setter
// 3. Private Instance Variable

void main() {
  var student = Student();
  student.name =
      'Sheikh'; // akhane amra setter use korechi (student.name use kore amra value set korchi name a, aita hoche default setter)  // Calling default Setter to  set value . example: student.name
  print(student
      .name); // student.name use kore amra value pachi name variable theke // by using getter we are getting value which is stored in name // (aita hoche default getter) // Calling default Getter to get the value. example : student.name

  student.percentage = 431.0; // calling custom Setter to set the value
  print(student.percentage); // calling custom Getter to get the value
}

class Student {
  late String
      name; // Instance variable , name will act as default getter and setter, ( instance variable defult getter and setter hisebe kaj korbe) // it is  private instance variable for its own library

  late double
      _percent; // for local purpose we should not use instance variable because it wll create default getter and setter, in dart we don't have modifier of private, public or protected, so you cann't make this variable private to this class but using underscore symbol we make make this variable private to its own library example: _percent, but we can't make it private for its own class

/*
  void set percentage(double marksSecured) {
    // 431 value will be passed in the parameter marksSecured
    // we have declared custorm setter for percentage // instance  variable with custom setter
    // custom setter
    // we made a setter here let us treat it as a function , each of the setter takes atleast one prarameter

    _percent = (marksSecured / 500) * 100;
  }
  */
/* using short hand fat arrow symbol(in this way we optimised our code) =>  we will make setter */

  void set percentage(double marksSecured) =>
      _percent = (marksSecured / 500) * 100;

/* // using short hand  syntax => we will make getter */
/*
  double get percentage {
    // we have declared custom getter for percentage  // intance variable  with custom getter
    // in getter we don't need parenthess() like functions
    return _percent; // percent r vitore je value thakbe ta return korbe
  }
  */

  double get percentage => _percent;
}
