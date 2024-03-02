class BankAccount{
  late int accountID;
  late double balance;
  BankAccount(this.accountID,this.balance);
  BankAccount.init(){
  balance = 0.0;
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawal successful. Remaining balance: $balance");
    } else {
      print("Withdrawal failed.invalid amount.");
    }
  }
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful. New balance: $balance");
    } else {
      print("Deposit failed. Invalid amount.");
    }
  }
}
void main(){
  BankAccount bank1=BankAccount(80, 500);
  BankAccount bank2=BankAccount.init();
  bank1.withdraw(100);
  bank1.deposit(200);
  bank2.withdraw(200);
  bank2.deposit(600);

}