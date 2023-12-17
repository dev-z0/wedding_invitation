class Account {
  Account(this.depositor, this.bank, this.num);
  final String depositor;
  final String bank;
  final String num;
}

List<Account> getGroomAccounts() {
  return [
    Account('신랑아버님 김길우', '기업은행', '27304351702010'),
    Account('신랑어머님 유인숙', '기업은행', '27302959602019'),
    Account('신랑 김대호', '하나은행', '25291022260407'),
  ];
}

List<Account> getBrideAccounts() {
  return [
    Account('신부아버님 김윤수', '국민은행', '815010290140'),
    Account('신부어머님 조영숙', '하나은행', '47081016057807'),
    Account('신부 김지영', '카카오뱅크', '3333060473547'),
  ];
}
