package examples.users;

import com.intuit.karate.junit5.Karate;

class TestUsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("POSTandGETCall.feature").relativeTo(getClass());
    }    

}
