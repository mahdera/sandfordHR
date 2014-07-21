<%@page import="com.empadmin.server.classes.*" %>
<%
	int religionId = Integer.parseInt(request.getParameter("religionId"));
	Religion.deleteReligion(religionId);			
%>
<%@include file="showlistofreligionsfordelete.jsp" %>
<p class="msg done">Religion deleted successfully!</p>

