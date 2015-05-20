
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                     <td class="description">Medical Database</td>
                     <td class="phone">(555) 701 55 701</td>
                  </tr>
               </table>
               <!-- /.header-info -->
               <form action="index.html#" class="navbar-form hidden-sm navbar-right">
                  <div class="input-group header-search">
                     <div class="input-group-btn"><button class="btn btn-info"><span class="fa fa-search medical_search"></span></button></div>
                     <input type="search" value="Search on website" onfocus="if ( this.value == 'Search on website' ) { this.value = ''; }" onblur="if ( this.value == '' ) { this.value = 'Search on website'; }" class="search-query" />
                     <div class="input-group-btn"><button type="reset" class="btn btn-info reset"></button></div>
                  </div>
                  <!--.header-search-->
               </form>
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
				   
				   <a data-toggle="modal" href="#myModal1" class="btn btn-lg btn-default">Sign up</a></div>
					<!-- Modal -->
	  <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<button type="button" class="btn btn-primary">Enter Details</button>
			</div>
                        <form:form method="POST" commandName="test">
			<div class="modal-body">
                          
			<div class="form-group">
	   
                            <input type="text" class="form-control" id="fname" placeholder="Enter First Name" required>
	  </div>
	  
		<div class="form-group">
	  
                    <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" required>
	  </div>
	  
		<div class="form-group">

                    <input type="email" class="form-control" id="email" placeholder="Enter Email" required>
	  </div>
	  
                            <div class="form-group">
		
                                <input type="CNIC" class="form-control" id="cnic" placeholder="Enter CNIC" required>
	  </div>
	  
	  <div class="form-group">
	   
		<input type="password" class="form-control" id="password" placeholder="Enter Password" required>
	  </div>
	  
		<div class="form-group">
	   
		<input type="password" class="form-control" id="password1" placeholder="Re-enter Password"  required>
	  </div>  
	  
		<div class="form-group">
	   
		<div class="dropdown">
	  <select id="role" class="form-control" onclick='displayID()'  required>
	  <option>Role</option>
	  <option id="doc" value="doctor">Doctor</option>
	  <option id="pat" value="patient">Patient</option>
	  <option id="adm" value="admin">Admin</option>

	</select>
	</div>
	  </div>  
			
			<div class="form-group" id="pmdcID" style="display:none" >
	   
		<input type="text" class="form-control" id="pid" placeholder="Enter PMDC ID"  required>
	  </div>  
                          
			
			
			</div>
			<div class="modal-footer">
			 
			  <button type="submit"  class="btn btn-primary" >Sign Up</button>
			</div>
                              </form:form>
		  </div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	  </div><!-- /.modal -->
	  
	  <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<button type="button" class="btn btn-primary">Enter Details</button>
			</div>
			<div class="modal-body">
			<div class="form-group">
		<label for="CNIC1">CNIC</label>
		<input type="text" class="form-control" id="CNIC1" placeholder="Enter CNIC">
	  </div>
	  <div class="form-group">
		<label for="pass3">Password</label>
		<input type="password" class="form-control" id="pass3" placeholder="Enter Password">
	  </div>
			</div>
			<div class="modal-footer">
			 
			  <button type="button" class="btn btn-primary" data-dismiss="modal">Sign In</button>
			</div>
		  </div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	  </div><!-- /.modal -->
  
               <div class="navbar-collapse collapse top-menu">
                  <ul class="nav navbar-inner navbar-nav navbar-left">
                     <li class="active"><a href="index.html">Home</a></li>
                     <li><a href="about.html">About</a></li>
                     <li><a href="services.html">Services</a></li>
                     <li>
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuDivider1" data-toggle="dropdown">Our staff<span class="caret"></span></button>
                        <ul class="dropdown-menu" role="menu">
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="our_staff-v1.html">Our staff-v1</a></li>
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="our_staff-v2.html">Our staff-v2</a></li>
                        </ul>
                     </li>
                     <li class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuDivider2" data-toggle="dropdown">Blog<span class="caret"></span></button>
                        <ul class="dropdown-menu" role="menu">
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-v1.html">Blog-v1</a></li>
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-v2.html">Blog-v2</a></li>
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-sidebar-v1.html">Blog with sidebar v1</a></li>
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-sidebar-v2.html">Blog with sidebar v2</a></li>
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-sidebar-v3.html">Blog with sidebar v3</a></li>
                           <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-post.html">Blog post with comments</a></li>
                        </ul>
                     </li>
                     <li><a href="contact_us.html">Contact</a></li>
                     <li>
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuDivider3" data-toggle="dropdown">Misc<span class="caret"></span></button>
                        <ul class="dropdown-menu" role="menu">
                           <li><a href="404.html">404</a></li>
                           <li><a href="maintenance.html">Maintenance page</a></li>
                        </ul>
                     </li>
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
         <!-- .owl-carousel-->
         <div class="sticky hide-if-no-js">
            <div class="container">
               <form class="row" action="index.html#" >
                  <div class="form-group">
                     <ul id="sticky-tabs" class="nav nav-tabs">
                        <li class="active"><a href="index.html#book" data-toggle="tab">Book an appointment</a></li>
                        <li><a href="index.html#search" data-toggle="tab">Search specialist</a></li>
                        <li><a href="index.html#ask" data-toggle="tab">Ask a question</a></li>
                     </ul>
                     <!-- Tab panes -->
                     <div id="sticky-tabsContent" class="tab-content">
                        <div class="bg-ajax-loader"><img alt="loader image" src="<c:url value="/resource/img/ajax-loader.gif"/>"/></div>
                        <div class="tab-pane fade row controls active in" id="book">
                           <label class="col-md-4 col-sm-6 col-xs-12">
                              Practice area<br/>
                              <select data-autowidth="false" class="custom">
                                 <option disabled="disabled" selected="selected">Choose Category</option>
                                 <option>Surgery</option>
                                 <option>Dentist</option>
                                 <option>Medical insurance</option>
                                 <option>Another category</option>
                              </select>
                           </label>
                           <div id="book-a-date" class="col-md-4 col-sm-6 col-xs-12">Date<br/><span class="overlabel">Chose Date</span><input class="datepicker ll-skin-melon" type="text" placeholder="Select date" id="book_an_appointment_date"/></div>
                           <label class="col-md-3 col-sm-10 col-xs-12">
                              Time<br/>
                              <select data-customClass="time-select" data-autowidth="false" class="custom">
                                 <option disabled="disabled" selected="selected">Pick time</option>
                                 <option>10.00-11.00</option>
                                 <option>11.00-12.00</option>
                                 <option>13.00-14.00</option>
                              </select>
                           </label>
                           <div class="col-md-1 col-sm-2 col-xs-12 book-button"><a href="doctor_profile.html#book" class="btn btn-primary">Book</a></div>
                        </div>
                        <div class="tab-pane fade" id="search">
                           <div class="row controls">
                              <label class="col-md-4 col-xs-12 col-sm-6">
                                 speciality<br/>
                                 <select data-autowidth="false" class="custom" >
                                    <option>Chose speciality</option>
                                    <option>Surgeon</option>
                                    <option>Orthodont</option>
                                    <option>Pediator    </option>
                                    <option>One more speciality</option>
                                 </select>
                              </label>
                              <label class="col-md-3 col-xs-12 col-sm-6">
                                 Location<br/>
                                 <select data-autowidth="false" class="custom">
                                    <option disabled="disabled" selected="selected">Pick location</option>
                                    <option>Vancouver</option>
                                    <option>Ottawa</option>
                                    <option>Ontario</option>
                                 </select>
                              </label>
                              <label class="col-md-3 col-xs-12 col-sm-10">
                                 <span>Pick Rating</span><br/>
                                 <select data-autowidth="false" data-customClass="rating-select" class="custom rating-select">
                                    <option value="0" disabled="disabled" selected="selected">Pick rating</option>
                                    <option value="1" >1 star</option>
                                    <option value="2" >2 star</option>
                                    <option value="3" >3 star</option>
                                    <option value="4" >4 star</option>
                                    <option value="5" >5 star</option>
                                 </select>
                              </label>
                              <div class="col-md-2 col-xs-12 col-sm-2 book-button"><button id="search_btn" onclick="return false" class="btn btn-primary">Search</button></div>
                           </div>                 
                           
                           
                        
                        </div>
                        <!-- #search -->
                        <div class="tab-pane fade" id="ask">
                           <div class="bg-ajax-loader"><img alt="loader image" src="<c:url value="/resource/img/ajax-loader.gif"/>"/></div>
                           <div class="row controls">
                              <label class="col-md-4 col-xs-12 col-sm-12 for_text_input">Your Name<br/><input class="client_name" type="text" placeholder="Your Name"/></label><label class="col-md-4 col-xs-12 col-sm-12 for_text_input">Your Email<br/><input class="" type="text" placeholder="Your Email"/></label>
                              <label class="col-md-4 col-xs-12 col-sm-12 for_text_input" id="departament">
                                 Departament<br/>
                                 <select data-autowidth="false" class="custom">
                                    <option disabled="disabled" selected="selected">Select Department</option>
                                    <option>Departament 1</option>
                                    <option>Departament 2</option>
                                    <option>Departament 3</option>
                                 </select>
                              </label>
                              <br/><label class="col-md-10 col-xs-12 col-sm-10" id="ask_your_question">Your Question<br/><input class="ask_your_question" type="text" placeholder="..."/></label>
                              <div class="col-md-2 col-xs-12 col-sm-12"><button id="submit_search" onclick="return false" class="btn btn-primary">Submit</button></div>
                           </div>
                           <div class="tablenav top">
                              <div class="count left"><b>15</b><span> answers from </span><b>29</b><span> total</span></div>
                              <div class="sort right hidden-sm hidden-xs"><label>Sort BY:</label><button type="button" class="buttonWithCaret"><span class="btn-name">Rating</span><span class="caret"></span></button><button type="button" class="buttonWithCaret"><span class="btn-name">Popular</span><span class="caret"></span></button></div>
                              <div class="clear"></div>
                           </div>
                           <div class="answers-loop">
                              <div class="post">
                                 <header class="entry-header">
                                    <h1 class="entry-title"><a href="index.html#">Title example</a></h1>
                                 </header>
                                 <div class="entry-content clearfix">
                                    <p class="left">Et harum quidem rerum facilis est et expedita distinctio.Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilimpedit quo minus id quod maxime placeat facere possimus voluptasassumenda.</p>
                                    <a href="blog-post.html" class="btn btn-primary right">Learn More</a>
                                 </div>
                                 <div class="post-meta hidden-xs">
                                    <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a> <span class="wicked-margin"><a href="index.html#" class="text-muted">25 comments </a> ?<a href="index.html#" class="text-muted"> 128 views </a></span> </p>
                                 </div>
                              </div>
                              <div class="clear"></div>
                              <div class="divider"></div>
                              <div class="post">
                                 <header class="entry-header">
                                    <h1 class="entry-title"><a href="index.html#">Title example</a></h1>
                                 </header>
                                 <div class="entry-content clearfix">
                                    <p class="left">Et harum quidem rerum facilis est et expedita distinctio.Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilimpedit quo minus id quod maxime placeat facere possimus voluptasassumenda.</p>
                                    <a href="blog-post.html" class="btn btn-primary right">Learn More</a>
                                 </div>
                                 <div class="post-meta hidden-xs">
                                    <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a> <span class="wicked-margin"><a href="index.html#" class="text-muted">25 comments </a> ?<a href="index.html#" class="text-muted"> 128 views </a></span> </p>
                                 </div>
                              </div>
                              <div class="clear"></div>
                              <div class="divider"></div>
                              <div class="post">
                                 <header class="entry-header">
                                    <h1 class="entry-title"><a href="index.html#">Title example</a></h1>
                                 </header>
                                 <div class="entry-content clearfix">
                                    <p class="left">Et harum quidem rerum facilis est et expedita distinctio.Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilimpedit quo minus id quod maxime placeat facere possimus voluptasassumenda.</p>
                                    <a href="blog-post.html" class="btn btn-primary right">Learn More</a>
                                 </div>
                                 <div class="post-meta hidden-xs">
                                    <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a> <span class="wicked-margin"><a href="index.html#" class="text-muted">25 comments </a> ?<a href="index.html#" class="text-muted"> 128 views </a></span> </p>
                                 </div>
                              </div>
                              <div class="clear"></div>
                              <div class="divider"></div>
                              <div class="post">
                                 <header class="entry-header">
                                    <h1 class="entry-title"><a href="index.html#">Title example</a></h1>
                                 </header>
                                 <div class="entry-content clearfix">
                                    <p class="left">Et harum quidem rerum facilis est et expedita distinctio.Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilimpedit quo minus id quod maxime placeat facere possimus voluptasassumenda.</p>
                                    <a href="blog-post.html" class="btn btn-primary right">Learn More</a>
                                 </div>
                                 <div class="post-meta hidden-xs">
                                    <p>posted <a href="index.html#">4 days ago</a> in <a href="index.html#">Uncategorized</a> <span class="wicked-margin"><a href="index.html#" class="text-muted">25 comments </a> ?<a href="index.html#" class="text-muted"> 128 views </a></span> </p>
                                 </div>
                              </div>
                              <div class="clear"></div>
                           </div>
                           <div class="load-more hidden-xs"><a href="javascript:void(0)" class="bg-info">Learn More</a></div>
                        </div>
                        <!-- #ask -->
                     </div>
                     <!-- .tab-content -->
                  </div>
                  <!-- .form-group -->
               </form>
               <!-- form -->
            </div>
            <!-- .container -->
         </div>
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
            <div class="container quotes">
               <div class="blockquote-widget">
                  <div class="quote-content">
                     <blockquote>
                        <h3>Temporibus autem quibusdam et aut officiis debitis aut rerum saepe?</h3>
                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minusid quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.
                        <p>
                     </blockquote>
                  </div>
                  <div class="quote-button hidden-sm hidden-xs"><a href="blog-post.html" class="btn btn-primary">learn more</a></div>
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
                        <a href="index.html#" title="">@bestwebsoft</a> The wise man therefore always holds in these matters to this principle.
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
    if (document.getElementById('role').value === 'doctor') {
        document.getElementById('pmdcID').style.display = 'block';
    } else {
        document.getElementById('pmdcID').style.display = 'none';
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