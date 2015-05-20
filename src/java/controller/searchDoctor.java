/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import model.Doctors;
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
public class searchDoctor extends SimpleFormController{
 
    public searchDoctor(){
        
        setCommandClass(Doctors.class);
        setCommandName("searchDoctor");
        setSuccessView("doctors");
        setFormView("SearchDoctor");
        
    }
    
 
    
    
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        ModelAndView mv = new ModelAndView("doctors");
        Doctors doc = (Doctors) command;
        try{
            //Logintable log = new Logintable();
            String dep = doc.getDoctordepartment();
           // System.out.println(a);
             String city = doc.getCity();
          Session session = HibernateUtil.getSessionFactory().getCurrentSession();
          session.beginTransaction();
           Query query = session.createQuery("from Doctors where city = :city");
          //query.setParameter("doctordepartment", dep);
          query.setParameter("city", city);
          
          List list = query.list();
          mv.addObject("doctors", list);
          session.getTransaction().commit();
          
          
          return mv;
          
        }
   catch (Exception e){
          e.printStackTrace();
          
   }
        return mv;
}
}