<%@page import="com.empadmin.server.classes.*" %>
<%
	int collegeCode = Integer.parseInt(request.getParameter("collegeCode"));
	College.deleteCollege(collegeCode);
%>
<%@include file="showlistofcollegesfordelete.jsp" %>
<p class="msg done">Campus updated successfully!</p>