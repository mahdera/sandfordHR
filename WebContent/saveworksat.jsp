<%@page import="com.empadmin.server.classes.*"%>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	int facultyId = Integer.parseInt(request.getParameter("facultyId"));
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	
	
	java.util.Date d = new java.util.Date();
        int y = d.getYear();
        int m = d.getMonth();
        int k = d.getDate();
        y+=1900;
        m++;
        String currentDate = y+"-"+m+"-"+k;
        java.sql.Date empDate = java.sql.Date.valueOf(currentDate);
	WorksAt wAt = new WorksAt(empRecId,collegeId,facultyId,departmentId,empDate);
	wAt.addWorksAt();	
%>
<p class="msg done">Works at saved successfully!</p>