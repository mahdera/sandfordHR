<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isUpdateable())
	{
	List<Job> jobList = Job.getAllJobs();
	Iterator<Job> jobItr = jobList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Jobs for edit</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Job Title</th>");
	out.print("<th>Job Classification</th>");
	out.print("<th>Job Classification Number</th>");
	out.print("<th>Job Description</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	while(jobItr.hasNext()){
		Job j = jobItr.next();		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(j.getJobTitle());
			out.print("</td>");
			out.print("<td>");
				out.print(j.getJobClassification());				
			out.print("</td>");
			out.print("<td>");
				out.print(j.getJobClassificationNumber());				
			out.print("</td>");
			out.print("<td>");
				out.print(j.getJobDescription());				
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="showEditFieldsOfJob(<%=j.getId() %>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
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
<div id="jobEditDiv"></div>
<script type="text/javascript">
	function showEditFieldsOfJob(jobId){
		$('#jobEditDiv').load('showeditfieldsofjob.jsp?jobId='+jobId);
	}
</script>