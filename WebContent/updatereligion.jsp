<%@page import="com.empadmin.server.classes.*"%>
<%
	int religionId = Integer.parseInt(request.getParameter("religionId"));
	String religion = request.getParameter("religion");
	
	Religion.updateReligion(religionId,religion);			
%>
<%@include file="showlistofreligionsforedit.jsp" %>
<p class="msg done">Religion updated successfully!</p>