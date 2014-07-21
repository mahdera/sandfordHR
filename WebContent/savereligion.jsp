<%@page import="com.empadmin.server.classes.*" %>
<%
	String religion = request.getParameter("religion");
	Religion r = new Religion(religion);
	r.addReligion();				
%>
<p class="msg done">Religion saved successfully!</p>