<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>do</title>
</head>
<body bgcolor="grey">
<center>
	<%
		String query = request.getParameter("query");
		if(query != null) {
			%><jsp:forward page="query.jsp"/><%
		}
		String add = request.getParameter("add");
		String delete = request.getParameter("delete");
		String update = request.getParameter("update");
    %>
    <%
    	if(add != null) {
    		%>
    			<form action="add.jsp" method="post">
    			<table border="2">
    				<tr>
    					<td>sno</td>
    					<td><input type="text" name="sno"/></td>
    				</tr>
    				<tr>
    					<td>name</td>
    					<td><input type="text" name="name"/></td>
    				</tr>
    				<tr>
    					<td>sex</td>
    					<td><input type="text" name="sex"/></td>
    				</tr>
    				<tr>
    					<td>birthday</td>
    					<td><input type="text" name="birthday"/></td>
    				</tr>
    				<tr>
    					<td>identity</td>
    					<td><input type="text" name="identity"/></td>
    				</tr>
    				<tr>
    					<td>mating</td>
    					<td><input type="text" name="mating"/></td>
    				</tr>
    				<tr>
    					<td>rank</td>
    					<td><input type="text" name="rank"/></td>
    				</tr>
    			</table>
    			<input type="submit" value="确认添加" name="add">
    			</form>
    		<%
    	}
    %>
    <%
    	if(update != null) {
    		%>
    			<form action="update.jsp" method="post">
    			<table border="2">
    				<tr>
    					<td>sno</td>
    					<td><input type="text" name="sno"/></td>
    				</tr>
    				<tr>
    					<td>name</td>
    					<td><input type="text" name="name"/></td>
    				</tr>
    				<tr>
    					<td>sex</td>
    					<td><input type="text" name="sex"/></td>
    				</tr>
    				<tr>
    					<td>birthday</td>
    					<td><input type="text" name="birthday"/></td>
    				</tr>
    				<tr>
    					<td>identity</td>
    					<td><input type="text" name="identity"/></td>
    				</tr>
    				<tr>
    					<td>mating</td>
    					<td><input type="text" name="mating"/></td>
    				</tr>
    				<tr>
    					<td>rank</td>
    					<td><input type="text" name="rank"/></td>
    				</tr>
    			</table>
    			<input type="submit" value="确认修改" name="update">
    			</form>
    		<%
    	}
     %>
     <%
    	if(delete != null) {
    		%>
    			<form action="delete.jsp" method="post">
    			<table border="2">
    				<tr>
    					<td>sno</td>
    					<td><input type="text" name="sno"/></td>
    				</tr>
    			</table>
    			<input type="submit" value="确认删除" name="delete">
    			</form>
    		<%
    	}
     %>
</center>
</body>
</html>
