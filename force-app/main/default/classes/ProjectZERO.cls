//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
//
// Program: Project Zero - Apex
// Date Created: 1/31/2019
// Modified Date: 
// Written by: Robert Backus
//
//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

public class ProjectZERO {
	
    integer a, b, c, n, i;
    
    public void ProjectZERO() {
        Fibonacci();
        Factorial();
    }
    
	//Fibonacci sequence
    public void Fibonacci(){
	//Use 5 integers: a, b, c, n, i
	
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
	system.debug('Input: '+n+'     Output: '+c);
}
    
	//Factorial logic
    public void Factorial(){
	//Create 2 integers: a, n

    //Continuously multiply a by the number 'n'
	//Decrement n and end when n equals 1
	for(n=a-1;n>1;n--) { a*=n; }
    //a! = a * (a - 1) * .... (a - n) * 1
    system.debug('Input: '+n+'     Output: '+a);
}

    
    
    
}