/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.ModelAndView; 
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
public class AutoController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
       ModelAndView mv = new ModelAndView("doctors");
       String out  = "LoginDetails";
      try
      {
          
          Session session = HibernateUtil.getSessionFactory().getCurrentSession();
          session.beginTransaction();
          List result = session.createQuery("from Logintable").list();
          mv.addObject("logintables", result);
          session.getTransaction().commit();
       }
      catch (Exception e){
          e.printStackTrace();
          
      }
          
      mv.addObject("message", out);
      return mv;
    }
    
}

