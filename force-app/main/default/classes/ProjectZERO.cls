//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
//
// Program: Project Zero - Apex
// Date Created: 1/31/2019
// Modified Date: 
// Written by: Robert Backus
//
//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

public class ProjectZERO {
	
//  static integer a, b, c, n, i, output;
	int output;
    public void ProjectZERO() {
        output = nFibonacci(args[]);
        output = nFactorial(args[]);
		
    }
    
	//Fibonacci sequence
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

    //Balanced brackets logic
    public static boolean bracketsAreBalanced( String s ){
        
        String x = '({[]})'; //Comparable string
        Integer size = size.s;
        
        for(i=1; i<size; i++) {//Create a for loop 
        
        //Create a switch statement
        when on s {
			
                when '(' {    if (-1 == s.indexOf(')', i)){
                	return false;} //Return false if '(' was found, but ')' wasn't
                     		  else if (s.indexOf(')', i) > s.indexOf(']', i) && s.indexOf('(') < s.indexOf(']')){
                    return false;} //Return false if '(])' happens
                          	  else if (s.indexOf(')', i) > s.indexOf('}', i) && s.indexOf('(') < s.indexOf('}')){
                    return false;} //Return false if '(})' happens
                        }
                
                when '[' {    if (-1 == s.indexOf(']', i)){
                	return false;} //Return false if '[' was found, but ']' wasn't
                     		  else if (s.indexOf(']', i) > s.indexOf(')', i) && s.indexOf('[') < s.indexOf(')')){
                    return false;} //Return false if '[)]' happens
                          	  else if (s.indexOf(']', i) > s.indexOf('}', i) && s.indexOf('[') < s.indexOf('}')){
                    return false;} //Return false if '[}]' happens
        				}
                
                when '{' {    if (-1 == s.indexOf('}', i)){ 
                	return false;} //Return false if '{' was found, but '}' wasn't
                          	  else if (s.indexOf('}', i) > s.indexOf(')', i) && s.indexOf('{') < s.indexOf(')')){
                    return false;} //Return false if '{)}' happens
                         	  else if (s.indexOf('}', i) > s.indexOf(']', i) && s.indexOf('{') < s.indexOf(']')){
                    return false;} //Return false if '{]}' happens
                         }
                
                when ')' {    if (-1 == s.indexOf('(')){
                    return false;} } //Return false if '(' was found, but ')' wasn't
                
                when ']' {    if (-1 == s.indexOf('[')){
                	return false;} } //Return false if '[' was found, but ']' wasn't
                
                when '}' {    if (-1 == s.indexOf('{')){
                	return false;} } //Return false if '{' was found, but '}' wasn't

        	}//End switch
            
        }//End for loop
        //The brackets are balanced!
        return true;
    }
    
    //Rotate left logic
    public static Integer[] rotateLeft( Integer[] array, Integer n ){

        Integer a, i, j, size = array.size();
        for(i=n; i>0; i--){ //Repeat until i = 0
            a = array[0]; //The first item in the array is stored into a placeholder
            	for(j=0; j<size-2; j++){
					array[j] = array[j+1]; //Every item in the array is moved the left
            	}
			a = array[size-1]; //The placeholder is placed in the last item of the array
		} //Repeat the process until n = 0
    }
	//
}