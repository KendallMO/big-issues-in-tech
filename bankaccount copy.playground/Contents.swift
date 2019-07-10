import UIKit

//Intentions: We are going to create a bank account that will allow us to make deposits, make withdrawals and transfer funds between two accounts!
//Because of our intentions, we know that we're going to need three functions at least!

class BankAccount {
    //properties go below here:
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    // add your intializer, which will contain your properties above ^

    init(){
        accountName = "name123"
        currentBalance = 0.0
        routingNumber = 0
    }
    
    // Your challenge is to create functions for depositing, withdrawing, setting account name and setting routing number - 4 functions
    
    //This function is adding a depositAmount to the current balance
    func makeDeposit(depositAmount: Double) {
        currentBalance = currentBalance + depositAmount
    }
    
    //This function is subtracting a withdrawlAmount from the current balance
    func makeWithdrawl(withdrawlAmount: Double) {
        currentBalance = currentBalance - withdrawlAmount
}
    func setAccountName(newName: String) {
        accountName = newName
}
    func setRoutingNumber(newRoutingNumber : Int){
        routingNumber = newRoutingNumber
    
}
    // this function check everything allows me to make sure that I set everything correctly!
    func checkEverything(){
        print(accountName)
        print(currentBalance)
        print(routingNumber)
        
}
    
    //I need to create a function where I am able to transfer money from Elora's account into Jamie's account
    //for sender and recepient, I am going to create oBJECTS within a function. Meaning that I am going to create a bank account everytime I access this account Transfer. This is going to be IMPORTANT when we work with Aviatrix (project) on Wednesday.
    
    func accountTransfer(sender: BankAccount, recepient : BankAccount, transferAmount : Double, senderRoutingNumber : Int ) {
        
        if sender.routingNumber == senderRoutingNumber {
            sender.currentBalance = sender.currentBalance - transferAmount
            recepient.currentBalance = recepient.currentBalance + transferAmount
            print("The recepient has successfully received the transfer!")
        } else {
            print("I'm sorry, but the info that you tupes in is not correct! Please try a different routing number!")
        }
        
        
    }
    
    
}
//This is outside of the class, I am going to create bank accounts (objects)
var jamiesBankAccount = BankAccount()
var eloraBankAccount = BankAccount()

eloraBankAccount.setAccountName(newName: "Elora's Bank Account")
eloraBankAccount.setRoutingNumber(newRoutingNumber: 999)
eloraBankAccount.makeDeposit(depositAmount: 1000.00)

jamiesBankAccount.setAccountName(newName : "Jamie's Bank Account")
jamiesBankAccount.setRoutingNumber(newRoutingNumber: 555)
jamiesBankAccount.makeDeposit(depositAmount: 10.00)

jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()

eloraBankAccount.accountTransfer(sender: eloraBankAccount, recepient: jamiesBankAccount, transferAmount: 1.00, senderRoutingNumber: 999)

jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()
