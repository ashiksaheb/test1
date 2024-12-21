class Salary {
  String? name;
  double? _salary;

  set setSalary(double newSalary) {
    _salary = newSalary;
  }

  get getSalary => _salary;
}
