public with sharing class TheApexClass {
    public TheApexClass() {
        

    //Check if an account is overdrawn and change the status of the account accordingly
    //If account balance equals zero or greater
    
    
    if (account.balance < 0){
        
    };
    //If not, update account to say 'in-debt'
    system.debug('Warning! The balance is now negative and the account is in debt.');

    //Create a new transaction relating to the account.
    
    //Update the account based on all related transactions to show current balance
    
    }

    void isAccountOverDrawn( Account.name ){
        
        for(Account : [SELECT , Name, BillingState FROM Account WHERE Account.name FOR UPDATE]) {
        
        Account.name //If account is negative...
        Account.cleanStatus = InDebt; //Change status to In-debt
        Account.Description = 'The account is overdrawn. It is now in debt.';
        //Give warning


        }

    }
    
    void createNewTransaction(){

                //If a transaction was detected,
                //Add (Or remove) funds to balance
        //Transaction
    }

    void updateAndShowTransactions(){


        
    }



}
