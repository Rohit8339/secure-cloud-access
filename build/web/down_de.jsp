<%-- 
    Document   : down_de
    Created on : 13 Nov, 2016, 2:03:05 PM
    Author     : kalai
--%>

<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

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
                            <li><a href="chome.jsp">Cloud Home</a></li>
                            <li><a href="user_de.jsp">Authentication</a></li>
                            <li><a href="file_de2.jsp">File Details</a></li>
                            <li><a href="user_req.jsp">User Request</a></li>
                            <li class="active"><a href="down_de.jsp">Download History</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                        <div class="searchform">
                            <form id="formsearch" name="formsearch" method="post" action="#">
                                <span>
                                    <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
                                </span>
                                <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
                            </form>
                        </div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize"> <img src="images/up.jpg" width="958" height="245" alt="" class="hbg_img" />

                    <!--- Start Body ------>  
                    <center><h3><font style="font-size: 20px; color: #2cadff ">File Details</font></h3></center>
                    <table border="1" style="text-align: center;margin-left: 280px">
                        <tr>
                            <th style="text-align: center;width: 70px; color: black; font-size: 14px ">File Name</th>
                            <th style="text-align: center;width: 100px;color: black; font-size: 14px">User Name</th>
                            <th style="text-align: center;width: 200px;color: black; font-size: 14px">Downloaded Time</th>
                        </tr>

                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                                     String  user=(String)session.getAttribute("sssname");
                            try {
                                con = DbConnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from downloads");
                                while (rs.next()) {

                        %>
                        <tr>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("filename")%></td>  
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("username")%></td>  
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("time")%></td> 
                           
                        </tr><tr />
                        <% }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table>

                    <!--- End Body ------>



                    <div class="clr"></div>
                </div>
            </div>
            <div class="fbg">

            </div>
            <div class="footer">

            </div>
        </div>
    </body>
</html>




