<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>响应</title>
</head>
<body><center>
	<%
		String zhuce = request.getParameter("zhuce");
		String fankui = request.getParameter("fankui");
		String xiugai = request.getParameter("xiugai");
	 %>
	 <%
	 	if(zhuce != null) {
	 		Connection conn;
    		Statement st; 
    		ResultSet rs;
    		try {  
    			Class.forName("com.mysql.jdbc.Driver");
    		}
    		catch(Exception e){}
    		try { 
    			String uri= "jdbc:mysql://127.0.0.1/318dormitory";
    			conn=DriverManager.getConnection(uri+"?user=root&password=root");
    			st=conn.createStatement();String sno = request.getParameter("sno");
 				String password = request.getParameter("password");
	 			String sql = "insert into account values"+"("+"'"+sno+"','"+password+"'"+")";
	 			st.executeUpdate(sql);
	 			conn.close();
	 		}
	 		catch(Exception e){}
 				out.print("恭喜你注册成功，等待管理员(黄立兵)授权");
	 	}
	 	if(fankui != null) {
	 		out.print("反馈信息提交成功，等待管理员(黄立兵)处理");
	 	}
	 	if(xiugai != null) {
		 	out.print("密码修改成功！(数据库中实际密码还未修改)");
	 }
	  %>
</center></body>
</html>
