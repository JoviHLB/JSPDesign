<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML>
<head>
	<title>query</title>
</head>
<BODY bgcolor="grey"><center>
<Font size=2>
	<FORM action="query.jsp" method="post">
   			ѡ��:<Select name="ziduan">
         	<Option value="sno">ѧ�� 
         	<Option value="name">����
         	<Option value="sex">�Ա�
         	<Option value="birthday">����
         	<Option value="identity">Ⱥ����ò
         	<Option value="mating">�������
         	<Option value="rank">����
    	</Select>
   			����:<INPUT type="text" name="keyWord" > 
        	<Input type=submit name="g" value="�ύ">
	</Form>

<%  String ziduan=request.getParameter("ziduan");
    String keyWord=request.getParameter("keyWord");
    if(ziduan==null||keyWord==null){
       ziduan="";
       keyWord="";
    }
    byte bb[]=keyWord.getBytes("iso-8859-1");
    keyWord=new String(bb);
    out.println("�ؼ��� "+keyWord);
%>
 
 <inquire:keyWord ziduan="<%=ziduan %>" keyWord="<%=keyWord %>"/>
 ��ѯ���ļ�¼:
 <br><%=foundResult %>
</Font></center></BODY></HTML>

