<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<body>
    <%
    	String sno = request.getParameter("sno");
    	String password = request.getParameter("password");
        String identity = request.getParameter("identity");
        if(sno==null || password==null || identity==null) {
        	%><jsp:forward page="login.jsp"></jsp:forward><%
        }
        if(identity.equals("admin")) {
        	if(sno.equals("admin") && password.equals("123")) {
        	%><jsp:forward page="admin.jsp"/><%
        	}
        }
        else {
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
    			st=conn.createStatement();
    			String sql = "select * from account where sno='"+sno+"' and password='"+password+"'";
    			rs = st.executeQuery(sql);
    			if(rs.next()) {
   	%>
    		<jsp:forward page="member.jsp">
    			<jsp:param value="<%=sno %>" name="sno"/>
    		</jsp:forward>
    <% 		}
    		else { 
    %>
    		<jsp:forward page="fail.jsp"/>
    <% 		}
    	}
    		catch(Exception e){}
    
        }
    %>
        
    
</body>
</html>
