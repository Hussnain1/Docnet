/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import controller.dummy;
import model.Logintable;
import model.Doctors;
import model.Patients;
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
import org.springframework.validation.BindException;

/**
 *
 * @author asadqureshi
 */
public class maincontroller extends SimpleFormController{
 
    public maincontroller(){
        
        setCommandName("test");
      //  setCommandName("test1");
        

        setBindOnNewForm(true);

        
        setFormView("home");
        
        
        setCommandClass(dummy.class);
      
    }
    @Override
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
        
        //System.out.println("test");
        
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        s.beginTransaction();
        
        ModelAndView mav = new ModelAndView("home");
        dummy login = (dummy) command;
        
        
        if((login.getl3()==null) && (login.gets6().equals("doctor")))  {
            
          // if(login.gets6().equals("doctor")){
        
            
        Logintable l = new Logintable();
        l.setCnic(login.getl1());
         long j = login.getl1();
         int k = (int)j;
         
       //  long contact = login.getl6();
        // int cont = (int) contact;
        l.setPassword(login.gets2());
        l.setStatus(login.gets6());
        
        Doctors doc = new Doctors();
        doc.setId(k);
        doc.setDoctorname(login.gets1());
        doc.setDoctordepartment(login.gets5());
        
        //doc.setContact(login.getl6());
        doc.setEmail(login.gets7());
        doc.setCity(login.gets3());
        doc.setAddress(login.gets4());
        
         long z = login.getl2();
         int v = (int)z;
        doc.setPmdcId(v);
        
        // Session s = HibernateUtil.getSessionFactory().getCurrentSession();
         // s.beginTransaction();
          s.save(l);
           s.save(doc);
          
          s.getTransaction().commit();
            return new ModelAndView(new RedirectView("home.htm"));
        
       
        }
        
            
            if((login.getl3()==null) && (login.gets6().equals("patient"))){
                
            //    Session session2 = HibernateUtil.getSessionFactory().getCurrentSession();
          //session2.beginTransaction();
                
               Logintable pat = new Logintable();
                pat.setCnic(login.getl8());
         long j = login.getl11();
         int k = (int)j;
        
          pat.setPassword(login.gets9());
        pat.setStatus(login.gets6());
          pat.setStatus("Patient");
          
                 Patients p = new Patients();
                 p.setPid(login.getl8());
                 p.setName(login.gets8());
                 p.setEmail(login.gets14());
                 p.setAddress(login.gets12());
                 p.setAge(k);
                 p.setPhoneNumber(login.getl9());
                // p.getPhoneNumber(login.);
                 p.setEmergencyContact(login.getl10());
                 p.setBloodGroup(login.gets13());
                 
                
               
          s.save(pat);
         
          s.save(p);
                
                  s.getTransaction().commit();
                    return new ModelAndView(new RedirectView("home.htm"));
        
            }
                
            
        
        
        
        //mv.addObject("photoCommand", photoCommand);
       
    if(login.getl3()!=null) {   
    Logintable x = new Logintable();
             long cnic = login.getl3();
            String password  = login.gets7();
         //   Session session3 = HibernateUtil.getSessionFactory().getCurrentSession();
        //  session3.beginTransaction();
         // session3.save();
            Query query1= s.createQuery("from Logintable where cnic = :cnic and password = :password");
            query1.setParameter("cnic", cnic);
            query1.setParameter("password", password);
          //  HttpSession session = request.getSession();
        //session.setAttribute("scard", password);
            //session3.setAttribute("check", "hello beother");
           // query1.setParameter("password", password);
            List list = query1.list();
             s.getTransaction().commit();
           // String check =  list.get(0).toString();
             if((list.size()==0)){
                 
                 return new ModelAndView(new RedirectView("signin.htm"));
                
             }
             else{
                 request.getSession().setAttribute("scard", "hello");
                 
                  return new ModelAndView(new RedirectView("home.htm"));
             }
            
         // session3.getTransaction().commit();
          //  session3.
            
        }

              //session.close();
          

//return (mav);
    return new ModelAndView(new RedirectView("home.htm"));

    }
    
    
    
    
    
  //  @Override
//protected Object formBackingObject(HttpServletRequest request) throws Exception { 
    //request.getSession().setAttribute("scard", "hello");
    //dummy dum = new dummy();
    //return dum;
    
//}

}
    
