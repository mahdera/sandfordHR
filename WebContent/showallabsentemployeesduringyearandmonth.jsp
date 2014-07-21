<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div id="printReportDiv">
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	
	//now get all absent days and their counts....
	List<AbsentBean> absentBeanList = Attendance.getAllAbsentBeansDuring(year, month);
	if(!absentBeanList.isEmpty()){
		Iterator<AbsentBean> absentBeanItr = absentBeanList.iterator();
		%>
			<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
				<tr style="background:#eee;font-weight:bolder">
					<td>Ser.No</td>
					<td>Id Number</td>
					<td>Employee</td>
					<td>Number of Days Absent</td>					
				</tr>
				<%
					int ctr = 1;
					while(absentBeanItr.hasNext()){
						AbsentBean absentBean = absentBeanItr.next();
						Employee employee = Employee.getEmployee(absentBean.getEmployeeId());
						if(employee != null){
							String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
							%>
								<tr>
									<td><%=ctr++ %></td>
									<td><%=employee.getEmployeeIdNumber() %></td>
									<td><%=fullName %></td>
									<td><%=absentBean.getAbsentDays() %></td>
								</tr>
							<%
						}//end if condition.
					}//end while loop
				%>
			</table>
		<%
	}else{
		%>
			<p class="msg warning">There is/are no absent employee record(s) saved in the database!</p>
		<%
	}
%>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>