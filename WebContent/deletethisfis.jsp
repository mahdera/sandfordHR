<%@page import="com.empadmin.server.classes.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	FacultyInstituteSchool.deleteFacultyInstituteSchool(fisId);
%>
<%@include file="showlistoffisfordelete.jsp" %>
<p class="msg done">Faculty deleted successfully!</p>