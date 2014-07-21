<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="0" width="100%">
	<tr style="background:#ccc;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Employee</td>
		<td>Letter Submission Date</td>
		<td>Description</td>		
		<td>Edit</td>
	</tr>
	<%
		List<ResignationLetter> resignationLetterList = ResignationLetter.getAllResignationLetters();
		Iterator<ResignationLetter> resignationLetterItr = resignationLetterList.iterator();
		int ctr=1;
		while(resignationLetterItr.hasNext()){
			ResignationLetter resignationLetter = resignationLetterItr.next();
			Employee employee = Employee.getEmployee(resignationLetter.getEmployeeId());
			String fullName = employee.getFirstName()+" "+employee.getLastName();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=fullName %></td>
				<td><%=resignationLetter.getResignationLetterDate() %></td>
				<td><%=resignationLetter.getDescription() %></td>
				<td>
					<a href="#.jsp" onclick="showEditFieldsOfThisResignationLetter(<%=resignationLetter.getId() %>);">Edit</a>
				</td>
			</tr>
			<%
				String divId = "resignationLetterEditDiv" + resignationLetter.getId();
			%>
			<tr>
				<td colspan="5"><div id="<%=divId %>"></div></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showEditFieldsOfThisResignationLetter(resignationLetterId){
		var divId = "resignationLetterEditDiv" + resignationLetterId;
		$('#'+divId).load('showeditfieldsofthisresignationletter.jsp?resignationLetterId='+resignationLetterId);
	}
</script>