<%@page import="com.empadmin.server.classes.*"%>
<%
	int fieldOfStudyId = Integer.parseInt(request.getParameter("fieldOfStudyId"));
	String fieldOfStudy = request.getParameter("fieldOfStudy");
	
	FieldOfStudy.updateFieldOfStudy(fieldOfStudyId,fieldOfStudy);			
%>
<%@include file="showlistoffieldofstudiesforedit.jsp" %>
<p class="msg done">Field of Study updated successfully!</p>