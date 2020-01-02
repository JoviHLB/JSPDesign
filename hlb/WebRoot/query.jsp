<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML>
<head>
	<title>query</title>
</head>
<BODY bgcolor="grey"><center>
<Font size=2>
	<FORM action="query.jsp" method="post">
   			选择:<Select name="ziduan">
         	<Option value="sno">学号 
         	<Option value="name">姓名
         	<Option value="sex">性别
         	<Option value="birthday">生日
         	<Option value="identity">群众面貌
         	<Option value="mating">婚配情况
         	<Option value="rank">军衔
    	</Select>
   			含有:<INPUT type="text" name="keyWord" > 
        	<Input type=submit name="g" value="提交">
	</Form>

<%  String ziduan=request.getParameter("ziduan");
    String keyWord=request.getParameter("keyWord");
    if(ziduan==null||keyWord==null){
       ziduan="";
       keyWord="";
    }
    byte bb[]=keyWord.getBytes("iso-8859-1");
    keyWord=new String(bb);
    out.println("关键字 "+keyWord);
%>
 
 <inquire:keyWord ziduan="<%=ziduan %>" keyWord="<%=keyWord %>"/>
 查询到的记录:
 <br><%=foundResult %>
</Font></center></BODY></HTML>

