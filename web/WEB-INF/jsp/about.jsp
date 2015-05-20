<%-- 
    Document   : about
    Created on : May 16, 2015, 1:18:58 AM
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
      <title>About Us</title>
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
   <body role="document" class="page-template-page-about">
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
         <div class="header-bottom clearfix">
            <div class="breadcrumbs container">
               <nav class="pull-left row">
                  <fieldset class="breadcrumb" style=""><span class="crumbs"><span class="crust homeCrumb" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="../../bestwebsoft_default.html" class="crumb text-muted" itemprop="url"><span itemprop="title">Home</span></a><span class="arrow"><span>/</span></span></span><span class="crust" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="about.html" class="crumb text-muted"><span>About</span></a></span></span></fieldset>
                  <div class="page-header">
                     <h1>About</h1>
                  </div>
               </nav>
               <div class="header social row hidden-xs">
                  <div class="custom-google-button"><a class="google-button fa fa-lg fa-google-plus" href="https://plus.google.com/share?url=http://bestwebsoft.com/inprogress/bws/themeforest_medical_care_html/" target="_blank"><span class="badge pull-right"><b>48</b></span></a></div>
                  <div class="custom-facebook-button"><a class="facebook-button fa fa-lg fa-facebook" href="https://www.facebook.com/sharer.php?app_id=12345678903&amp;u=http://www.bestwebsoft.com&amp;t=Next-gen+OpenGL+initiative+announced%2C+bridging+desktop+and+mobile+APIs"><span class="badge pull-right"><b>32</b></span> </a></div>
                  <div class="custom-tweet-button"><a class="twitter-button fa fa-lg fa-twitter" href="https://twitter.com/share?url=https%3A%2F%2Fdev.twitter.com%2Fpages%2Ftweet-button" target="_blank"><span class="badge pull-right"><b>23</b></span></a></div>
               </div>
            </div>
         </div>
         <div class="container">
            <div id="vertical_tabs" class="row">
               <!-- tabs left -->
               <nav>
                  <ul class="nav nav-tabs nav-stacked col-md-3">
                     <li class="active"><a href="about.html#a" data-toggle="tab">About Us</a></li>
                     <li><a href="about.html#c" data-toggle="tab">Team</a></li>
                  </ul>
               </nav>
               <div class="tab-content col-md-9">
                  <div class="tab-pane active row container-fluid" id="a">
                     <div class="entry row">
                         <div class="col-sm-6"><a href="about.html#" class="thumbnail "><img alt="medical_care_image" class="img-responsive" src="<c:url value="/resource/img/large/11_1.jpg"/>"/></a></div>
                        <div class="col-sm-6">
                           <h3 class="entry-header">Who we are</h3>
                           <!--<p class="text-justify">--><!--When a sudden injury or illness strikes and your regular doctor don't know what to do, where will you go? All you need is to call to our DocNet and receive qualified, affordable and fast urgent medical care. So scroll through our list of services to see what can we offer you.--><!--</p>-->
                           <p class="text-justify">Our Clinic is located in the easily accessible area of NY which has huge parking for your comfort. We provide a variety of non-surgical and surgical procedures, including rhinoplasty, facelift, breast augmentation, eyelid surgery, botox injections and abdominoplasty. Therefore, we have a solution no matter what sort of enhancement you need. Also, we carry an excellent line of skin care products and have licensed, full-time medical aestheticians who perform a comprehensive number of skin procedures.</p>
                        </div>
                        <p class="col-sm-12 text-justify">Our clinic is equipped with state-of-the-art laboratory and digital x-ray equipment. We are ready and waiting to take care of your needs immediately. Our friendly staff will be always waiting for you. Our Clinic is open Monday through Saturday from 9 am until 9 pm. You are always welcome to visit our clinic when your regular doctor?s office is closed after 5 pm. All you health care records will remain complete, since your personal physician will get a full report to at your request. So let us take care of you and your family?s health.</p>
                     </div>
                     <div class="entry row">
                        <div class="col-sm-7 widget">
                           <h3 class="entry-header">We are changing the world</h3>
                           <ul class="advantages_list">
                              <li><i class="fa fa-2x fa-check-square"></i><span>We Love to Take Care</span></li>
                              <li><i class="fa fa-2x fa-check-square"></i><span>Prevention Wellness</span></li>
                              <li><i class="fa fa-2x fa-check-square"></i><span>Medical Conditions</span></li>
                              <li><i class="fa fa-2x fa-check-square"></i><span>Orthopedic Services</span></li>
                              <li><i class="fa fa-2x fa-check-square"></i><span>General Conditions</span></li>
                              <li><i class="fa fa-2x fa-check-square"></i><span>Urgent Clinics Medical Care</span></li>
                           </ul>
                        </div>
                        <div class="col-sm-5 widget">
                           <h3 class="entry-header">What patients says</h3>
                           <div class="testimonials">
                              <div class="jumbotron">
                                 <p class="text-center">The fabulous service along with the knowledgeable and friendly staff I receive is what keeps me coming back to them</p>
                              </div>
                              <div class="testimonials-meta">
                                 <div class="avatar"><img alt="medical_care_image" src="img/large/normal_597.png"/></div>
                                 <p><strong>- John Lord</strong></p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="entry row">
                        <h3 class="entry-header">Our services</h3>
                        <ul class="nav nav-tabs">
                           <li class="active"><a href="about.html#lences" data-toggle="tab">Drugs of Abuse</a></li>
                           <li><a href="about.html#dental" data-toggle="tab">Digital X-Rays</a></li>
                        </ul>
                        <div class="tab-content horizontal">
                           <div class="tab-pane media fade active in" id="lences">
                              <div class="media-body">
                                 <a class="pull-left post_image" href="about.html#"><img alt="medical_care_image" src="img/large/15.jpg"/></a>
                                 <p>Drug addiction treatment use the addictive drug to help you resist your disease. It includes self-help groups, counseling, outpatient treatment or organized inpatient programs again.</p>
                              </div>
                           </div>
                           <div class="tab-pane media fade in" id="dental">
                              <div class="media-body">
                                 <a class="pull-left post_image" href="about.html#"><img alt="medical_care_image" src="img/large/14.jpg"/></a>
                                 <p>A form of X-ray imaging, digital radiography use digital X-ray sensors instead of traditional photographic technology.</p>
                              </div>
                           </div>
                           <div class="tab-pane media fade in" >
                              <div class="media-body">
                                 <a class="pull-left post_image" href="about.html#"><img alt="medical_care_image" src="img/large/normal_32200.png"/></a>
                                 <p>Heartburn is a burning sensation just behind your breastbone in your chest.This pain is often worse when lying down or bending over. Visit our clinic for deeper diagnostics.</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="tab-pane container-fluid" id="c">
                     <div class="entry row">
                      <div class="row" id="bg">
               <div class="row col-lg-12" style="margin:10px">
                  <h3 class="col-lg-5" style="color:black;"> Testimonials</h3>
               </div>
               <div class="col-lg-12" style="margin:10px">
                  <div class="col-lg-3">
                     <img id="img1"  style="height: 180px; width: 141px" class="img-responsive"  src="<c:url value="/resource/img/large/farooq.jpg"/>"/>
                     </div>
                  <div class="col-lg-2">
                     <h3 id="h3">Farooq Arshad</h3>
                  </div>
                  <div class="col-lg-7">
                     <hr id="hr6"/>
                  </div>
                  <div class="row">
                     <div class="col-lg-8" >
                        <p id= "p2"><b>CEO, DOCNET</b></p>
                        <p id= "p1">Docnet international team have given me constructive feedback where appropriate,
                           and praised my work when they have been impressed. It's great being able to work with talented
                           people from all over the world, and and know that we are all together
                        </p>
                     </div>
                  </div>
                  <p></p>
               </div>
               <div class="row col-lg-12" style="margin:10px">
                  <div class="col-lg-3">
                     <img id="img1"   class="img-responsive"  src="<c:url value="/resource/img/large/huss.jpg"/> " style="height: 180px; width: 141px"/>
                     </div>
                  <div class="col-lg-2">
                     <h3 id="h3">Hussnain Cheema</h3>
                  </div>
                  <div class="col-lg-7">
                     <hr id="hr7"/>
                  </div>
                  <div class="row">
                     <div class="col-lg-8">
                        <p id= "p2"><b>Co CEO, DOCNET</b></p>
                        <p id= "p1">The best part for me is that I get to liaise with colleagues from all around the world, and learn
                           new skills from them. It's great to feel part of such a highly motivated team that encourage you
                           to do the best you can, and help you along the way if you need it.
                        </p>
                     </div>
                  </div>
                  <p></p>
               </div>
               <div class="row col-lg-12" style="margin:10px">
                  <div class="col-lg-3">
                      <img  style="height: 180px; width: 141px" class="img-responsive"  src="<c:url value="/resource/img/large/asad.jpg"/>"/>
                     
                  </div>
                  <div class="col-lg-3">
                     <h3 id="h3">Asad Qureshi</h3>
                  </div>
                  <div class="col-lg-6">
                     <hr id="hr8"/>
                  </div>
                  <div class="row">
                     <div class="col-lg-8">
                        <p id= "p2"><b>CFO/CEO DOCNET</b></p>
                        <p id= "p1">Docnet provides me complete freedom to utilize my skills which encourages me to do
                           the best I can. I work in a company that's making a difference and makes people's lives better
                           by educating them, so I can go home each day feeling good about our contribution to the world.
                        </p>
                     </div>
                  </div>
                  <p></p>
                  <br>
               </div>
            </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /vertical tabs -->
         </div>
      </div>
      <div class="widgets-area">
         <div class="container ">
            <div class="blockquote-widget" >
               <div class="quote-content">
                  <blockquote>
                     <h3>Temporibus autem quibusdam et aut officiis debitis aut rerum saepe?</h3>
                     <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus idquod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>
                  </blockquote>
               </div>
               <div class="quote-button hidden-sm hidden-xs"><a href="blog-post.html" class="btn btn-primary">learn more</a></div>
            </div>
         </div>
         <!-- .testimonials -->
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
      <!-- .widgets-area -->
      
 
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

