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
public class logout implements Controller {

  
     @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        
        
        ModelAndView m = new ModelAndView("logout");
       HttpSession session = hsr.getSession();
        session.removeAttribute("scard");
        // m.addObject("doctors", list);
              m.getViewName();
          
   return new ModelAndView(new RedirectView("home.htm"));
    
}
    
}


