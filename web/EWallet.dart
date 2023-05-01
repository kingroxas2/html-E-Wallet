import 'Transaction.dart';
import 'dart:html';

class EWallet {
  List<Transaction> transactions = [];
  double balance = 0.0;

  void topUp(double amount) {
  if (amount < 0) {
    querySelector("#result")?.text = "Invalid amount";
    return;
  }
  if (amount == 0) {
    querySelector("#result")?.text = "Invalid amount";
    return;
  }
  balance += amount + 0.50;
  }

  void makePayment(double amount) {
    var now = DateTime.now();
    var peakHour = now.hour > 11 && now.hour < 14;
    if (peakHour) {
      // window.alert("Congrats! You got 10% off due to peak hour bonus!!");
      print("Congrats! You got 10% off due to peak hour bonus!!");
      window.alert("Congrats! You got 10% off due to peak hour bonus!!");
      amount *= 0.9;
    }
    if (amount > balance) {
      // window.alert("Insufficient funds");
      print("Insufficient funds");
    } else {
      var temp = balance;
      balance -= amount;
      transactions.add(Transaction(temp, amount, now, balance));
      if (amount != 0) {
        // window.alert("Payment successful. Current balance: \$${balance}");
        print("Payment successful. Current balance: $getBalance()");
      }
    }
  }

  double getBalance(){
    return balance;
  }

  void displayTransactions() {
    var transactionList = querySelector('#viewTransaction');
    var table = TableElement();

    List <TableRowElement> tableRow = [];
    List <TableCellElement> balance = [];
    List <TableCellElement> payment = [];
    List <TableCellElement> date = [];
    List <TableCellElement> remainingAmount = [];

    int x = 0;
    for (var transaction in transactions) {
      tableRow.add(TableRowElement());

      balance.add(TableCellElement());
      balance[x] = tableRow[x].addCell();
      balance[x].text = transaction.balance.toString();

      payment.add(TableCellElement());
      payment[x] = tableRow[x].addCell();
      payment[x].text = transaction.payment.toString();

      date.add(TableCellElement());
      date[x] = tableRow[x].addCell();
      date[x].text = transaction.date.toString();

      remainingAmount.add(TableCellElement());
      remainingAmount[x] = tableRow[x].addCell();
      remainingAmount[x].text = transaction.remainingAmount.toString();

      table.append(tableRow[x]);

      print("Balance: ${transaction.balance}, Payment: ${transaction.payment}, Date: ${transaction.date}, Remaining Amount: ${transaction.remainingAmount}");
      //transactionList?.text = "Balance: ${transaction.balance}, Payment: RM${transaction.payment}, Date: ${transaction.date}, Remaining Amount: ${transaction.remainingAmount}";
    x++;
    }
    
    document.body?.append(table);
  }
}