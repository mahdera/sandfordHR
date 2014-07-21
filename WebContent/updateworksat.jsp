<%@page import="com.empadmin.server.classes.*" %>
<%
	long worksAtId = Long.parseLong(request.getParameter("worksAtId"));
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	int fisId = Integer.parseInt(request.getParameter("facultyId"));
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	//out.print(worksAtId+":"+collegeId+":"+fisId+":"+departmentId);
	WorksAt.updateWorksAt(worksAtId,collegeId,fisId,departmentId);	
%>
<p class="msg done">Works at updated successfully!</p>