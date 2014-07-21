<%@page import="com.empadmin.server.classes.*"%>
<%
	String collegeNameUpdate = request.getParameter("collegeName");
	String collegeCodeUpdate = request.getParameter("collegeCode");
	String collegeDescriptionUpdate = request.getParameter("collegeDescription");
	
	College.updateCollege(collegeCodeUpdate,collegeNameUpdate,collegeDescriptionUpdate);
	
%>
<%@include file="showlistofcollegesforedit.jsp" %>
<p class="msg done">Campus updated successfully!</p>