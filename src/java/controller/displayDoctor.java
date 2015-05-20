/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
//  package controller;
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
import javax.servlet.http.HttpSession;
import model.HibernateUtil;
import org.hibernate.Session;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author asadqureshi
 */
public class displayDoctor implements Controller {

  
     @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        
        
        ModelAndView m = new ModelAndView("our_staff-v2");
        String doctordepartment = hsr.getParameter("Search1");
        String city = hsr.getParameter("Search2");
        //HttpSession session = hsr.getSession();
        //session.setAttribute("scard", city);
        Session sessionx = HibernateUtil.getSessionFactory().getCurrentSession();
          sessionx.beginTransaction();
           Query query = sessionx.createQuery("from Doctors where city = :city and doctordepartment = :doctordepartment");
          //query.setParameter("doctordepartment", dep);
          query.setParameter("city", city);
            query.setParameter("doctordepartment", doctordepartment);
             List list = query.list();
              m.addObject("doctors", list);
              m.getViewName();
          sessionx.getTransaction().commit();
  //return new ModelAndView(new RedirectView("home.htm"));
          
    return m;
    
}
    
}


