<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="keyWord" required="true" %>
<%@ attribute name="ziduan" required="true" %>
<%@ variable name-given="foundResult" scope="AT_END" %>
<%  
    String condition = "select * from student where"
    					+ziduan+"like '%"+keyWord+"'";
    StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    int n=0;
    try{  result.append("<table border=1>"); 
          String uri= "jdbc:mysql://127.0.0.1/318dormitory";
          String user="root";
          String password="root";
          con=DriverManager.getConnection(uri,user,password);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,"student",null);
          int �ֶθ���=0;
          result.append("<tr>");
          while(rs1.next()){
            	�ֶθ���++;
            	String clumnName=rs1.getString(4);
            	result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          
          rs = sql.executeQuery(condition);//ִ�г�������
          
          while(rs.next()){
             result.append("<tr>");
             for(int k=1;k<=�ֶθ���;k++) 
                result.append("<td>"+rs.getString(k)+"</td>");
             result.append("</tr>");
          }
          result.append("</table>");
          con.close();
     }
     catch(SQLException e){
        result.append("������ģ����ѯ����");
     }
     //����foundResult����: 
     jspContext.setAttribute("foundResult",new String(result));
%>
