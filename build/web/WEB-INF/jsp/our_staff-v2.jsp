
<!DOCTYPE html>

<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
     <head>
       
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>DOCNET</title>
      <!-- Bootstrap core CSS -->
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet"/>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,700,400,300' rel='stylesheet' type='text/css'/>
      
    <link href="<c:url value="/resource/css/bootstrap.css" />" rel="stylesheet" type="text/css" />
      
      <!-- Bootstrap theme -->
      <link href="<c:url value="/resource/css/bootstrap-theme.css" />" rel="stylesheet" type="text/css" />
      <!-- Custom styles for this template -->
      <link href="<c:url value="/resource/css/jquery-ui.css" />" rel="stylesheet" />
      <link href="<c:url value="/resource/css/selectbox.css" />" rel="stylesheet" type="text/css" />
      <link href="<c:url value="/resource/css/font-awesome.min.css" />" rel="stylesheet">
      <link href="<c:url value="/resource/css/melon.datepicker.css" />" rel="stylesheet" type="text/css"/>
      <link href="<c:url value="/resource/css/selectbox.css" />" rel="stylesheet"/>
      <link href="<c:url value="/resource/css/star-rating.css" />" rel="stylesheet" media="all" type="text/css"/>
      <link href="<c:url value="/resource/css/theme.css" />" rel="stylesheet" type="text/css">
          <link href="<c:url value="/resource/css/owl.carousel.css" />" rel="stylesheet" type="text/css">
	
      <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --><!--[if lt IE 9]><script type="text/javascript" src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script type="text/javascript" src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
   </head>
    <body role="document" class="home">
        <div class="navbar navbar-default" role="navigation">
   <div class="container">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand media" href="index.html"><span class="pull-left media"><span class="fa fa-lg fa-plus"></span></span><span class="media-body"><b class="site_title">DOCNET</b></span></a><!-- /.navbar-brand.media -->
         <form action="index.html#" class="navbar-form hidden-md hidden-xs hidden-lg visible-sm">
            <div class="input-group header-search">
               <div class="input-group-btn"><button class="btn btn-info"><span class="fa fa-search medical_search"></span></button></div>
               <input type="search" value="Search on website" onfocus="if ( this.value == 'Search on website' ) { this.value = ''; }" onblur="if ( this.value == '' ) { this.value = 'Search on website'; }" class="search-query" />
               <div class="input-group-btn"><button type="reset" class="btn btn-info reset"></button></div>
            </div>
            <!-- /.header-search -->
         </form>
         <!-- /.navbar-form.visible-sm -->
         <table class="header-info hidden-xs hidden-sm">
            <tr>
               <td class="description">Find a Doctor<br>Book an Appointment</td>
                           <input type="text" value="<%=session.getAttribute("scard")%>"/>

               <td class="phone">(+92) 321 6664513</td>
            </tr>
         </table>
         <!-- /.header-info -->
         <!-- /.navbar-form hidden-sm -->
      </div>
      <!--.navbar-header-->
   </div>
   <!--.container-->
   <nav class="nav main-menu">
      <div class="container">
         
        
         <!-- /.modal -->
         
         <!-- /.modal -->
         <div class="navbar-collapse collapse top-menu">
            <ul class="nav navbar-inner navbar-nav navbar-left">
               <li class="active"><a href="home.htm">Home</a></li>
               <li><a href="about.htm">About</a></li>
               <li><a href="services.htm">Services</a></li>
               <li role="presentation"><a role="menuitem" tabindex="-1" href="our_staff-v2.htm">Search a Doctor</a></li>
               <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-sidebar-v1.htm">Blog</a></li>
               <li><a href="contact_us.htm">Contact</a></li>
            </ul>
         </div>
         <!--/.nav-collapse -->
      </div>
      <!--.container-->
   </nav>
   <!--/.navbar-default-->
</div>
        <div class="wrapper" role="main">
        
            <div id="slider" class="owl-carousel">
            <div class="slide">
               <div class="container slide-caption hidden-xs">
                  <h1><a href="services.html">Providing expert care services</a></h1>
                  <p>We can provide care for the patients who may need support, so they could stay at home instead of going to the hospital.</p>
               </div>
               <!-- .slide-caption --><img alt="medical_care_image" class="slide-image" src="<c:url value="/resource/img/large/4.jpg"/>"/>
				
            </div>
			
            <!-- .slide -->
            <div class="slide">
               <div class="container slide-caption hidden-xs">
                  <h1><a href="doctor_profile.html">High quality staff</a></h1>
                  <p>We recruit only those people who know how to do it right.</p>
               </div>
               <!-- .slide-caption --><img alt="slider image 1" class="slide-image" src="<c:url value="/resource/img/large/14.jpg"/>"/>
            </div>
            <!-- .slide -->
            <div class="slide">
               <div class="container slide-caption hidden-xs">
                  <h1><a href="blog-post.html" >24/7 Service</a></h1>
                  <br>
                  <p>We provide 24/7 on-call direct medical advice and assistance in urgent and emergency situations.</p>
               </div>
               <!-- .slide-caption --><img alt="slider image 2" class="slide-image" src="<c:url value="/resource/img/large/5.jpg"/>"/>
            </div>

         </div>  
            
              <div class="sticky hide-if-no-js">
            <div class="container">
            
                  <div class="form-group">
                     <ul id="sticky-tabs" class="nav nav-tabs">
                        <li class="active"><a href="index.html#search" data-toggle="tab">Search specialist</a></li>
                       
                     </ul>
                     <!-- Tab panes -->
                     <div id="sticky-tabsContent" class="tab-content">
                        <div class="bg-ajax-loader"><img alt="loader image" src="<c:url value="/resource/img/ajax-loader.gif"/>"/></div>
                        <div class="tab-pane fade row controls active in" id="search">
                         <form action="our_staff-v2.htm">
                          <div class="form-group">
                           <label class="col-md-4 col-sm-6 col-xs-12">
                              Practice area<br/>
                               <select id="bbgroup" data-autowidth="false" class="custom" name="Search1" value="" >
                                       <option>Department</option>
                                       <option id="dp1" value="Cardiologist">Cardiologist</option>
                                       <option id="dp2" value="Dermatologist">Dermatologist</option>
                                       <option id="dp7" value="Dentist">Dentist</option>
                                       <option id="dp5" value="Family Physician">Family Physician</option>
                                       <option id="dp6" value="Gynecologist">Gynecologist</option>
                                       <option id="dp4" value="Neurologist">Neurologist</option>
                                       <option id="dp3" value="Urologist">Urologist</option>
                                    </select>
                              
                           </label>
                          
                            <label class="col-md-4 col-sm-6 col-xs-12"> Location <br/>
                            <select id="ccgroup" data-autowidth="false" class="custom" name="Search2" value="" >
                                       <option>City</option>
                                       <option id="cp1" value="Islamabad">Islamabad</option>
                                       <option id="cp2" value="Lahore">Lahore</option>
                                       <option id="cp7" value="Faislabad">Faislabad</option>
                                       <option id="cp5" value="Sialkot">Sialkot</option>
                                       <option id="cp6" value="Multan">Multan</option>
                                       
                                    </select>
                             </label>
                         
                          
                              <div class="col-md-2 col-sm-16 col-xs-21 book-button" style="margin-left: 7%">
                                 <button class="btn btn-primary" type="submit" value="Submit">Search</button></div>
                        
                            </div>
                      </form>   
                        </div>
                       
                        <!-- #search -->
                        
                        <!-- #ask -->
                     </div>
                     <!-- .tab-content -->
                  </div>
                  <!-- .form-group -->
              
               <!-- form -->
            </div>
            <!-- .container -->
         </div>
         
         <div class="container staff">
             
             
             
           
          
             
            <div class="profiles-loop row">
                <div class="col-md-12">
                    <button type="button" class="btn btn-primary">Doctor Details</button></div>
                
               <div class="bg-ajax-loader"><img alt="loader image" src="img/ajax-loader.gif"/></div>
              
               
               
                 
               <div>
                 
                  <div>
                   <c:forEach items="${doctors}" var="a">
                <form class="form-signin" action="book.htm">
                        <div class="form-group">
                      
                        </div>
                    <br>
                   
                   <div class="form-group">
                        
                            <label class="col-md-4"> Doctor Name <br/>
                          <input type="text" name="city" class="form-control" placeholder="city" value="${a.getDoctorname()}">
                    </div>
                
                    <div class="form-group">
                         <label class="col-md-4"> Doctor Department <br/>
                 <input type="text" name="doctordepartment" class="form-control" placeholder="dep" value="${a.getDoctordepartment()}">
                    </div>
                    
                    <div class="form-group">
                         <label class="col-md-4"> Doctor PMDC ID <br/>
                 <input type="text" name="pmdcid" class="form-control" placeholder="dep" value="${a.getPmdcId()}">
                    </div>
                    <button class="btn btn-primary" type="submit" value="Submit">Book</button></div>
              </form>
                   
	</c:forEach>  
                  
                  
                  </div>
                  
                                 </div>
               <!-- .post -->
               <div class="clear"></div>
               <div class="divider"></div>
               
               <!-- .post -->
              
              
               <!-- .post -->
               <div class="clear"></div>
            </div>
           
         </div>
        </div>
          <div class="mastfoot">
         <div class="container">
            <div class="footer row top">
               <aside class="widget col-sm-6 col-xs-12 col-md-3">
                  <h4 class="widget-title">Menu</h4>
                  <ul>
                     <li class="page_item"><a href="#">Home</a></li>
                     <li class="page_item"><a href="#">About</a></li>
                     <li class="page_item"><a href="#">Services</a></li>
                  </ul>
               </aside>
               <aside class="widget col-sm-6 col-xs-12 col-md-4">
                  <h4 class="widget-title">About</h4>
                  <div class="textwidget">DocNet. We will take care of you. <br><i>Monday - Sunday 24/7 </i></div>
               </aside>
               <aside class="widget col-sm-6 col-xs-12 col-md-3">
                  <h4 class="widget-title">Recent tweets</h4>
                  <div class="recent_tweets footer-widget-single">
                     <a href="#" title="">@DocNet</a> The wise man therefore always holds in these matters to this principle.
                     <div class="recent_tweets_time">15 minutes ago</div>
                  </div>
               </aside>
               <aside class="widget col-sm-6 col-xs-12 col-md-3">
                  <h4 class="widget-title">Location</h4>
                  <div class="textwidget">
                     <address>NUST <br/>Islamabad, H12<address>
                     <a href="#">P.: (321) 666 - 45 - 13</a><br/><a href="#">E.: Contact@Docnet.com</a>
                  </div>
               </aside>
            </div>
            <div class="clear"></div>
            <div class="footer row bottom">
               <p class="footer-credits hidden-xs">Designed By: <a href="../../bestwebsoft_default.html">Team DocNet</a></p>
               <div class="footer social">
                  <div class="custom-facebook-button"><a class="facebook-button fa fa-lg fa-facebook" title="Share on Facebook" rel="me" href="https://www.facebook.com/sharer.php?app_id=12345678903&amp;u=http://www.bestwebsoft.com&amp;t=Next-gen+OpenGL+initiative+announced%2C+bridging+desktop+and+mobile+APIs"></a></div>
                  <div class="custom-linkedin-button"><a class="linkedin-button fa fa-lg fa-linkedin" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=YourURL&amp;title=TheTitleOfYourWebPageGoesHere&amp;summary=TheSummaryOfYourWebPageGoesHere&amp;source=TheNameOfYourSiteGoesHere" rel="nofollow" onclick="NewWindow(this.href,'template_window','32','32','yes','center');return false" target="_blank" onfocus="this.blur()"></a></div>
                  <div class="custom-tweet-button"><a class="twitter-button fa fa-lg fa-twitter" href="https://twitter.com/share?url=https%3A%2F%2Fdev.twitter.com%2Fpages%2Ftweet-button" target="_blank"></a></div>
               </div>
            </div>
            <!-- end: .footer.bottom -->
         </div>
      </div>
     
         
        
        
       
          
            
            
        <script type = "text/javascript" src="<c:url value="/resource/js/jquery.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.ikSelect.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery-ui.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/owl.carousel.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/script.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/star-rating.min.js" />"></script>
            
    </body>
</html>