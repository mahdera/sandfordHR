<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Permit> permitList = Permit.getAllPermits();
	Iterator<Permit> permitItr = permitList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bold">
		<td>EMPLOYEE NAME</td>
		<td colspan="3">WORK PERMIT</td>
		<td colspan="3">RESIDENCE PERMIT</td>
		<td colspan="4">PASSPORT</td>
		<td>Action</td>
	</tr>
	<tr style="background:#eee;font-weight:bold">
		<td>Name</td>
		<td>Permit No</td>
		<td>From</td>
		<td>Up To</td>
		<td>Id No</td>
		<td>From</td>
		<td>Up To</td>
		<td>Number</td>
		<td>Issue Date</td>
		<td>Expiry Date</td>
		<td>Dependent</td>
		<td>Delete</td>
	</tr>
	<%
		while(permitItr.hasNext()){
			Permit permit = permitItr.next();
			Employee employee = Employee.getEmployee(permit.getEmployeeId());
			String fullName = employee.getFirstName()+" "+employee.getLastName();
			%>
			<tr>
				<td><%=fullName %></td>
				<td><%=permit.getWorkPermitNumber() %></td>
				<td><%=permit.getWorkPermitFrom() %></td>
				<td><%=permit.getWorkPermitTo() %></td>
				<td><%=permit.getResidenceIdNumber() %></td>
				<td><%=permit.getResidencePermitFrom() %></td>
				<td><%=permit.getResidencePermitTo() %></td>
				<td><%=permit.getPassportNumber() %></td>
				<td><%=permit.getPassportIssueDate() %></td>
				<td><%=permit.getPassportExpiryDate() %></td>
				<td><%=permit.getDependent() %></td>		
				<td>
					<a href="#.jsp" onclick="deleteThisPermitRecord(<%=permit.getId() %>);">Delete</a>
				</td>		
			</tr>			
			<%
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deleteThisPermitRecord(permitId){
		if(window.confirm('Are you sure you want to delete this permit record?')){
			var dataString = "permitId="+permitId;
			$.ajax({
			    url: 'deletepermit.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){		
			    		$('#tabDetailDiv').load('showlistofpermitmanagementsfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}
	}
</script>