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
	List<Vacancy> vList = Vacancy.getAllVacancies();
	Iterator<Vacancy> vItr = vList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Vacancies</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Vacancy Name</th>");
	out.print("<th>Job</th>");
	out.print("<th>Date Posted</th>");
	out.print("<th>Number of Employee Required</th>");
	out.print("<th>Number of Employee for Waiting List</th>");
	out.print("<th>Status</th>");
	int ctr = 1;
	while(vItr.hasNext()){
		Vacancy v = vItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(v.getVacancyName());
			out.print("</td>");
			out.print("<td>");
				out.print(Job.getJob(v.getJobId()).getJobClassification()+"<br/>"+Job.getJob(v.getJobId()).getJobDescription());
			out.print("</td>");
			out.print("<td>");
				out.print(v.getDatePosted());
			out.print("</td>");
			out.print("<td>");
				out.print(v.getNumberOfEmployeeRequired());
			out.print("</td>");
			out.print("<td>");
				out.print(v.getNumberOfEmployeeForWaitingList());
			out.print("</td>");
			out.print("<td>");
				out.print(v.getStatus());
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
