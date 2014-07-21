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
			<td>Delete</td>
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
						<a href="#.jsp" onclick="deleteThisClearanceFormDetail(<%=cleranceForm.getId() %>);">Delete Record</a>						
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
	function deleteThisClearanceFormDetail(clearanceFormId){
		if(window.confirm('Are you sure you want to delete this clearance form detail?')){
			var divId = "clearanceDetailDiv" + clearanceFormId;
			var dataString = "clearanceFormId="+clearanceFormId;
			$.ajax({
			    url: 'deletethisclearanceformdetail.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});			
		}
	}
	
	function hideDetailsOfThisClearanceForm(clearanceFormId){
		var divId = "clearanceDetailDiv" + clearanceFormId;
		$('#'+divId).html('');
	}
</script>