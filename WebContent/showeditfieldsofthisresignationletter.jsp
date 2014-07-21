<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long resignationLetterId = Long.parseLong(request.getParameter("resignationLetterId"));
	ResignationLetter resignationLetter = ResignationLetter.getResignationLetter(resignationLetterId);
	//now define the control names in here...
	String employeeControlName = "slctemployee" + resignationLetterId;
	String dateControlName = "txtresignationletterdate" + resignationLetterId;
	String descriptionControlName = "textareadescription" + resignationLetterId;
%>
<form>
	<table border="0" width="100%" style="background:#eee">
		<tr>
			<td width="30%">Please Select Employee:</td>
			<td>
				<select name="<%=employeeControlName %>" id="<%=employeeControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while(employeeItr.hasNext()){
							Employee employee = employeeItr.next();
							String fullName = employee.getFirstName()+" "+employee.getLastName();
							if(employee.getId() == resignationLetter.getEmployeeId()){
							%>
								<option value="<%=employee.getId() %>" selected="selected"><%=fullName %></option>
							<%
							}else{
							%>
								<option value="<%=employee.getId() %>"><%=fullName %></option>
							<%
							}
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td width="30%">Date of Submission of Resignation Letter:</td>
			<td>
				<input type="text" name="<%=dateControlName %>" id="<%=dateControlName %>" value="<%=resignationLetter.getResignationLetterDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=dateControlName %>');"/>
			</td>
		</tr>
		<tr>
			<td>Description</td>
			<td>
				<textarea name="<%=descriptionControlName %>" id="<%=descriptionControlName %>" rows="4" style="width:100%"><%=resignationLetter.getDescription() %></textarea>
			</td>
		</tr>
		<tr>
			<%
				String buttonId = "btnupdate" + resignationLetterId;
			%>
			<td colspan="2" align="right">
				<input type="button" value="Update" class="input-submit" id="<%=buttonId %>"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>			
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var resignationLetterId = "<%=resignationLetterId %>";
		var buttonId = "btnupdate" + resignationLetterId;		
		
		$('#'+buttonId).click(function(){
			//now define the control names in here...
			var employeeControlName = "slctemployee" + resignationLetterId;
			var dateControlName = "txtresignationletterdate" + resignationLetterId;
			var descriptionControlName = "textareadescription" + resignationLetterId;
			
			var employeeId = $('#'+employeeControlName).val();
			var letterDate = $('#'+dateControlName).val();
			var description = $('#'+descriptionControlName).val();
			
			var dataString = "&employeeId="+employeeId+"&letterDate="+letterDate+
			"&description="+description+"&resignationLetterId="+resignationLetterId;
			
			$.ajax({
			    url: 'updateresignationletter.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		var divId = "resignationLetterEditDiv" + resignationLetterId;
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
			
		});//end button.click function
	});//end document.ready function
</script>