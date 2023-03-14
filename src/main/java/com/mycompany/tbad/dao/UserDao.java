
package com.mycompany.tbad.dao;

import com.mycompany.tbad.entity.User;
//import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;

public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    // Get Email and Password
    
    
    public User getUserByEmailansPass(String email , String password){
    
    User user = null;
    try{
        
        String query  = "from User where userEmail =: e and userPassoword=: p";
Session session = this.factory.openSession();
Query q = session.createQuery(query);
q.setParameter("e", email);
q.setParameter("p", password);
user = (User)q.uniqueResult();
// Changes Are Made
        // Changes
session.close();

              
    }
    catch(Exception e){
    e.printStackTrace();
    
    }
//    if (user == null) {
//    request.setAttribute("errorMessage", "Invalid email or password.");
//}
    return user;
}
}
