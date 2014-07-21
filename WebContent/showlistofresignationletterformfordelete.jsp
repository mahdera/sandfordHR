<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="0" width="100%">
	<tr style="background:#ccc;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Employee</td>
		<td>Letter Submission Date</td>
		<td>Description</td>		
		<td>Delete</td>
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
					<a href="#.jsp" onclick="deleteThisResignationLetter(<%=resignationLetter.getId() %>);">Delete</a>
				</td>
			</tr>			
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deleteThisResignationLetter(resignationLetterId){
		if(window.confirm("Are you sure you want to delete this resignation letter?")){
			var dataString = "resignationLetterId="+resignationLetterId;
			$.ajax({
			    url: 'deleteresignationletter.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		alert(response);
			    		$('#formDetailDiv').load('showlistofresignationletterformfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}
	}
</script>