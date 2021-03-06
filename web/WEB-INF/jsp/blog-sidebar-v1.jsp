<%-- 
    Document   : blog-sideber-v1
    Created on : May 16, 2015, 1:58:11 AM
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
      <title>Blog</title>
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
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
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
                  <fieldset class="breadcrumb" style=""><span class="crumbs"><span class="crust homeCrumb" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="../../bestwebsoft_default.html" class="crumb text-muted" itemprop="url"><span itemprop="title">Home</span></a><span class="arrow"><span>/</span></span></span><span class="crust" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="about.html" class="crumb text-muted"><span>Blog</span></a></span></span></fieldset>
                  <div class="page-header">
                     <h1>Blog</h1>
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
            <div class="row">
               <div class="col-md-3 primary-sidebar widget-area" id="primary-sidebar">
                  <aside id="recent-posts-2" class="widget widget_recent_entries">
                     <h1 class="widget-title">Popular Posts</h1>
                     <ul>
                        <li class="media">
                           <a class="media-left" href="blog-sidebar-v1.html#"><img alt="medical_care_image" class="post_thumbnail" src="img/large/25.jpg"/></a>
                           <div class="media-body">
                              <h4 class="media-heading"><a href="blog-post.html" class="post_author">Urology</a></h4>
                              Urology is a branch of clinical medicine
                           </div>
                        </li>
                        <li class="media">
                           <a class="media-left" href="blog-sidebar-v1.html#"><img alt="medical_care_image" class="post_thumbnail" src="img/large/26.jpg"/></a>
                           <div class="media-body">
                              <h4 class="media-heading"><a href="blog-post.html" class="post_author">Blood Vessel Surgery</a></h4>
                              Duis aute irure dolor in reprehender esse
                           </div>
                        </li>
                        <li class="media">
                           <a class="media-left" href="blog-sidebar-v1.html#"><img alt="medical_care_image" class="post_thumbnail" src="img/large/27.jpg"/></a>
                           <div class="media-body">
                              <h4 class="media-heading"><a href="blog-post.html" class="post_author">Good Food for Good Health</a></h4>
                              Duis aute irure dolor in reprehender esse
                           </div>
                        </li>
                     </ul>
                  </aside>
                  <aside id="recent-comments-2" class="widget widget_recent_comments">
                     <h1 class="widget-title">Latest Comments</h1>
                     <ul id="recentcomments">
                        <li class="recentcomments">
                           <a href="doctor_profile.html" rel="external nofollow" class="url comment_author">John Smith </a> - <a href="blog-sidebar-v1.html#" rel="bookmark"><time class="comment-date" datetime="2014-09-02T09:57:53+00:00">September 2, 2014</time></a>
                           <p class="post-summary">I`m planning on eating healthy. Today I will go to clinic to be weighed.</p>
                        </li>
                        <li class="recentcomments">
                           <a href="doctor_profile.html" rel="external nofollow" class="url comment_author">Samwise Gamgee </a> - <a href="blog-sidebar-v1.html#" rel="bookmark"><time class="comment-date" datetime="2014-09-02T09:57:53+00:00">September 2, 2014</time></a>
                           <p class="post-summary">I just find it so hard. I don't know how to start doing it.....</p>
                        </li>
                        <li class="recentcomments">
                           <a href="doctor_profile.html" rel="external nofollow" class="url comment_author">Liu Kang </a> - <a href="blog-sidebar-v1.html#" rel="bookmark"><time class="comment-date" datetime="2014-09-02T09:57:53+00:00">September 2, 2014</time></a>
                           <p class="post-summary">Is there some innovations in male genitourinary disease prevention?</p>
                        </li>
                     </ul>
                  </aside>
                  <aside id="pages-2" class="widget widget_pages">
                     <h1 class="widget-title">Usefull links</h1>
                     <ul>
                        <li class="page_item page-item-17"><a class="text-muted" href="services.html"><i class="fa fa-check"></i><span>Flexible Care</span></a></li>
                        <li class="page_item page-item-17"><a class="text-muted" href="services.html"><i class="fa fa-check"></i><span>Personalised care </span></a></li>
                        <li class="page_item page-item-17"><a class="text-muted" href="services.html"><i class="fa fa-check"></i><span>Experienced staff</span></a></li>
                        <li class="page_item page-item-17"><a class="text-muted" href="services.html"><i class="fa fa-check"></i><span>Cosmetic Surgery</span></a></li>
                     </ul>
                  </aside>
                  <aside id="text-2" class="widget widget_text">
                     <h1 class="widget-title">Text Widget</h1>
                     <div class="textwidget">Ut enim ad minima veniam, quis nostrum exercitationem corporis suscipit laboriosam, nisi aliquid commodi consequatur?</div>
                  </aside>
               </div>
               <div class="col-md-9">
                  <div class="container-fluid blog">
                     <div class="tablenav top row">
                        <div class="count left"><b>15</b><span> posts from </span><b>1545</b><span> total</span></div>
                        <div class="sort right hidden-sm hidden-xs"><label>Sort BY:</label><button type="button" class="buttonWithCaret"><span class="btn-name">Rating</span><span class="caret"></span></button><button type="button" class="buttonWithCaret"><span class="btn-name">Popular</span><span class="caret"></span></button></div>
                     </div>
                     <div class="posts-loop row alternate">
                        <div class="bg-ajax-loader"><img alt="loader image" src="img/ajax-loader.gif"/></div>
                        <div class="post row">
                           <a class="pull-left post_image" href="blog-sidebar-v1.html#"><img alt="medical_care_image" src="img/large/25.jpg"/></a>
                           <div class="media-body">
                              <a class="doc_name" href="blog-post.html" target="_blank"><b class="doc_name inline-block">Blood Vessel Surgery</b><br/></a>
                              <p>Blood vessel surgery deals with vascular diseases, prevention of complications and endovascularor surgical treatment. Atherosclerosis, commonly called ?hardening of the arteries is the mostcommon problem for vascular surgeons.</p>
                              <p class="post_meta_bottom">posted <a href="blog-sidebar-v1.html#">4 days ago</a> in <a href="doctor_profile.html#reviews">Reviews</a><a href="blog-post.html" class="btn btn-primary pull-right">Read more</a></p>
                           </div>
                        </div>
                        <!-- .post -->
                        <div class="clear"></div>
                        <div class="post row">
                           <a class="pull-left post_image" href="blog-sidebar-v1.html#"><img alt="medical_care_image" src="img/large/26.jpg"/></a>
                           <div class="media-body">
                              <a class="doc_name" href="blog-post.html" target="_blank"><b class="doc_name inline-block">Urology</b><br/></a>
                              <p>Urology is a branch of clinical medicine concerned with treatment and diagnostics of diseaseof female urinary system and male genitourinary system. Urology specialists develop newprophylaxis methods, treatment and diagnostics to ensure treatment and diagnostics of thementioned diseases.</p>
                              <p class="post_meta_bottom">posted <a href="blog-sidebar-v1.html#">4 days ago</a> in <a href="doctor_profile.html#reviews">Reviews</a><a href="blog-post.html" class="btn btn-primary pull-right">Read more</a></p>
                           </div>
                        </div>
                        <!-- .post -->
                        <div class="clear"></div>
                        <div class="post row">
                           <div class="media-body">
                              <a class="doc_name" href="blog-post.html" target="_blank"><b class="doc_name inline-block">Good Food for Good Health</b><br/></a>
                              <p>Healthy food do not mean depriving yourself of the foods you love or strict dietary limitations.Rather, it is about having more energy, stabilizing your mood and feeling great.</p>
                              <p class="post_meta_bottom">posted <a href="blog-sidebar-v1.html#">4 days ago</a> in <a href="doctor_profile.html#reviews">Reviews</a><a href="blog-post.html" class="btn btn-primary pull-right">Read more</a></p>
                           </div>
                        </div>
                        <!-- .post -->
                        <div class="clear"></div>
                        <div class="post row">
                           <a class="pull-left post_image" href="blog-sidebar-v1.html#"><img alt="medical_care_image" src="img/large/27.jpg"/></a>
                           <div class="media-body">
                              <a class="doc_name" href="blog-post.html" target="_blank"><b class="doc_name inline-block">Sed ut perspiciatis omnis</b><br/></a>
                              <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus idquod maxime placeat aut facere possimus, omnis voluptas assumenda est, omnis dolor</p>
                              <p class="post_meta_bottom">posted <a href="blog-sidebar-v1.html#">4 days ago</a> in <a href="doctor_profile.html#reviews">Reviews</a><a href="blog-post.html" class="btn btn-primary pull-right">Read more</a></p>
                           </div>
                        </div>
                        <!-- .post -->
                        <div class="clear"></div>
                     </div>
                     <nav class="row">
                        <ul class="pagination pagination-lg hidden-xs">
                           <li><a href="blog-sidebar-v1.html#">Previous</a></li>
                           <li><a href="blog-sidebar-v1.html#">1</a></li>
                           <li><a href="blog-sidebar-v1.html#">2</a></li>
                           <li><a href="blog-sidebar-v1.html#">3</a></li>
                           <li class="more"><a href="blog-sidebar-v1.html#">...</a></li>
                           <li class="active"><a href="blog-sidebar-v1.html#">12</a></li>
                           <li><a href="blog-sidebar-v1.html#">13</a></li>
                           <li><a href="blog-sidebar-v1.html#">14</a></li>
                           <li><a href="blog-sidebar-v1.html#">Next</a></li>
                        </ul>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
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
                        <a href="blog-sidebar-v1.html#" title="">@bestwebsoft</a> The wise man therefore always holds in these matters to this principle.
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
