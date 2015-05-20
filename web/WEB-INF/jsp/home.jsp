
<!DOCTYPE html>

<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en-US">
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
            
                
               <td class="phone">(+92) 321 6664513</td>
                
               <td><h4 id="hid" style="margin-left: 256%">Welcome, </h4></td>
               <td><h4><input style="margin-left: 106%;border:0" type="text" id="logout" value="<%=session.getAttribute("scard")%>"/></h4></td>
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
            <a id="btn1" data-toggle="modal" href="#myModal2" class="btn btn-lg btn-success">Sign in</a>
            <a id="btn2" data-toggle="modal" href="#myModal1" class="btn btn-lg btn-default">Sign up</a>
                <a id="btn3" href="logout.htm" class="btn btn-lg btn-default">Log out</a>
        
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
                                    <select id="dgroup" class="form-control"  name ="${status.expression}" value ="${status.value}" >
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
                              <div class="dropdown">
                                 <spring:bind path ="s3">
                                    <select id="cgroup" class="form-control"  name ="${status.expression}" value ="${status.value}" >
                                       <option>City</option>
                                       <option id="cp1" value="Islamabad">Islamabad</option>
                                       <option id="cp2" value="Lahore">Lahore</option>
                                       <option id="cp7" value="Faislabad">Faislabad</option>
                                       <option id="cp5" value="Sialkot">Sialkot</option>
                                       <option id="cp6" value="Multan">Multan</option>
                                       
                                    </select>
                                 </spring:bind>
                              </div>
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
      <!--.navbar-->
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
            </div>
         <!-- .owl-carousel-->
         
         <!-- .sticky -->
         <div class="widgets-area">
            <div class="container features">
               <div class="page-header">
                  <h3>We can take care of everything</h3>
                  <p>We are always concerned about our patients.</p>
               </div>
               <div class="row">
                  <div class="col-md-4 col-sm-4 col-xs-12 media">
                     <a class="pull-left" href="index.html#"><span class="media-object fa fa-lg fa-male"></span></a>
                     <div class="media-body">
                        <h4 class="media-heading">Medical Consultation</h4>
                        Our doctors will answer all of your common health questions, and help you become an empowered, active partner of your healing process.
                     </div>
                  </div>
                  <div class="col-md-4 col-sm-4 col-xs-12 media">
                     <a class="pull-left" href="index.html#"><span class="media-object fa fa-lg fa-eye"></span></a>
                     <div class="media-body">
                        <h4 class="media-heading">Physical Disabilities Care</h4>
                        People with any physical disabilities should have an active, full life and it is our job to take care of it.
                     </div>
                  </div>
                  <div class="col-md-4 col-sm-4 col-xs-12 media">
                     <a class="pull-left" href="index.html#"><span class="media-object fa fa-lg fa-heart"></span></a>
                     <div class="media-body">
                        <h4 class="media-heading">Individual Approach</h4>
                        We understand that our patients prefer to stay home rather than go somewhere. So we offer an individual care as great alternative to let people stay at home with their family.
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-4 col-sm-4 col-xs-12 media">
                     <a class="pull-left" href="index.html#"><span class="media-object fa fa-lg fa-plus-square"></span></a>
                     <div class="media-body">
                        <h4 class="media-heading">Emergency Assistance</h4>
                        Our Clinic is the place where necessary assistance is provided to patients with polytraumasas well as to toxicology and microsurgery patients. When you choose our clinic, you can be sure that a doctor is qualified enough to perform your therapy.
                     </div>
                  </div>
                  <div class="col-md-4 col-sm-4 col-xs-12 media">
                     <a class="pull-left" href="index.html#"><span class="media-object fa fa-lg fa-flask"></span></a>
                     <div class="media-body">
                        <h4 class="media-heading">Appointment &amp; Treatment</h4>
                        Our Professional Medical Care covers a variety of different services ranging such as splinting, digital x-rays, sprains, back pain and breaks.
                     </div>
                  </div>
                  <div class="col-md-4 col-sm-4 col-xs-12 media">
                     <a class="pull-left" href="index.html#"><span class="media-object fa fa-lg fa-graduation-cap"></span></a>
                     <div class="media-body">
                        <h4 class="media-heading">Friendly Personnel</h4>
                        We are ready to take care of you immediately. All you need is just to come during our hospital?s operating hours and our friendly staff will be waiting for you.
                     </div>
                  </div>
               </div>
            </div>
            <!-- .features -->
            <div class="container testimonials">
               <div class="page-header">
                  <h3>Testimonial</h3>
                  <p>We are always take care of our clients.</p>
               </div>
               <div class="jumbotron">
                  <p>My Dad is 85 years old and it is nice to see a smile on his face again. Service provided was excellent,sympathetic and efficient. Your team could be relied on 100% to be on time. Every one of them was kind,completely trustworthy and professional. All I can say is a big thank you.</p>
               </div>
               <div class="testimonials-meta">
                  <div class="avatar"><img alt="avatar image" src="<c:url value="/resource/img/large/normal_1459.png"/>"/></div>
                  <p><strong>- Johnny Cage</strong></p>
               </div>
            </div>
            <!-- .testimonials -->
            <div class="container latest-posts">
               <div class="page-header">
                  <div class="pull-right"><a href="blog-sidebar-v1.html" class="btn btn-primary right">go to blog</a></div>
                  <h3>Latest Post</h3>
                  <p>We are changing the world for the better.</p>
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-4 col-md-4">
                     <div class="thumbnail">
                        <a href="blog-post.html"><img alt="thumbnail image 1" src="<c:url value="/resource/img/large/21_1.jpg"/>"/></a>
                        <div class="caption">
                           <h4 class="thumbnail-heading"><a href="blog-post.html">Good Food for Good Health</a></h4>
                           <p class="excerpt">Healthy food do not mean depriving yourself of the foods you love or strict dietary limitations.</p>
                           <div class="post-meta hidden-xs">
                              <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-4 col-md-4">
                     <div class="thumbnail">
                        <a href="blog-post.html"><img alt="thumbnail image 3" src="<c:url value="/resource/img/large/22_1.jpg"/>"/></a>
                        <div class="caption">
                           <h4 class="thumbnail-heading"><a href="blog-post.html">Blood Vessel Surgery</a></h4>
                           <p class="excerpt">Blood vessel surgery deals with vascular diseases, prevention of complications and endovascularor surgical treatment.</p>
                           <div class="post-meta hidden-xs">
                              <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-4 col-md-4">
                     <div class="thumbnail">
                        <a href="blog-post.html"><img alt="thumbnail image 2" src="<c:url value="/resource/img/large/18_1.jpg"/>"/></a>
                        <div class="caption">
                           <h4 class="thumbnail-heading"><a href="blog-post.html">Urology</a></h4>
                           <p class="excerpt"></p>
                           <div class="post-meta hidden-xs">
                              <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a></p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="clearfix"></div>
            </div>
            <!-- .latest-posts -->
           
            <!-- .testimonials -->
         </div>
         <!-- .widgets-area -->
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
          <script>
                  $(document).ready(function() {
                      
                       var valueL = $('#logout').val();
                       
                        if(valueL == "null") {
                           $('#btn3').hide();
                           $('#btn1').show();
                           $('#btn2').show();
                           $('#logout').hide();
                           $('#hid').hide();
                             
                           
                            
                        }
                        
                        else {
                           $('#btn3').css('display',"block");
                           $('#btn1').css('display',"none");
                           $('#btn2').css('display',"none");
                          
                       } 
                     
                        
});
              
              
              </script>
                        
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.ikSelect.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery-ui.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/owl.carousel.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/script.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/star-rating.min.js" />"></script>
   </body>
</html><%-- 
    Document   : home
    Created on : May 13, 2015, 8:30:27 PM
    Author     : asadqureshi
--%>

