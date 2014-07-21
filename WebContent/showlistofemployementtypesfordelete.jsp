<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isDeletable())
	{
	List<EmployementType> empTypeList = EmployementType.getAllEmployementTypes();
	Iterator<EmployementType> empTypeItr = empTypeList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Employement types for delete</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Employement Type</th>");
	out.print("<th>Delete</th>");
	int ctr = 1;
	while(empTypeItr.hasNext()){
		EmployementType eT = empTypeItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(eT.getEmployementType());
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="deleteThisEmployementType(<%=eT.getId()%>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
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
<div id="employeeTypeEditDiv"></div>