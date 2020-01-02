<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<title>delete</title>
</head>
  <body>
  	<%	
  		String sno = request.getParameter("sno");
  	%>
  	<%
  		Connection con;
    	Statement sql; 
    	ResultSet rs;
    	String condition = "delete from student where sno = '"+sno+"'";    	
    	try {  Class.forName("com.mysql.jdbc.Driver");
    	}
    	catch(Exception e){}
    	try {  
    		String uri= "jdbc:mysql://127.0.0.1/318dormitory";
          	String user="root";
          	String password="root";
          	con=DriverManager.getConnection(uri,user,password);
          	sql=con.createStatement();
          	sql.executeUpdate(condition);
        	con.close();
        }
        catch(Exception e){}
  	 %>
  	 <jsp:forward page="admin.jsp"/>
  </body>
</html>
