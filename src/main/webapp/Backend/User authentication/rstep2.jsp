<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp"%>
<%try{
PreparedStatement pst=conn.prepareStatement("insert into users values(?,?,?,?)");
pst.setString(1,request.getParameter("uname"));
pst.setString(2,request.getParameter("password"));
pst.setString(3,request.getParameter("name"));
pst.setString(4,request.getParameter("email"));
int t=pst.executeUpdate();
if(t>0){
	response.sendRedirect("../../Frontend/login.html");
	out.println("Registered Succcessfully, pls login");
	conn.close();
	}
}catch(Exception e){
response.sendRedirect("../../Frontend/rstep1.html");
out.println("try again");}
%>