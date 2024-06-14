<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<% 
String a=new String();
String b=new String();
Statement pst1=null;
ResultSet rs1=null;
String muid1="";
try{ 
PreparedStatement pst=conn.prepareStatement("select * from users where userid1=? ");
String uid=request.getParameter("text1");
pst.setString(1,uid);
ResultSet rs=pst.executeQuery();
if(rs.next()){
out.println("h1 "+rs.getString(3));
a=rs.getString(1);
b=request.getParameter("text2");
rs.close();
pst1=conn.createStatement();
rs1=pst1.executeQuery("select userid1,password2 from users where userid1='"+a+"'");
if(rs1.next()){
if(b.equals(rs1.getString("password2")))
{
muid1=rs1.getString("userid1");
session.setAttribute("muidd",muid1);
response.sendRedirect("../../Frontend/Main/index.jsp");
} 
else { %>
<a href=../../Fontend/Login/login.html>give correct password</a>
<%   }}}
else{
%>
<a href=../../Frontend/Registration/rstep1.html>Please register</a>
<% }
}catch(Exception e){out.println("error in database connectivity occured");}%>