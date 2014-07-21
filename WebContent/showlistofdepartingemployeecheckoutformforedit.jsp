<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<DepartingEmployeeCheckoutForm> departingEmployeeCheckoutFormList = DepartingEmployeeCheckoutForm.getAllDepartingEmployeeCheckoutForms();
	Iterator<DepartingEmployeeCheckoutForm> departingEmployeeCheckoutFormItr = departingEmployeeCheckoutFormList.iterator();
%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee">
			<td>Ser.No</td>
			<td>Employee Name</td>
			<td>Reason for Leaving</td>				
			<td>Edit</td>
		</tr>
		<%
			int serialCtr = 1;
			while(departingEmployeeCheckoutFormItr.hasNext()){
				DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = departingEmployeeCheckoutFormItr.next();
				Employee employee = Employee.getEmployee(departingEmployeeCheckoutForm.getEmployeeId());
				String fullName = employee.getFirstName()+" "+employee.getLastName();
				%>
				<tr>
					<td><%=serialCtr %></td>
					<td><%=fullName %></td>
					<td><%=departingEmployeeCheckoutForm.getReasonForLeaving() %></td>					
					<td>
						<a href="#.jsp" onclick="showDetailsOfThisDepartingEmployeeCheckoutFormForEdit(<%=departingEmployeeCheckoutForm.getId() %>);">Edit Detail</a>
						|
						<a href="#.jsp" onclick="hideDetailsOfThisDepartingEmployeeCheckoutForm(<%=departingEmployeeCheckoutForm.getId() %>);">Hide Detail</a>
					</td>
				</tr>
				<%
					String divId = "departingEmployeeCheckoutFormDetailDiv" + departingEmployeeCheckoutForm.getId();
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
	function showDetailsOfThisDepartingEmployeeCheckoutFormForEdit(departingEmployeeCheckoutFormId){
		var divId = "departingEmployeeCheckoutFormDetailDiv" + departingEmployeeCheckoutFormId;
		$('#'+divId).load('showdetailsofthisdepartingemployeecheckoutformforedit.jsp?departingEmployeeCheckoutFormId='+departingEmployeeCheckoutFormId);
	}
	
	function hideDetailsOfThisDepartingEmployeeCheckoutForm(departingEmployeeCheckoutFormId){
		var divId = "departingEmployeeCheckoutFormDetailDiv" + departingEmployeeCheckoutFormId;
		$('#'+divId).html('');
	}
</script>