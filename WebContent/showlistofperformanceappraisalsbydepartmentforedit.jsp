<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	List<PerformanceAppraisal> performanceAppraisalList = PerformanceAppraisal.getAllPerformanceAppraisalsOfDepartment(departmentId);
	Iterator<PerformanceAppraisal> performanceAppraisalItr = performanceAppraisalList.iterator();	
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder;">
		<td>Full Name</td>
		<td>Position Title</td>
		<td>Employment Date</td>
		<td>Date of Appraisal</td>
		<td>Period Covered</td>
		<td>Edit Action</td>
	</tr>
	<%
		while(performanceAppraisalItr.hasNext()){
			PerformanceAppraisal performanceAppraisal = performanceAppraisalItr.next();
			Employee employee = Employee.getEmployee(performanceAppraisal.getEmployeeId());
			String fullName = employee.getFirstName()+" "+employee.getLastName();
			%>
				<tr>
					<td><%=fullName %></td>
					<td><%=performanceAppraisal.getPositionTitle() %></td>
					<td><%=performanceAppraisal.getEmploymentDate() %></td>
					<td><%=performanceAppraisal.getAppraisalDate() %></td>
					<td><%=performanceAppraisal.getPeriodCovered() %></td>
					<td>
						<a href="#.jsp" onclick="showPerformanceAppraisalDetailsForEdit(<%=performanceAppraisal.getId() %>)">Edit</a> | 
						<a href="#.jsp" onclick="hidePerformanceAppraisalDetailsForEdit(<%=performanceAppraisal.getId() %>);">Hide</a>
					</td>
				</tr>
				<%
					String divId = "employeePerformanceAppraisalDetailDiv" + performanceAppraisal.getId();
				%>
				<tr>
					<td colspan="6">
						<div id="<%=divId %>"></div>
					</td>
				</tr>
			<%
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showPerformanceAppraisalDetailsForEdit(performanceAppraisalId){
		var divId = "employeePerformanceAppraisalDetailDiv" + performanceAppraisalId;
		$('#'+divId).load('showperformanceappraisaldetailsforedit.jsp?performanceAppraisalId='+performanceAppraisalId);
	}
	
	function hidePerformanceAppraisalDetailsForEdit(performanceAppraisalId){
		var divId = "employeePerformanceAppraisalDetailDiv" + performanceAppraisalId;
		$('#'+divId).html('');
	}
</script>