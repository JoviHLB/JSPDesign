<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>admin</title>
</head>
<body bgcolor="grey">
<center>
	<%
		Connection con;
    	Statement sql; 
    	ResultSet rs;
    	try {  Class.forName("com.mysql.jdbc.Driver");
    	}
    	catch(Exception e){}
    	try {  
    		String uri= "jdbc:mysql://127.0.0.1/318dormitory";
          	String user="root";
          	String password="root";
          	con=DriverManager.getConnection(uri,user,password);
          	sql=con.createStatement();
          	rs=sql.executeQuery("SELECT * FROM student");
          	out.print("所有宿舍成员信息如下：");
          	out.print("<br/>");
          	out.print("<table border=2>");
          	out.print("<tr>");
            out.print("<th width=50>"+"sno");
            out.print("<th width=50>"+"name");
            out.print("<th width=50>"+"sex");
            out.print("<th width=50>"+"birthday");
            out.print("<th width=50>"+"identity");
            out.print("<th width=50>"+"mating");
            out.print("<th width=50>"+"rank");
          	out.print("</TR>");
          	while(rs.next()){
            	out.print("<tr>");
              	out.print("<td >"+rs.getString(1)+"</td>"); 
              	out.print("<td >"+rs.getString(2)+"</td>");
              	out.print("<td >"+rs.getString(3)+"</td>"); 
              	out.print("<td >"+rs.getDate(4)+"</td>");
              	out.print("<td >"+rs.getString(5)+"</td>");
              	out.print("<td >"+rs.getString(6)+"</td>");
              	out.print("<td >"+rs.getString(7)+"</td>");
            	out.print("</tr>") ; 
    		}
    		out.print("</table>");
         	con.close();
    	}
    	catch(Exception e){}
	 %>
	 <br>
	 <form action="do.jsp" method="post">
	 	<input type="submit" value="添加信息" name="add">
	 	<input type="submit" value="删除信息" name="delete">
	 	<input type="submit" value="修改信息" name="update">
	 	<input type="submit" value="查询信息" name="query">
	 </form>
</center>
</body>
</html>
