

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Network.download" %>

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
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Verification Successfully..');</script>
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
                            <li><a href="down.jsp">Back</a></li>
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
                   
                    <%
                    
                    
                    try {


            String fname = null;
            InputStream is = null;

            Connection con = DbConnection.getConnection();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();

           
            String fileid = (String) session.getAttribute("passd");
            String user = (String) session.getAttribute("sssname");
            System.out.println("FileID MAC :" + fileid);

            ResultSet rs = st.executeQuery("select * from file_storage where mac1='" + fileid + "' OR mac2='" + fileid + "' OR mac3='" + fileid + "'");

            if (rs.next()) {
                fname = rs.getString("filename");
                is = (InputStream) rs.getAsciiStream("file");
            } else {
                System.out.println("error while retreiving data");

            }

            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            String temp = null;
            StringBuffer sb = new StringBuffer();
            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }
            int IDE = 1;
            String content = new CaesarCipher().decrypt(sb.toString(), IDE);
            String s1="Blady";
			 String s2="jihad";
			 String s3="bicurious";
			 String s4="crack";
			 String s5="stupid";
			 String s6="nonsence";
			 String s7="useless";
			 String s8="idiot";
			 String s9="rascal";
			 String s10="kill";
			 String s11="sycho";
			 String s12="anal";
			 String s13="asshole";
			 String s14="assmunch";
			 String s15="erotic";
			 String s16="bbw";
			 String s17="cock";
			 String s18="boobs";
			 String s19="brunette";
			 String s20="bung hole";
                         String xx=content;
                         if(xx.indexOf(s1)>=0)
				{
					
					System.out.println(s1 +"=Found.......");
					xx =xx.replaceAll(s1,"*****");
					System.out.println(xx);
					
					
	
					

				}
				if(xx.indexOf(s2)>=0)
			 	{
					
						System.out.println(s2 +"=Found.......");
						 xx =xx.replaceAll(s2,"*****");
						 System.out.println(xx);
						
			 	}
			 
			 	
			 	if(xx.indexOf(s3)>=0)
		 		{
				
					System.out.println(s3 +"=Found.......");
					 xx=xx.replaceAll(s3,"****");
					
		 		}
			 		
				
				if(xx.indexOf(s4)>=0)
				{
					
					System.out.println(s4 +"=Found.......");
					 xx =xx.replaceAll(s4,"*****");
					
					
				}
				if(xx.indexOf(s5)>=0)
				{
					
					System.out.println(s5 +"= Found.......");
					xx =xx.replaceAll(s5,"*****");
					
					
				}
				if(xx.indexOf(s6)>=0)
				{
					
					System.out.println(s6 +"= Found.......");
					xx =xx.replaceAll(s6,"*****");
					
					
					
				}
				if(xx.indexOf(s7)>=0)
				{
					
					System.out.println(s7 +"= Found.......");
					xx =xx.replaceAll(s7,"*****");
					
					
				}
			 
				if(xx.indexOf(s8)>=0)
				{
					
					System.out.println(s8 +"= Found.......");
					xx =xx.replaceAll(s8,"*****");
					
				}
				if(xx.indexOf(s9)>=0)
				{
					
					System.out.println(s9 +"= Found.......");
					xx =xx.replaceAll(s9,"*****");
					
				}
				if(xx.indexOf(s10)>=0)
				{
					
					System.out.println(s10 +"= Found.......");
					xx =xx.replaceAll(s10,"*****");
					
					
				}
				
				if(xx.indexOf(s11)>=0)
				{
					
					System.out.println(s11 +"= Found.......");
					xx =xx.replaceAll(s11,"*****");
					
					 
				}
				
				if(xx.indexOf(s12)>=0)
				{
					
					System.out.println(s12 +"= Found.......");
					xx =xx.replaceAll(s12,"*****");
					
				}
				
				if(xx.indexOf(s13)>=0)
				{
					
					System.out.println(s13 +"= Found.......");
					xx =xx.replaceAll(s13,"*****");
					
					
				}
				
				if(xx.indexOf(s14)>=0)
				{
					
					System.out.println(s14 +"= Found.......");
					xx=xx.replaceAll(s14,"*****");
					
				}
				
				
				
				if(xx.indexOf(s15)>=0)
				{
					
					System.out.println(s15 +"= Found.......");
					xx =xx.replaceAll(s15,"*****");
					
					
				}
				
				if(xx.indexOf(s16)>=0)
				{
					
					System.out.println(s16 +"= Found.......");
					xx =xx.replaceAll(s16,"*****");
					
				}
				
				
				if(xx.indexOf(s17)>=0)
				{
					
					System.out.println(s17 +"= Found.......");
					xx =xx.replaceAll(s17,"*****");
					
				}
				
				if(xx.indexOf(s18)>=0)
				{
					
					System.out.println(s18 +"= Found.......");
					xx =xx.replaceAll(s18,"*****");
					
				}
				
				if(xx.indexOf(s19)>=0)
				{
					
					System.out.println(s19 +"= Found.......");
					xx =xx.replaceAll(s19,"*****");
					
				}
				
				if(xx.indexOf(s20)>=0)
				{
					
					System.out.println(s20 +"= Found.......");
					xx =xx.replaceAll(s20,"*****");
					
                                }
             %>
             <h4 align="center"> <font color="red"><B>(****) indicates Sparm words</b></font></h4>   
             <h1 align="center"><textArea rows="8" cols="80" readonly><%=xx%></textArea>   </h1>
                    
                    
                    <%


            Calendar cal = Calendar.getInstance();
            DateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            String time = dateformat.format(cal.getTime());
            System.out.println("download time:" + time);

            st1.executeUpdate("insert into downloads (filename,username,time)values('" + fname + "','" + user + "','" + time + "')");
           
        } catch (Exception e) {
            e.printStackTrace();
        } 
                    
                    
                    
                    
                    
                    
                    %>
                    
                    
                    
                    
                    

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



