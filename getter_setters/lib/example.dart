// id
// name
//price
//vat
//quantity
// item
//total

void main() {
  var puri = Puri();
  puri.id = 1;
  puri.name = 'Puri';
  puri.bought = 25;
  print(
      ' id:  ${puri.id}  Iteam name:  ${puri.name}   totalprice : ${puri.bought}');
  var dim = Dim();
  dim.id = 3;
  dim.name = 'Dim';
  dim.bought = 25;
  print(
      ' id:  ${dim.id}  Iteam name:  ${dim.name}   totalprice : ${dim.bought}');

  var total = puri.bought + dim.bought;

  print('Total : ${total}');
}

class menu {
  late int id;
  late String name;
}

class Puri extends menu {
  late double bill;

  void set bought(double quantity) {
    bill = (quantity * 5) / 1.1; // here 1.1 is vat
  }

  double get bought {
    return bill;
  }
}

class Porota extends menu {
  late double bill;

  void set bought(double quantity) {
    bill = (quantity * 10) / 1.1;
  }

  double get bought {
    return bill;
  }
}

class Dim extends menu {
  late double bill;

  void set bought(double quantity) {
    bill = (quantity * 15) / 1.1;
  }

  double get bought {
    return bill;
  }
}

class Vagi extends menu {
  late double bill;

  void set bought(double quantity) {
    bill = (quantity * 25) / 1.1;
  }

  double get bought {
    return bill;
  }
}
