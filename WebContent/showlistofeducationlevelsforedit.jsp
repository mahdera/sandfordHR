<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isUpdateable())
	{
	List<EducationLevel> educationLevelList = EducationLevel.getAllEducationLevels();
	Iterator<EducationLevel> educationLevelItr = educationLevelList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Education Levels</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Education Level</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	while(educationLevelItr.hasNext()){
		EducationLevel educationLevel = educationLevelItr.next();		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(educationLevel.getEducationLevel());
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="showEditFieldsOfEducationLevel(<%=educationLevel.getId()%>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
			<%
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");
	}
	else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="educationLevelEditDiv"></div>