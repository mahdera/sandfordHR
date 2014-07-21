<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	//Account account = (Account) session.getAttribute("account");
	String functionalityName = "fisManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true)
	{
	List<FacultyInstituteSchool> fisList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
	Iterator<FacultyInstituteSchool> fisItr = fisList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Division for delete</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Division Code</th>");
	out.print("<th>Division Name</th>");
	out.print("<th>Division Description</th>");
	out.print("<th>Organization</th>");
	out.print("<th>Delete</th>");
	int ctr = 1;
	while(fisItr.hasNext()){
		FacultyInstituteSchool fis = fisItr.next();
		if(ctr % 2 == 0)
	out.print("<tr>");
		else
	out.print("<tr class='bg'>");
	out.print("<td>");
		out.print(ctr);
	out.print("</td>");
	out.print("<td>");
		out.print(fis.getFisCode());
	out.print("</td>");
	out.print("<td>");
		out.print(fis.getFisName());
	out.print("</td>");
	out.print("<td>");
		out.print(fis.getFisDescription());
	out.print("</td>");
	out.print("<td>");
		out.print(College.getCollege(fis.getCollegeId()).getCollegeName());
	out.print("</td>");
	out.print("<td>");
%>
					<a href="#.jsp" onclick="deleteThisFIS(<%=fis.getId() %>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
				<%
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="facultyEditDiv"></div>