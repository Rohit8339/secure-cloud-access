<%-- 
    Document   : response
    Created on : 13 Nov, 2016, 2:13:00 PM
    Author     : kalai
--%>

<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();   Statement st1 = con.createStatement(); Statement st2 = con.createStatement();
    String mac1 =request.getParameter("id");
    ResultSet rs=st.executeQuery("select * from userrequests where id='"+mac1+"'");
    if(rs.next()){
                        ResultSet rs1=st1.executeQuery("select * from file_view where file_name='"+rs.getString("filename") +"' and username='"+rs.getString("owner") +"'");
                         if(rs1.next()){
                             int i=st2.executeUpdate("update userrequests set status='Yes',mac1='"+rs1.getString("mac1") +"',mac2='"+rs1.getString("mac2") +"',mac3='"+rs1.getString("mac3") +"' where id='"+mac1+"'");
                         
    if (i != 0) {
        response.sendRedirect("user_req.jsp?msg=successfully...");
    } else {
        response.sendRedirect("user_req.jsp?msg=Error");
    }}}
%>
 