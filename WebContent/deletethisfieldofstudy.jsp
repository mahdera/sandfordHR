<%@page import="com.empadmin.server.classes.*" %>
<%
	int fieldOfStudyId = Integer.parseInt(request.getParameter("fieldOfStudyId"));
	FieldOfStudy.deleteFieldOfStudy(fieldOfStudyId);		
%>
<%@include file="showlistoffieldofstudiesfordelete.jsp" %>
<p class="msg done">Field of study deleted successfully!</p>

