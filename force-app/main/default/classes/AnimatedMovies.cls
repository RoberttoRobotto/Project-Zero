//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
//
// Program: A map of animated movies
// Date Created: 1/30/2019
// Modified Date: 
// Written by: Robert Backus
//
//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

public class AnimatedMovies {
	
      //Create a map called MovieMap
  	  private Map<String, String> MovieMap = new Map<String, String>{};
    
      public AnimatedMovies(){ //Constructor
          
          //Add data to maps
          MovieMap.put('Spirited Away','Studio Ghibli'); // 2001 film
          MovieMap.put('The Lion King','Disney'); //1996 film
          MovieMap.put('Toy Story','Pixar'); //
          MovieMap.put('Akira','Tokyo Shinsha'); //1988 film
		
          system.debug(MovieMap);
      }

	//Method that allows you to enter a key
	//Have the value printed out using system debug

    public void getKey(String key) {
//		movie = key;
        system.debug(MovieMap);
    }
    
//Switch Statement
public void checkMovie(String movie){
/*	switch on movie
when 'Spirited Away'{
	system.debug('Movie: '+movie) //Give the movie name
	system.debug('Producer: '+producer) //Give the producer name
}
when 'The Lion King'{
	system.debug('Movie: '+movie) //Give the movie name
	system.debug('Producer: '+producer) //Give the producer name
}
when 'Toy Story'{
	system.debug('Movie: '+movie) //Give the movie name
	system.debug('Producer: '+producer) //Give the producer name
}
when 'Akira'{
	system.debug('Movie: '+movie) //Give the movie name
	system.debug('Producer: '+producer) //Give the producer name
}
	when else { //Default value when a movie can't be found
    system.debug('That movie is not documented in this database.');
	} */
}

} //End class