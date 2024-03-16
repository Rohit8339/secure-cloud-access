
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;


String home = System.getProperty("user.home");
    String name = (String)session.getAttribute("sssname");

        
                try { con = DbConnection.getConnection();
        st = con.createStatement();
                    rs = st.executeQuery("select * from register where name='" + name + "'");
                    if(rs.next()) {
                        session.setAttribute("sssname", rs.getString("name"));
                        session.setAttribute("sssemail", rs.getString("email"));
                        session.setAttribute("sssstate", rs.getString("state"));
                        session.setAttribute("ssscountry", rs.getString("country"));
                        InputStream in = rs.getBinaryStream("photo");
                        OutputStream f = new FileOutputStream(new File(home+"/Downloads/Output.jpg"));
                        int cx = 0;
                        while ((cx = in.read()) > -1) {
					f.write(cx);
				}
                                f.close();
				in.close();
                    }
                 } catch (Exception ex) {
                    ex.printStackTrace(); 
                 }
                                
                     long start = System.currentTimeMillis();
    File file= new File("C:/Gallery/"+request.getParameter("file1"));
    BufferedImage image = ImageIO.read(file);
 int width = image.getWidth(null);
    int height = image.getHeight(null);
int[][] clr=  new int[width][height];
File files= new File(home+"/Downloads/Output.jpg");
                                
    BufferedImage images = ImageIO.read(files);
 int widthe = images.getWidth(null);
    int heighte = images.getHeight(null);
int[][] clre=  new int[widthe][heighte];
int smw=0;
int smh=0;
int p=0;
//CALUCLATING THE SMALLEST VALUE AMONG WIDTH AND HEIGHT
if(width>widthe){ smw =widthe;}
else {smw=width;}
if(height>heighte){smh=heighte;}
else {smh=height;}
//CHECKING NUMBER OF PIXELS SIMILARITY
for(int a=0;a<smw;a++){
for(int b=0;b<smh;b++){
clre[a][b]=images.getRGB(a,b);
clr[a][b]=image.getRGB(a,b);
if(clr[a][b]==clre[a][b]) {p=p+1;}
}}

float w,h=0;
if(width>widthe) {w=width;}
else {w=widthe;}
if(height>heighte){ h = height;}
else{h = heighte;}
float s = (smw*smh);
//CALUCLATING PERCENTAGE
float x =(100*p)/s;            
                                
  if(x >=0.80000000){                      
                      
                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("user.jsp?msgg=failed");
                    }
               
               
  

%>