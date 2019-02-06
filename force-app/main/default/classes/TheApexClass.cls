public class TheApexClass {
    public TheApexClass() {
	
        Decimal Amount;
        String Stuff;
        isAccountOverDrawn();
    	createNewTransaction(Amount, Stuff);
    }

   public void isAccountOverDrawn(){
        
        for(Account DebtCheck : [SELECT Name, OwnerID, Balance__c FROM Account WHERE Account.balance__c < 0 FOR UPDATE]) {
            DebtCheck.In_debt__c = 'In Debt'; //If account is negative...
            DebtCheck.Description = 'The account is overdrawn. It is now in debt.'; //Change status to In-debt
        system.debug(DebtCheck);
        }
        for(Account ClearCheck : [SELECT Name, OwnerID, Balance__c FROM Account WHERE Account.balance__c >= 0 FOR UPDATE]) {
            ClearCheck.In_debt__c = 'Clear'; //If account is positive
            ClearCheck.Description = 'The account is doing well.'; //Change status to clear
        }
    }
    
   public void createNewTransaction( Decimal Money, String SearchThisNumber ) {
      	list<Account> AccountList = [SELECT AccountNumber, Customer__c, Balance__c FROM Account WHERE AccountNumber = SearchThisNumber];
		system.debug(AccountList);
        AccountList.Balance__c += Money;
        system.debug(AccountList);
    	}
    }

   public void updateAndShowTransactions( ){
        for (Account ChangeBalance : [SELECT Name, OwnerID, Balance__c FROM Account WHERE AccountNumber = SearchThisNumber]) { //For each transaction
			            ChangeBalance.Balance__c += Money; //Add (Or remove) funds to balance (Money may be negative)            
            system.debug(ChangeBalance, Account.Balance__c);
        }

        debug.(Transaciton);
    }



}