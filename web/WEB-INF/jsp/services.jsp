<%-- 
    Document   : services
    Created on : May 16, 2015, 2:04:15 AM
    Author     : hussnain Cheema
--%>

<!DOCTYPE html>

<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en-US">
    
   <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>Services</title>
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
   <body role="document" class="services">
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
         <div class="navbar-form navbar-right" role="form">
            <!-- Button trigger modal -->
            <a data-toggle="modal" href="#myModal2" class="btn btn-lg btn-success">Sign in</a>
            <a data-toggle="modal" href="#myModal1" class="btn btn-lg btn-default">Sign up</a>
         </div>
         <!-- Modal -->
         <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                     <button type="button" class="btn btn-primary">Register Here</button>
                  </div>
                  <div class="modal-body">
                     <form:form method="POST" commandName="test" class="form-signin">
                        <div class="form-group">
                           <div class="dropdown">
                              <spring:bind path ="s6">
                                 <select id="role" class="form-control"  name ="${status.expression}" value ="${status.value}"  onclick='displayID()'>
                                    <option>Select Status</option>
                                    <option id="doc" value="doctor" >Doctor</option>
                                    <option id="pat" value="patient">Patient</option>
                                 </select>
                              </spring:bind>
                           </div>
                        </div>
                        <div class="form-group" id="doctorForm" style="display:none">
                           <div class="form-group">
                              <spring:bind path ="s1">
                                 <input type="text" id="inputEmail" class="form-control" placeholder="Enter Full Name"  name ="${status.expression}" value ="${status.value}">
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="l1">
                                 <input type="text" id="inputPassword" class="form-control" placeholder="Enter CNIC"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s2">
                                 <input type="text" id="inputStatus" class="form-control" placeholder="Password"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s7">
                                 <input type="text" id="pass" class="form-control" placeholder="Re-enter Password"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <div class="dropdown">
                                 <spring:bind path ="s5">
                                    <select id="bgroup" class="form-control"  name ="${status.expression}" value ="${status.value}" >
                                       <option>Department</option>
                                       <option id="dp1" value="Cardiologist">Cardiologist</option>
                                       <option id="dp2" value="Dermatologist">Dermatologist</option>
                                       <option id="dp7" value="Dentist">Dentist</option>
                                       <option id="dp5" value="Family Physician">Family Physician</option>
                                       <option id="dp6" value="Gynecologist">Gynecologist</option>
                                       <option id="dp4" value="Neurologist">Neurologist</option>
                                       <option id="dp3" value="Urologist">Urologist</option>
                                    </select>
                                 </spring:bind>
                              </div>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s3">
                                 <input type="text" id="inputStatus" class="form-control" placeholder="City"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s4">
                                 <input type="text" id="inputStatus" class="form-control" placeholder="Address"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="l2">
                                 <input type="text" id="inputStatus" class="form-control" placeholder="PMDC ID"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                        </div>
                        <div class="form-group" id="patientForm" style="display:none">
                           <div class="form-group">
                              <spring:bind path ="s8">
                                 <input type="text" id="fname" class="form-control" placeholder="Enter Full Name"  name ="${status.expression}" value ="${status.value}">
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="l8">
                                 <input type="text" id="cnicE" class="form-control" placeholder="Enter CNIC"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="l11">
                                 <input type="text" id="ageE" class="form-control" placeholder="Enter Age"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s9">
                                 <input type="text" id="pass11" class="form-control" placeholder="Password"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s10">
                                 <input type="text" id="pass12" class="form-control" placeholder="Re-enter Password"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s14">
                                 <input type="text" id="emailE" class="form-control" placeholder="Enter Email"  name ="${status.expression}" value ="${status.value}">
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s11">
                                 <input type="text" id="cityE" class="form-control" placeholder="Enter City"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="s12">
                                 <input type="text" id="Address1" class="form-control" placeholder="Enter Address"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="l9">
                                 <input type="text" id="contactNum" class="form-control" placeholder="Enter Contact Number"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <spring:bind path ="l10">
                                 <input type="text" id="emergCon" class="form-control" placeholder="Enter Emergency Contact"  name ="${status.expression}" value ="${status.value}" >
                              </spring:bind>
                           </div>
                           <div class="form-group">
                              <div class="dropdown">
                                 <spring:bind path ="s13">
                                    <select id="bgroup" class="form-control"  name ="${status.expression}" value ="${status.value}" >
                                       <option>Blood Group</option>
                                       <option id="bg1" value="bg_1">A-positive</option>
                                       <option id="bg2" value="bg_2">A-negative</option>
                                       <option id="bg3" value="bg_3">B-positive</option>
                                       <option id="bg4" value="bg_4">B-negative</option>
                                       <option id="bg5" value="bg_5">AB-positive</option>
                                       <option id="bg6" value="bg_6">AB-negative</option>
                                       <option id="bg7" value="bg_7">O-positive</option>
                                       <option id="bg8" value="bg_8">O-negative</option>
                                    </select>
                                 </spring:bind>
                              </div>
                           </div>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
                     </form:form>
                  </div>
               </div>
               <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
         </div>
         <!-- /.modal -->
         <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                     <button type="button" class="btn btn-primary">Enter Details</button>
                  </div>
                  <div class="modal-body">
                     <form:form method="POST" commandName="test" class="form-signin">
                        <div class="form-group">
                           <label for="CNIC" class="sr-only">CNIC</label>
                           <spring:bind path ="l3">
                              <input type="text" id="inputEmail" class="form-control" placeholder="CNIC"  name ="${status.expression}" value ="${status.value}" required autofocus >
                           </spring:bind>
                        </div>
                        <div class="form-group">
                           <label for="Password" class="sr-only">PASSWORD</label>
                           <spring:bind path ="s7">
                              <input type="password" id="inputPassword" class="form-control" placeholder="Password"  name ="${status.expression}" value ="${status.value}" >
                           </spring:bind>
                        </div>
                        <div class="modal-footer">
                           <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>    
                        </div>
                     </form:form>
                  </div>
               </div>
               <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
         </div>
         <!-- /.modal -->
         <div class="navbar-collapse collapse top-menu">
            <ul class="nav navbar-inner navbar-nav navbar-left">
               <li class="active"><a href="home.htm">Home</a></li>
               <li><a href="about.htm">About</a></li>
               <li><a href="services.htm">Services</a></li>
               <li role="presentation"><a role="menuitem" tabindex="-1" href="our_staff-v2.htm">Our staff</a></li>
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
      <!--.navbar-->
      <div class="wrapper" role="main">
         <div class="header-bottom clearfix">
            <div class="breadcrumbs container">
               <nav class="pull-left row">
                  <fieldset class="breadcrumb" style=""><span class="crumbs"><span class="crust homeCrumb" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="../../bestwebsoft_default.html" class="crumb text-muted" itemprop="url"><span itemprop="title">Services</span></a><span class="arrow"><span></span></span></span></span></fieldset>
                  <div class="page-header">
                     <h1>Our Services</h1>
                  </div>
               </nav>
               <div class="header social row hidden-xs hidden-sm">
                  <div class="custom-google-button"><a class="google-button fa fa-lg fa-google-plus" href="https://plus.google.com/share?url=http://bestwebsoft.com/inprogress/bws/themeforest_medical_care_html/" target="_blank"><span class="badge pull-right"><b>48</b></span></a></div>
                  <div class="custom-facebook-button"><a class="facebook-button fa fa-lg fa-facebook" href="https://www.facebook.com/sharer.php?app_id=12345678903&amp;u=http://www.bestwebsoft.com&amp;t=Next-gen+OpenGL+initiative+announced%2C+bridging+desktop+and+mobile+APIs"><span class="badge pull-right"><b>32</b></span> </a></div>
                  <div class="custom-tweet-button"><a class="twitter-button fa fa-lg fa-twitter" href="https://twitter.com/share?url=https%3A%2F%2Fdev.twitter.com%2Fpages%2Ftweet-button" target="_blank"><span class="badge pull-right"><b>23</b></span></a></div>
               </div>
            </div>
         </div>
         <div class="widgets-area">
            <div class="container features">
               <div class="page-header row">
                  <h3>We provide all kinds of medical services</h3>
                  <p>Individual approach and care for our patients</p>
               </div>
               <div class="row services_summary">
                  <div class="col-md-6">
                     <h4 class="services_summary_header">Care and Support Services</h4>
                     <p>Care and support services means to help people who are in need of practical support due to oldage, low income, illness or disability. Care and support services include an alarm system sothat you can call for help, having a personal assistant to help you move around the home or manage in your house.</p>
                  </div>
                  <div class="col-md-6">
                     <h4 class="services_summary_header">Care for children who have complex needs</h4>
                     <p>If your child has been diagnosed with a sensory impairment, disability or illness that needs aspecial care, that mean he/she has ?complex needs?. Our Clinic provides resources on health andinformation, social care and education to families with children who have complex needs under the age of three.</p>
                  </div>
               </div>
               <div class="page-header row">
                  <h3>Services</h3>
                  <p>The best medical devices and therapies</p>
               </div>
               <div class="row"><a href="services.html#" class="col-sm-12 col-md-4 thumbnail"><span class="pull-left media"><span class="media-object fa fa-lg fa-flask"></span></span><span class="media-body"><b>Mental Health</b></span><b>Et aut officiis debitis</b><br/><span>What we offer is planned, reviewed and coordinated services for people with mental disabilities or a range of related problems. Lorem ipsum dolor sit amet. et aut officiis debitis aut re</span></a><a href="services.html#" class="col-sm-12 col-md-4 thumbnail"><span class="pull-left media"><span class="media-object fa fa-lg fa-flask"></span></span><span class="media-body"><b>Specialist Care</b></span><b>Qui ratione voluptatem</b><br/><span>Medical care that we provide is flexible and ranging. It includes personal care as well as support in leading an independent life. Also, we can offer a live-in care service.</span></a><a href="services.html#" class="col-sm-12 col-md-4 thumbnail"><span class="pull-left media"><span class="media-object fa fa-lg fa-flask"></span></span><span class="media-body"><b>Flexible Care</b></span><b>Eligendi optio cumque</b><br/><span>Medical care that we provide is flexible and ranging. It includes personal care as well as support in leading an independent life. Also, we can offer a live-in care service</span></a></div>
               <div class="row hidden-sm hidden-xs"><a href="services.html#" class="col-sm-4 thumbnail"><span class="pull-left media"><span class="media-object fa fa-lg fa-flask"></span></span><span class="media-body"><b>Experienced staff</b></span><br/><span>We understand that patients have different needs. Medical Care Clinic provides a professionalservice which can really help you. Lorem ipsum dolor sit amet</span></a><a href="services.html#" class="col-sm-4 thumbnail"><span class="pull-left media"><span class="media-object fa fa-lg fa-flask"></span></span><span class="media-body"><b>Personalised care </b></span><b>Nemo enim ipsam voluptatem</b><br/><span>Care visits are usually 40 minutes to an 1.5 hour long. But, if you need, there is no upper time limit. Many our patients with hard form of diseases enjoy the service of our live-in carers.</span></a><a href="services.html#" class="col-sm-4 thumbnail"><span class="pull-left media" ><span class="media-object fa fa-lg fa-flask"></span></span><span class="media-body"><b>Skin &amp; eye screening</b></span><b>Nam libero tempore</b><br/><span>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quiaconsequuntur magni doloresos qui ratione voluptatem sequi nesciunt.</span></a></div>
            </div>
            <!-- .features -->
            <div class="container ">
               <div class="blockquote-widget" >
                  <div class="quote-content">
                     <blockquote>
                        <h3>Temporibus autem quibusdam et aut officiis debitis aut rerum saepe?</h3>
                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus idquod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>
                     </blockquote>
                  </div>
                  <div class="quote-button hidden-xs hidden-sm"><a href="blog-post.html" class="btn btn-primary">learn more</a></div>
               </div>
            </div>
            <!-- .testimonials -->
         </div>
         <!-- .widgets-area -->
         <div class="mastfoot">
            <div class="container">
               <div class="footer row top">
                  <aside class="widget col-sm-6 col-xs-12 col-md-3">
                     <h4 class="widget-title">Menu</h4>
                     <ul>
                        <li class="page_item"><a href="index.html">Home</a></li>
                        <li class="page_item"><a href="about.html">About</a></li>
                        <li class="page_item"><a href="services.html">Services</a></li>
                     </ul>
                  </aside>
                  <aside class="widget col-sm-6 col-xs-12 col-md-4">
                     <h4 class="widget-title">About</h4>
                     <div class="textwidget">Medical Care Clinic. We will take care of you. <br>Monday - Saturday 09:00 am - 09:00 pm</div>
                  </aside>
                  <aside class="widget col-sm-6 col-xs-12 col-md-3">
                     <h4 class="widget-title">Recent tweets</h4>
                     <div class="recent_tweets footer-widget-single">
                        <a href="services.html#" title="">@bestwebsoft</a> The wise man therefore always holds in these matters to this principle.
                        <div class="recent_tweets_time">15 minutes ago</div>
                     </div>
                  </aside>
                  <aside class="widget col-sm-6 col-xs-12 col-md-3">
                     <h4 class="widget-title">Location</h4>
                     <div class="textwidget">
                        <address>322 Broadway <br/>New York, NY 10038</address>
                        <a href="tel:5557771100">P.: (555) 777 - 11 - 00</a><br/><a href="mailto:sales@bestwebsoft.com">E.: sales@bestwebsoft.com</a>
                     </div>
                  </aside>
               </div>
               <div class="clear"></div>
               <div class="footer row bottom">
                  <p class="footer-credits hidden-xs">Designed with love by <a href="../../bestwebsoft_default.html">BestWebSoft</a></p>
                  <div class="footer social">
                     <div class="custom-facebook-button"><a class="facebook-button fa fa-lg fa-facebook" title="Share on Facebook" rel="me" href="https://www.facebook.com/sharer.php?app_id=12345678903&amp;u=http://www.bestwebsoft.com&amp;t=Next-gen+OpenGL+initiative+announced%2C+bridging+desktop+and+mobile+APIs"></a></div>
                     <div class="custom-linkedin-button"><a class="linkedin-button fa fa-lg fa-linkedin" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=YourURL&amp;title=TheTitleOfYourWebPageGoesHere&amp;summary=TheSummaryOfYourWebPageGoesHere&amp;source=TheNameOfYourSiteGoesHere" rel="nofollow" onclick="NewWindow(this.href,'template_window','32','32','yes','center');return false" target="_blank" onfocus="this.blur()"></a></div>
                     <div class="custom-tweet-button"><a class="twitter-button fa fa-lg fa-twitter" href="https://twitter.com/share?url=https%3A%2F%2Fdev.twitter.com%2Fpages%2Ftweet-button" target="_blank"></a></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
       <script>
	 function displayID() {
    if (document.getElementById('role').value === 'patient') {
		document.getElementById('doctorForm').style.display = 'none';
        document.getElementById('patientForm').style.display = 'block';
		
    } 
	else if (document.getElementById('role').value === 'doctor') {
        document.getElementById('patientForm').style.display = 'none';
		document.getElementById('doctorForm').style.display = 'block';
    } 
	else {
        document.getElementById('patientForm').style.display = 'none';
		document.getElementById('doctorForm').style.display = 'none';
    }
}
	  
         
	  </script>
                        
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.ikSelect.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery-ui.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/owl.carousel.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/script.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/star-rating.min.js" />"></script>
      
 </body>
</html>