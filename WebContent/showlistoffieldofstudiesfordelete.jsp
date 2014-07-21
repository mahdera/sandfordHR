<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isDeletable())
	{
	List<FieldOfStudy> fList = FieldOfStudy.getAllFieldOfStudies();
	Iterator<FieldOfStudy> fItr = fList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Field of Studies for delete</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Field of Study</th>");
	out.print("<th>Delete</th>");
	int ctr = 1;
	while(fItr.hasNext()){
		FieldOfStudy f = fItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(f.getFieldOfStudy());
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="deleteThisFieldOfStudy(<%=f.getId()%>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
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