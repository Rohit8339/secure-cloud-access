<%-- 
    Document   : uhome
    Created on : Nov 10, 2016, 4:52:03 PM
    Author     : java4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Designing Secure and efficient biometric-based secure access mechanism for cloud services</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/radius.js"></script>
    </head>
     <style> 

            .inputs {
                background: #D6EAF8;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 200px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputs:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #2cadff, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .inputss {
                background: #D6EAF8;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 220px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputss:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #2cadff, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 8px 27px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 12px;
            }
            .buttonn {
                background-color: crimson; /* Green */
                border: none;
                color: white;
                padding: 8px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 12px;
            }
        </style> 
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('User Authorized Successfully');</script>
        <%            }
        %>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <br><h2><font style="font-size: 24px; font-style: inherit; font-family: fantasy; color: black">Designing Secure and efficient biometric-based secure access mechanism for cloud services</font></h2>
                    </div>
                    <div class="clr"></div>
                    <div class="menu_nav">
                        <ul>
                           
                          
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                        <div class="searchform">
                           
                        </div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize"> <img src="images/up.jpg" width="958" height="245" alt="" class="hbg_img" />
                    <div class="mainbar">
                    <div class="article">
                      <!--- Start Body ------>  
                      <%
                      String user=(String)session.getAttribute("sssname");
                      %>
                      <center><font style="font-family: fantasy; font-size: x-large; color: crimson; font-style: inherit">Biometric Verification System&nbsp; :</font>&nbsp;&nbsp;&nbsp;<br>
                                   <form id="formsearch" name="formsearch" method="post" action="verifyBiometric.jsp">
                                
                                
                       Choose Biometric Face Image: <input type="file"class="inputs" name="file1" required="" placeholder="photo" /><br>
                        <input type="hidden" value="2" name="status" />
                        <input type="Submit" value="VERIFY" class="button" >&nbsp;&nbsp;&nbsp;<input type="Submit" value="CLEAR" class="buttonn" >
                            </form>
                    </div>
                    </div>
                   
                    <div class="sidebar">
                        
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="fbg">
                <br><Br> <br><Br>
            </div>
            <div class="footer">
                <div class="footer_resize">
                    <p class="lf">Copyright &copy; <a href="#">SRITW</a>. All Rights Reserved</p>
                    <p class="rf">Design by <a target="_blank" href="#">Varsha</a></p>
                    <div class="clr"></div>
                </div>
            </div>
        </div>
    </body>
</html>
