<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<CleranceForm> clearanceFormList = CleranceForm.getAllCleranceForms();
	Iterator<CleranceForm> clearanceFormItr = clearanceFormList.iterator();
%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee">
			<td>Ser.No</td>
			<td>Employee Name</td>
			<td>Date Terminated</td>				
			<td>Edit</td>
		</tr>
		<%
			int serialCtr = 1;
			while(clearanceFormItr.hasNext()){
				CleranceForm cleranceForm = clearanceFormItr.next();
				Employee employee = Employee.getEmployee(cleranceForm.getEmployeeId());
				String fullName = employee.getFirstName()+" "+employee.getLastName();
				%>
				<tr>
					<td><%=serialCtr %></td>
					<td><%=fullName %></td>
					<td><%=cleranceForm.getTerminationDate() %></td>					
					<td>
						<a href="#.jsp" onclick="showDetailsOfThisClearanceFormForEdit(<%=cleranceForm.getId() %>);">Edit Detail</a>
						|
						<a href="#.jsp" onclick="hideDetailsOfThisClearanceForm(<%=cleranceForm.getId() %>);">Hide Detail</a>
					</td>
				</tr>
				<%
					String divId = "clearanceDetailDiv" + cleranceForm.getId();
				%>
				<tr>
					<td colspan="4">
						<div id="<%=divId %>"></div>
					</td>
				</tr>
				<%
				serialCtr++;
			}//end while loop
		%>
	</table>
</div>
<script type="text/javascript">
	function showDetailsOfThisClearanceFormForEdit(clearanceFormId){
		var divId = "clearanceDetailDiv" + clearanceFormId;
		$('#'+divId).load('showdetailsofthisclearanceformforedit.jsp?clearanceFormId='+clearanceFormId);
	}
	
	function hideDetailsOfThisClearanceForm(clearanceFormId){
		var divId = "clearanceDetailDiv" + clearanceFormId;
		$('#'+divId).html('');
	}
</script>