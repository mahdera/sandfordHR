<%@page import="com.empadmin.server.classes.*" %>
<%
	String fieldOfStudy = request.getParameter("fieldOfStudy");
	FieldOfStudy f = new FieldOfStudy(fieldOfStudy);
	f.addFieldOfStudy();			
%>
<p class="msg done">Field of study saved successfully!</p>