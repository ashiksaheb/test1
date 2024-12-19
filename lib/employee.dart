class Salary {
  String? name;
  double? _salary;

  set setSalary(double newSalary) {
    this._salary = newSalary;
  }

  get getSalary => _salary;
}
