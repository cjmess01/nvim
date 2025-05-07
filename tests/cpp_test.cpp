#include <iostream>
#include <string>

class BankAccount {
private:
  std::string owner;
  double balance;

public:
  BankAccount(const std::string &name, double initial_balance)
      : owner(name), balance(initial_balance) {}

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      std::cout << "Deposited $" << amount << ". New balance: $" << balance
                << "\n";
    } else {
      std::cout << "Deposit must be positive.\n";
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      std::cout << "Withdrew $" << amount << ". Remaining balance: $" << balance
                << "\n";
    } else {
      std::cout << "Invalid withdrawal amount.\n";
    }
  }

  void print_summary() const {
    std::cout << "Account owner: " << owner << ", Balance: $" << balance
              << "\n";
  }
};

int main() {
  BankAccount acc("Caleb", 1000.0);
  acc.print_summary();

  acc.deposit(200.0);
  acc.withdraw(150.0);
  acc.withdraw(2000.0); // Should fail
}
