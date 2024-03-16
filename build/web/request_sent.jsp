<%-- 
    Document   : request_sent
    Created on : 13 Nov, 2016, 10:37:50 AM
    Author     : kalai
--%>

<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    String fname =request.getParameter("fname");
   String uname =request.getParameter("uname");
   String oname =request.getParameter("oname");
   
    int i = st.executeUpdate("insert into userrequests(username,filename,status,owner) values('"+uname+"','"+fname+"','Request','"+oname+"')");
    if (i != 0) {
        response.sendRedirect("file_de1.jsp?msg=Request sent successfully...");
    } else {
        response.sendRedirect("file_de1.jsp?msg=Error");
    }
%>
