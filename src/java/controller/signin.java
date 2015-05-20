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
public class signin extends SimpleFormController{
 
    public signin(){
        
        setCommandClass(dummy.class);
        setCommandName("verify");
        setSuccessView("home");
        setFormView("signin");
        
    }
    
 
    
    
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        ModelAndView mv = new ModelAndView("signin");
        dummy ver = (dummy) command;
        try{
            //Logintable log = new Logintable();
            Long cnic = ver.getl3();
            
           // System.out.println(a);
             String password = ver.gets7();
          Session session = HibernateUtil.getSessionFactory().getCurrentSession();
          session.beginTransaction();
           Query query = session.createQuery("from Logintable where cnic = :cnic and password = :password");
          //query.setParameter("doctordepartment", dep);
          query.setParameter("cnic", cnic);
          query.setParameter("password", password);
          
          List list = query.list();
          
         // mv.addObject("doctors", list);
         // session.getTransaction().commit();
          session.getTransaction().commit();
             if((list.size()==0) ){
                 
                 return new ModelAndView(new RedirectView("signin.htm"));
             }
             
             else{
                  return new ModelAndView(new RedirectView("home.htm"));
             }
         // return mv;
          
        }
   catch (Exception e){
          e.printStackTrace();
          
   }
        return new ModelAndView(new RedirectView("home.htm"));
}
}