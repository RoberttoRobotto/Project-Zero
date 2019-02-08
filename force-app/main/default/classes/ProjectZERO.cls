//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
//
// Program: Project Zero - Apex
// Date Created: 1/31/2019
// Modified Date: 2/5/2019
// Written by: Robert Backus
//
//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

public class ProjectZERO {
	
	Integer output, input;
    Integer[] inputArray;
    String s;
    public void ProjectZERO() {
        output = nFibonacci(input);
        system.debug(output);
        output = nFactorial(input);
        system.debug(output);
        Integer[] sortedArray = sortArray(inputArray);
        system.debug('output' + sortedArray);
        Integer[] rotatedArray = rotateLeftNTimes(inputArray, input);
        system.debug('output' + rotatedArray);
        boolean areBalanced = bracketsAreBalanced(s);
        system.debug(areBalanced);
        updateAccountSize();
        updateCALeads();
        closePastDueOpportunities();
    }
    
	//Fibonacci sequence (1)
    public static Integer nFibonacci( Integer n ){
	//Use 5 integers: a, b, c, n, i
	Integer a, b, c, i;
    
	//if n = 0 (Sequence)-> c = 0 (value)
	//if n = 1 (Sequence)-> c = 1 (value) The first two numbers in the sequence can't be calculated
        if(n==0){c=0;}
        if(n==1){c=1;}
	//if n > 1 - Start on the 2nd value of the sequence. 
        if(n>1){ 
            a = 0;
            b = 1;
            for(i=2; i<=n; i++) {
    //The next number in the sequence is the sum of the two previous numbers        
                c = a + b;
            	a = b; //The first number now equals the second number
            	b = c; //The second number now equals the third number (Repeat)
            } //End for
        } //End if
		//Print result
		return c;
}

    public static Integer[] sortArray( Integer[] intList ) {

        Integer placeholder, i = intList.size();
        
    Do { //Do...
        if (intList[i] > intList[i+1]) {//If left is bigger than right
            placeholder = intList[i]; //left is placed into a placeholder
            intList[i] = intList[i+1]; //left now equals right
            intList[i+1] = placeholder;//right equals placeholder
        }
        i++;
    } While (i < intList.size() - 1); //...while repeated by the size of the array

    return intList;
}

	//Factorial logic
    public static Integer nFactorial( Integer n ){
		//Create 2 integers: a, n
		Integer a;
	    //Continuously multiply a by the number 'n'
		//Decrement n and end when n equals 1
		for(a=n-1;a>1;a--) { n*=a; }
	    //a! = a * (a - 1) * .... (a - n) * 1
	    system.debug('Input: '+n+'     Output: '+a);
		return n;
    }

    //Rotate left logic
    public static Integer[] rotateLeftNTimes( Integer[] arrayName, Integer n ){

        Integer a, i, j, size = arrayName.size();
        for(i=n; i>0; i--){ //Repeat until i = 0
            a = arrayName[0]; //The first item in the array is stored into a placeholder
            	for(j=0; j<size-2; j++){
					arrayName[j] = arrayName[j+1]; //Every item in the array is moved the left
            	}
			a = arrayName[size-1]; //The placeholder is placed in the last item of the array
		} //Repeat the process until n = 0

		return arrayName; //Return array
    }


    //Balanced brackets logic
    public static boolean bracketsAreBalanced( String s ){
        
        for( Integer x : s.getChars()){ //Create a for loop
        
        //Create a switch statement
        switch on x {
			
                when 40 {    if (-1 == s.indexOf(')', s.indexOf(')'))){
                	return false;} //Return false if '(' was found, but ')' wasn't
                     		  else if (s.indexOf(')', s.indexOf(')')) > s.indexOf(']', s.indexOf(')')) && s.indexOf('(') < s.indexOf(']')){
                    return false;} //Return false if '(])' happens
                          	  else if (s.indexOf(')', s.indexOf(')')) > s.indexOf('}', s.indexOf(')')) && s.indexOf('(') < s.indexOf('}')){
                    return false;} //Return false if '(})' happens
                        }
                
                when 91 {    if (-1 == s.indexOf(']', s.indexOf(']'))){
                	return false;} //Return false if '[' was found, but ']' wasn't
                     		  else if (s.indexOf(']', s.indexOf(']')) > s.indexOf(')', s.indexOf(']')) && s.indexOf('[') < s.indexOf(')')){
                    return false;} //Return false if '[)]' happens
                          	  else if (s.indexOf(']', s.indexOf(']')) > s.indexOf('}', s.indexOf(']')) && s.indexOf('[') < s.indexOf('}')){
                    return false;} //Return false if '[}]' happens
        				}
                
                when 123 {    if (-1 == s.indexOf('}', s.indexOf(']'))){ 
                	return false;} //Return false if '{' was found, but '}' wasn't
                          else if (s.indexOf('}', s.indexOf('}')) > s.indexOf(')', s.indexOf('}')) && s.indexOf('{') < s.indexOf(')')){
                    return false;} //Return false if '{)}' happens
                          else if (s.indexOf('}', s.indexOf('}')) > s.indexOf(']', s.indexOf('}')) && s.indexOf('{') < s.indexOf(']')){
                    return false;} //Return false if '{]}' happens
                         }
                
                when 41 {    if (-1 == s.indexOf('(')){
                    return false;} } //Return false if '(' was found, but ')' wasn't
                
                when 93 {    if (-1 == s.indexOf('[')){
                	return false;} } //Return false if '[' was found, but ']' wasn't
                
                when 125 {    if (-1 == s.indexOf('{')){
                	return false;} } //Return false if '{' was found, but '}' wasn't

        	}//End switch
            
        }//End for loop
        //The brackets are balanced!
        return true;
    }
	
    public static void updateAccountSize() {
        //Create a list that from a query & Add query to the list
        //list<Account> AccountList = [SELECT Id, Name, BillingState FROM Account];

        for(Account AccountList: [SELECT Id, Name, BillingState FROM Account FOR UPDATE]) { //For each account in the list...

        if(AccountList.NumberOfEmployees <= 1000) { //If the account has between 1-1000 employees...
            AccountList.Size_c__c = 'Small'; //Update to small
        }
        
        if(AccountList.NumberOfEmployees >= 1001 && AccountList.NumberOfEmployees <= 10000) { //If the account has between 1001-10000 employees...
            AccountList.Size_c__c = 'Medium'; //Update to medium
        }
        
        if(AccountList.NumberOfEmployees > 10000) { //If the account has more than 10000 employees...
            AccountList.Size_c__c = 'Large'; //Update to large
        }
        } //End foreach
    }

    public static void updateCALeads() {
        //Find all leads that contain 'ca' in their fields
        //list<Lead> LeadList = [SELECT Name FROM Lead WHERE Lead.State = 'CA' FOR UPDATE];
        
        for(Lead LeadList: [SELECT Name, Status, Description FROM Lead WHERE Lead.State = 'CA' FOR UPDATE]){
            LeadList.Status = 'Closed - Not Converted'; //If a field islocated in ca, change lead status field to 'Closed-not converted'
            LeadList.Description = 'We are no longer doing business in California.'; //Change description
        }
    }

    public static void closePastDueOpportunities() {
        
		//list<opportunities> toMakeClosedLost

        //Select all queries that have passed their close date
        for(Opportunity toMakeCloseLost: [SELECT AccountId FROM Opportunity WHERE StageName != 'Closed Won' FOR UPDATE]){ 
            if(Date.TODAY() > toMakeCloseLost.CloseDate) {
            toMakeCloseLost.StageName = 'Closed Lost'; //The marked will be closed lost
            } }
    }
}