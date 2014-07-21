<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true){
%>
<%	
	List<Language> languageList = Language.getAllLanguages();
	Iterator<Language> languageItr = languageList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Languages for Delete</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Language</th>");	
	out.print("<th>Delete</th>");
	int ctr = 1;
	while(languageItr.hasNext()){
		Language lang = languageItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(lang.getLanguage());
			out.print("</td>");			
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="deleteThisLanguage(<%=lang.getId() %>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
			<%
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
<div id="languageEditDiv"></div>
