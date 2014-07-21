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
	</tr>
	<%
		PermitAlertLookup permitAlertLookup = PermitAlertLookup.getMaxPermitAlertLookupValue();
		int workPermitLimit = permitAlertLookup.getWorkPermitPeriod();
		int residencePermitLimit = permitAlertLookup.getResidencePermitPeriod();
		int passportExpierLimit = permitAlertLookup.getPassportExpiryPeriod();
		
		while(permitItr.hasNext()){
			Permit permit = permitItr.next();
			Employee employee = Employee.getEmployee(permit.getEmployeeId());
			String fullName = employee.getFirstName()+" "+employee.getLastName();			
			%>
			<tr>
				<td><%=fullName %></td>
				<td><%=permit.getWorkPermitNumber() %></td>
				<td><%=permit.getWorkPermitFrom() %></td>
				<%
					if(Permit.isThisPermitRecordLessThanItsLimitPeriod(permit.getId(),"Work",workPermitLimit)){
				%>
						<td style="color:red;font-weight:bolder"><%=permit.getWorkPermitTo() %></td>
				<%
					}else{
				%>
						<td><%=permit.getWorkPermitTo() %></td>
				<%
					}
				%>
				<td><%=permit.getResidenceIdNumber() %></td>
				<td><%=permit.getResidencePermitFrom() %></td>
				<%
					if(Permit.isThisPermitRecordLessThanItsLimitPeriod(permit.getId(),"Residence",residencePermitLimit)){
				%>
						<td style="color:red;font-weight:bolder"><%=permit.getResidencePermitTo() %></td>
				<%
					}else{
				%>
						<td><%=permit.getResidencePermitTo() %></td>	
				<%
					}
				%>
				<td><%=permit.getPassportNumber() %></td>
				<td><%=permit.getPassportIssueDate() %></td>
				<%
					if(Permit.isThisPermitRecordLessThanItsLimitPeriod(permit.getId(),"Passport",passportExpierLimit)){
				%>
						<td style="color:red;font-weight:bolder"><%=permit.getPassportExpiryDate() %></td>
				<%
					}else{
				%>
						<td><%=permit.getPassportExpiryDate() %></td>
				<%
					}
				%>
				<td><%=permit.getDependent() %></td>				
			</tr>
			<%
		}//end while loop
	%>
</table>