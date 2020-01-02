<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>  
<head>
	<title>update</title>
</head>
  <body>
    <%	
  		String sno = request.getParameter("sno");
  		String name = request.getParameter("name");
  		String sex = request.getParameter("sex");
  		String birthday = request.getParameter("birthday");
  		String identity = request.getParameter("identity");
		String mating = request.getParameter("mating");
    	String rank = request.getParameter("rank");
    				
  	 %>
  	<%
  		Connection con;
    	Statement sql; 
    	ResultSet rs;
    	String condition1 = "update student set name= '"
    						+name+
    						"'where sno='"
    						+sno+"'"; 
    	String condition2 = "update student set sex= '"
    						+sex+
    						"'where sno='"
    						+sno+"'"; 
    	String condition3 = "update student set birthday= '"
    						+birthday+
    						"'where sno='"
    						+sno+"'"; 
    	String condition4 = "update student set identity= '"
    						+identity+
    						"'where sno='"
    						+sno+"'"; 	
    	String condition5 = "update student set mating= '"
    						+mating+
    						"'where sno='"
    						+sno+"'"; 
    	String condition6 = "update student set rank= '"
    						+rank+
    						"'where sno='"
    						+sno+"'";  	
    	try {  Class.forName("com.mysql.jdbc.Driver");
    	}
    	catch(Exception e){}
    	try {  
    		String uri= "jdbc:mysql://127.0.0.1/318dormitory";
          	String user="root";
          	String password="root";
          	con=DriverManager.getConnection(uri,user,password);
          	sql=con.createStatement();
          	sql.executeUpdate(condition1);
          	sql.executeUpdate(condition2);
          	sql.executeUpdate(condition3);
          	sql.executeUpdate(condition4);
          	sql.executeUpdate(condition5);
          	sql.executeUpdate(condition6);
        	con.close();
        }
        catch(Exception e){}
  	 %>
  	 <jsp:forward page="admin.jsp"/>
  </body>
</html>
