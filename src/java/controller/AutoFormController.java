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
import org.hibernate.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory; 
import java.io.IOException;
import java.util.List;
import model.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author asadqureshi
 */
public class AutoFormController extends SimpleFormController{
 
    public AutoFormController(){
        
        setCommandClass(Logintable.class);
        setCommandName("signup");
        setSuccessView("index");
        setFormView("signup");
        

        
    }
    
 
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        
        Logintable login = (Logintable) command;
        try{
            //Logintable log = new Logintable();
            long a = login.getCnic();
            System.out.println(a);
            
          Session session = HibernateUtil.getSessionFactory().getCurrentSession();
          session.beginTransaction();
          session.save(login);
          session.getTransaction().commit();
          
        }
   catch (Exception e){
          e.printStackTrace();
          
      }
       return new ModelAndView(new RedirectView("index.htm"));
    }
    
}
