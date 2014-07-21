<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	
	List<AbsentDayInformation> absentDayInformationList = AbsentDayInformation.getAllAbsentDayInformationsForYearAndMonth(year,month);
	if(!absentDayInformationList.isEmpty()){
		Iterator<AbsentDayInformation> absentDayInformationItr = absentDayInformationList.iterator();
		%>
			<table border="0" width="100%">
				<tr style="background:#eee;font-weight:bolder">
					<td>Ser.No</td>
					<td>Employee</td>
					<td>Number of Days Absent</td>	
					<td>Delete</td>				
				</tr>
				<%
					int ctr=1;
					while(absentDayInformationItr.hasNext()){
						AbsentDayInformation absentDayInformation = absentDayInformationItr.next();
						Employee employee = Employee.getEmployee(absentDayInformation.getEmployeeId());
						String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
						%>
							<tr>
								<td><%=ctr++ %></td>
								<td><%=fullName %></td>
								<td><%=absentDayInformation.getNumberOfDaysToBeDeducted() %></td>
								<td>
									<a href="#.jsp" onclick="deleteThisAbsentDayInformation(<%=absentDayInformation.getId() %>);">Delete</a>
								</td>
							</tr>							
						<%
					}//end while loop
				%>
			</table>
		<%
	}else{
		%>
			<p class="msg warning">There is/are no absent day information record saved in the database!</p>
		<%
	}
%>
<script type="text/javascript">
	function deleteThisAbsentDayInformation(absentDayInformationId){
		if(window.confirm('Are you sure you want to delete this absent day information record?')){
			var dataString = "absentDayInformationId="+absentDayInformationId;
			$.ajax({
			    url: 'deleteabsentdayinformation.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){				    		
			    		$('#absentDayInformationDetailDiv').load('showlistofabsentdayinformationparameterselectorbarfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}
	}
</script>