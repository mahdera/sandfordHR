<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	//now get all performance evaluations for this particular employee...
	List<PerformanceAppraisal> performanceAppraisalList = PerformanceAppraisal.getAllPerformanceAppraisalsForThisEmployee(employeeId);
	Iterator<PerformanceAppraisal> performanceAppraisalItr = performanceAppraisalList.iterator();	
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No</td>
		<td>Appraisal Date</td>
		<td>Period Covered</td>
		<td>Position Title </td>
		<td>Department</td>		
		<td>View Detail</td>
	</tr>
	<%
		int ctr=1;
		while(performanceAppraisalItr.hasNext()){
			PerformanceAppraisal performanceAppraisal = performanceAppraisalItr.next();
			Department department = Department.getDepartment(performanceAppraisal.getDepartmentId());
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=performanceAppraisal.getAppraisalDate() %></td>
				<td><%=performanceAppraisal.getPeriodCovered() %></td>
				<td><%=performanceAppraisal.getPositionTitle() %></td>
				<td><%=department.getDepartmentName() %></td>
				<td>
					<a href="#.jsp" onclick="showPerformanceAppraisalDetail(<%=performanceAppraisal.getId() %>);">Details</a>
				</td>
			</tr>
			<%
				String divId = "performanceAppraisalDiv" + performanceAppraisal.getId();
			%>
			<tr>
				<td colspan="6">
					<div id="<%=divId%>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showPerformanceAppraisalDetail(performanceAppraisalId){
		var divId = "performanceAppraisalDiv" + performanceAppraisalId;
		$('#'+divId).load('showperformanceappraisaldetailsreport.jsp?performanceAppraisalId='+performanceAppraisalId);
	}
	
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>