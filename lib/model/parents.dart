class Parent {
  Parent(this.name, this.relation, this.phone);
  final String name;
  final String relation;
  final String phone;
}

List<Parent> getParents() {
  return [
    Parent('김길우', '신랑아버님', '01091206078'),
    Parent('유인숙', '신랑어머님', '01089112998'),
    Parent('김윤수', '신부아버님', '01022789732'),
    Parent('조영숙', '신부어머님', '01056699732'),
  ];
}
