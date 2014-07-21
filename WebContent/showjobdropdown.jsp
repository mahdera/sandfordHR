<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int rowId = Integer.parseInt(request.getParameter("newRowId"));
	String selectName = "slctjob"+rowId;
	
	List<Job> jList = Job.getAllJobs();
	Iterator<Job> jItr = jList.iterator();
	
	out.print("<select name='"+selectName+"' id='"+selectName+"' style='width:100%'>");
		out.print("<option value='' selected='selected'>--Select--</option>");
		while(jItr.hasNext()){
			Job j = jItr.next();
			%>
			<option value="<%=j.getId() %>" <%=j.getJobDescription() %>><%=j.getJobClassification() %>: <%=j.getJobClassificationNumber() %></option>
			<%
		}//end while loop
	out.print("</select>");
		//out.print(selectName);
%>