<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
    <title>318</title>
</head>

  <body bgcolor="grey">
  <font size="6">
      <center>
        <form action="check.jsp" method="post" name="form">
  			<font color="red" size="9">Welcome to 318 dormitory-login.</font>
    	    <br>
    	    <br>
    	    <br>
    	    <br>学&nbsp;号：<input type="text" name="sno">
    	    <br>密&nbsp;码：<input type="password" name="password">
    	    <br>
            <input type="radio" name="identity" value="admin"><font color="black" size="3">Manager</font>
            <input type="radio" name="identity" value="member"><font color="black" size="3">Member</font>
            <input type="submit" value="登录" name="submit">
            &nbsp;<a href="sign-up.jsp"><font color="black" size="3">注册</font></a>
            <br><font color="black" size="3">友情链接：</font>
            <a href="login2.jsp"><font color="black" size="3">320</font></a>
            &nbsp;<a href="login3.jsp"><font color="black" size="3">321</font></a>
        </form>
      </center>
  </font>  
  </body>
</html>
