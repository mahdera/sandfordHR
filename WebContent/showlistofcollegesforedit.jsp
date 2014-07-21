<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "collegeManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isUpdateable())
	{
	List<College> collegeList = College.getAllColleges();
	Iterator<College> collegeItr = collegeList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Colleges for edit</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>College Code</th>");
	out.print("<th>College Name</th>");
	out.print("<th>College Description</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	while(collegeItr.hasNext()){
		College college = collegeItr.next();
		if(ctr % 2 == 0)
	out.print("<tr>");
		else
	out.print("<tr class='bg'>");
	out.print("<td>");
		out.print(ctr);
	out.print("</td>");
	out.print("<td>");
		out.print(college.getCollegeCode());
	out.print("</td>");
	out.print("<td>");
		out.print(college.getCollegeName());
	out.print("</td>");
	out.print("<td>");
		out.print(college.getCollegeDescription());
	out.print("</td>");
	out.print("<td>");
%>
					<a href="#.jsp" onclick="showEditFieldsOfCollege(<%=college.getId() %>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
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
<div id="campusEditDiv"></div>