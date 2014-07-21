<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isReadable()){
%>
<%	
	List<FieldOfStudy> fList = FieldOfStudy.getAllFieldOfStudies();
	Iterator<FieldOfStudy> fItr = fList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Field of Studies</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Field of Study</th>");
	int ctr = 1;
	while(fItr.hasNext()){
		FieldOfStudy fS = fItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(fS.getFieldOfStudy());
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");	
%>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>
