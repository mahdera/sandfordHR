<%@page import="com.empadmin.server.classes.*"%>
<%
	int userId = Integer.parseInt(request.getParameter("userId"));
	String userType = request.getParameter("userType");
	String fullName = request.getParameter("fullName");
	
	User.updateUser(userId,fullName,userType);		
%>
<%@include file="showlistofusersforedit.jsp" %>
<p class="msg done">User updated successfully!</p>