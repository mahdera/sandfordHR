<%@page import="com.empadmin.server.classes.*" %>
<%
	String collegeCode = request.getParameter("collegeCode");
	String collegeName = request.getParameter("collegeName");
	String collegeDescription = request.getParameter("collegeDescription");
	
		
	College college = new College(collegeCode,collegeName,collegeDescription);
	college.addCollege();
%>
<p class="msg done">College saved successfully!</p>