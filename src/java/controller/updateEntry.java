/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import model.Logintable;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.ModelAndView; 
import org.springframework.web.servlet.view.RedirectView; 

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory; 
import java.io.IOException;
import java.util.List;
import model.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Query;
/**
 *
 * @author asadqureshi
 */
public class updateEntry extends SimpleFormController{
 
    public updateEntry(){
        
        setCommandClass(Logintable.class);
        setCommandName("updateEntry");
        setSuccessView("doctors");
        setFormView("updateEntry");
        

        
    }
    
 
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        
        Logintable login = (Logintable) command;
        try{
            //Logintable log = new Logintable();
            long cnic = login.getCnic();
            String password  = login.getPassword();
            String newpass = login.getStatus();
            
          Session session = HibernateUtil.getSessionFactory().getCurrentSession();
          session.beginTransaction();
         
          
          Query query1= session.createQuery("from Logintable where cnic = :cnic ");
            query1.setParameter("cnic", cnic);
           // query1.setParameter("password", password);
            List list = query1.list();
            
            
          if((list.get(0)) != null){
          
              Query query2 = session.createQuery("update Logintable set password = :password" + " where cnic = :cnic" );
             query2.setParameter("password", newpass);
              query2.setParameter("cnic", cnic);
              
              int result = query2.executeUpdate();
              //session.save(login);
              session.getTransaction().commit();
            }
              
             else {
              
         return new ModelAndView(new RedirectView("doctors.htm"));
        }
        }
   catch (Exception e){
          e.printStackTrace();
          
      }
       return new ModelAndView(new RedirectView("doctors.htm"));
    }
    
}
