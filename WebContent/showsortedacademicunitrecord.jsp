<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%
	//Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true)
	{
	String sortField = request.getParameter("sortField");
	String sortOrder = request.getParameter("sortOrder");
	
	List<Department> academicUnitList = null;
	Iterator<Department> academicUnitItr = null;
	
	if(sortField.equals("academic unit name")){		
		academicUnitList = Department.getSortedAcademicUnitRecordsByAcademicUnitName(sortOrder);
	}else if(sortField.equals("faculty name")){
		academicUnitList = Department.getSortedAcademicUnitRecordsByFacultyName(sortOrder);
	}
	
	academicUnitItr = academicUnitList.iterator();
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Academic Units</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Faculty Name</th>");
	out.print("<th>Academic Unit Code</th>");
	out.print("<th>Academic Unit Name</th>");
	int ctr = 1;
	while(academicUnitItr.hasNext()){
		Department academicUnit = academicUnitItr.next();
		if(ctr % 2 == 0)
	out.print("<tr>");
		else
	out.print("<tr class='bg'>");
	out.print("<td>");
		out.print(ctr);
	out.print("</td>");
	out.print("<td>");
		FacultyInstituteSchool faculty = FacultyInstituteSchool.getFaculty(academicUnit.getFacultyId());
		out.print(faculty.getFacultyName());
	out.print("</td>");
	out.print("<td>");
		out.print(academicUnit.getAcademicUnitCode());
	out.print("</td>");
	out.print("<td>");
		out.print(academicUnit.getAcademicUnitName());
	out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>