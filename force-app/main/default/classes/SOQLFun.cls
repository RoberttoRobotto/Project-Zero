public class SOQLFun {

/*    public static SOQL{
      }
  */  
    public static void SOQLFunList(){
    	//List<Account> namedList = new List<Account>
//        list<Contact> contactList = [SELECT id, firstname, lastname FROM Contact WHERE lastname = 'Brown'];
//        system.debug(contactList);
    	
        list<Account> AccountList = [SELECT Id, Name, BillingState FROM Account WHERE BillingState = 'CA'];
		system.debug(AccountList);

        list<Account> AccountList = [SELECT Id, Name, BillingState FROM Account WHERE isDeleted = FALSE];
		system.debug(AccountList);

        
    }
	public static List<Account> bigBusiness(string state) {
	    List<Account> caAccounts = new List<Account>();
		for(Account a: [SELECT id, name, annualrevenue, billingstate
					FROM Account
					WHERE billingstate NOT IN ('CA', 'NY') LIMIT 10]){
						if(a.annualrevenue > 10000){
							caAcounts.add(a);
    				} 
						if(caAccounts.size()==0){
						system.debug('No Entries');
						Account a = new account();
						a.AnnualRevenue = 1;
						a.Name = 'Default';
						caAccounts.add(a);
					}else{
						system.debug(caAccounts);
						update caAccounts;
						}
					upsert caAccounts;
					return caAccounts;
					} }

}