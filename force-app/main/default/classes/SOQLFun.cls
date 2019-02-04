public class SOQLFun {

/*    public static SOQL{
        
    }
  */  
    public static void SOQLFunList(){
    	//List<Account> namedList = new List<Account>
//        list<Contact> contactList = {SELECT id, firstname, lastname FROM Contact WHERE lastname = 'Brown'};
//        system.debug(contactList);
    	
        list<Account> AccountList = [SELECT Id, Name, BillingState FROM Account WHERE BillingState = 'CA'];
		system.debug(AccountList);
    }
}