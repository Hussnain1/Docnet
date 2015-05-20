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
import model.Logintable;
/**
 *
 * @author asadqureshi
 */
public class deleteEntry extends SimpleFormController{
 
    public deleteEntry(){
        
        setCommandClass(dummy.class);
        setCommandName("deleteEntry");
        setSuccessView("deleteEntry");
        setFormView("deleteEntry");
        

        
    }
    
 
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        
        Logintable dum = (Logintable) command;
        try{
            //Logintable log = new Logintable();
            long cnic = dum.getCnic();
            String pass  = dum.getPassword();
            
          Session session = HibernateUtil.getSessionFactory().getCurrentSession();
          session.beginTransaction();
          Query query = session.createQuery("delete Logintable where cnic = :cnic");
          query.setParameter("cnic", cnic);
          int result = query.executeUpdate();
          //session.save(login);
          session.getTransaction().commit();
          
        }
   catch (Exception e){
          e.printStackTrace();
          
      }
       return new ModelAndView(new RedirectView("doctors.htm"));
    }
    
}
