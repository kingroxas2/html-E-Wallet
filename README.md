<h1>INFO 4335 CASE STUDY</h1>

<h2>Group Wahida: No 4. e-Wallet Management System </h2>

Team Member:
1. MUHAMMAD FIRDAUS BIN SHAHRUM 2013803
2. MUHAMMAD AMIR HAMZAH BIN ABD AZIZ 2011685
3. FAISHAL AQIL BIN MOHD ARIEF 2014883
4. MUHAMMAD ISKANDAR ZULQARNAIN BIN MOHD ABDULLAH 2029879

Contribution:
1. Functions
- TopUp - Amir Hamzah
- MakePayment - Faishal Aqil
- displayTransaction - Firdaus shahrum

2. Classes
- Transactions - Iskandar
- E-wallet - Firdaus, Faishal, Amir

3. HTML and CSS
- All Members

Brief Description of the case study
Our case study is an e-wallet system developed by using dart and html with a few functions such as: 
-Top up the wallet balance
-Make a payment from the wallet balance, with a bonus of 10% off during off-peak hours
-Display a list of all the transactions made

The EWallet class to keep track of the wallet balance and transactions. It also keeps track of the transactions made by the user using the Transaction class. (an E-Wallet can have multiple Transactions)

The Transaction class represents an individual transaction and stores relevant information about each transaction.

 The topUp method adds the given amount plus the transaction fee to the balance and add a new Transaction object into the list of transactions. 
 
 The makePayment method checks if the given amount is less than or equal to the balance, applies a bonus if it is off-peak hours, subtracts the amount from the balance and adds a new Transaction object to the list of transactions with the updated balance, payment amount and date. 
 
 The displayTransactions method prints out the details of all the transactions in a list.
