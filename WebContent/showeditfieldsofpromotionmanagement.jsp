<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long promotionId = Long.parseLong(request.getParameter("promotionId"));	
	Promotion promotion = Promotion.getPromotion(promotionId);
	//now define the control names in here...
	String employeeControlName = "slctemployee" + promotionId;
	String fromDepartmentControlName = "slctpromotedfromdepartmentid" + promotionId;
	String toDepartmentControlName = "slctpromotedtodepartmentid" + promotionId;
	String promotionDetailControlName = "textareapromotiondetail" + promotionId;
	String promotionDateControlName = "txtpromotiondate" + promotionId;
	String jobControlName = "slctjob" + promotionId;
%>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr>
			<td colspan="2"><h2>Promotion Management Form</h2></td>
		</tr>
		<tr>
			<td align="right" width="30%">Employee:</td>
			<td><select name="<%=employeeControlName %>" id="<%=employeeControlName %>"
				style="width: 100%" disabled="disabled">					
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while (employeeItr.hasNext()) {
							Employee employee = employeeItr.next();
							String employeeFullName = employee.getFirstName() + " " + employee.getLastName();
							if(employee.getId() == promotion.getEmployeeId()){		
							%>
								<option selected="selected" value="<%=employee.getId()%>"><%=employeeFullName%></option>
							<%
							}else{
							%>
								<option value="<%=employee.getId()%>"><%=employeeFullName%></option>
							<%
							}
						}//end while loop
					%>
			</select></td>
		</tr>
		<tr>
			<td align="right">Promoted From Department:</td>
			<td>		
				<select name="<%=fromDepartmentControlName %>" id="<%=fromDepartmentControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentFromList = Department.getAllDepartments();
					Iterator<Department> departmentFromItr = departmentFromList.iterator();
					while(departmentFromItr.hasNext()){
						Department dept = departmentFromItr.next();
						if(dept.getId() == promotion.getFromDepartmentId()){
						%>
							<option value="<%=dept.getId() %>" selected="selected"><%=dept.getDepartmentName() %></option>
						<%
						}else{
						%>
							<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
						}
					}//end while loop
					%>
				</select>				
			</td>
		</tr>
		<tr>
			<td align="right">Promoted To Department:</td>
			<td>				
				<select name="<%=toDepartmentControlName %>" id="<%=toDepartmentControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentToList = Department.getAllDepartments();
					Iterator<Department> departmentToItr = departmentToList.iterator();
					while(departmentToItr.hasNext()){
						Department dept = departmentToItr.next();
						if(dept.getId() == promotion.getToDepartmentId()){
						%>
							<option value="<%=dept.getId() %>" selected="selected"><%=dept.getDepartmentName() %></option>
						<%
						}else{
						%>
							<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
						}
					}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Promotion Detail:</td>
			<td><textarea name="<%=promotionDetailControlName %>"
					id="<%=promotionDetailControlName %>" rows="4" style="width:100%"><%=promotion.getPromotionDetail() %></textarea></td>
		</tr>
		<tr>
			<td align="right">Promotion Date:</td>
			<td><input type="text" name="<%=promotionDateControlName %>" id="<%=promotionDateControlName %>" value="<%=promotion.getPromotionDate() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=promotionDateControlName %>')" />
			</td>
		</tr>
		<tr>
			<td align="right">Job Title</td>
			<td>
				<select name="<%=jobControlName %>" id="<%=jobControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Job> jobList = Job.getAllJobs();
						Iterator<Job> jobItr = jobList.iterator();
						while(jobItr.hasNext()){
							Job job = jobItr.next();
							if(job.getId() == promotion.getJobId()){
							%>
								<option selected="selected" value="<%=job.getId() %>"><%=job.getJobTitle() %></option>
							<%
							}else{
							%>
								<option value="<%=job.getId() %>"><%=job.getJobTitle() %></option>
							<%
							}
						}//end while loop
					%>
				</select>
			</td>
		</tr>		
		<tr>
			<td></td>
			<td align="right">
				<%
					String buttonId = "btnupdate" + promotionId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId %>"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var promotionId = "<%=promotionId%>";
		var buttonId = "btnupdate" + promotionId;
		
		$('#'+buttonId).click(function(){
			var employeeControlName = "slctemployee" + promotionId;
			var fromDepartmentControlName = "slctpromotedfromdepartmentid" + promotionId;
			var toDepartmentControlName = "slctpromotedtodepartmentid" + promotionId;
			var promotionDetailControlName = "textareapromotiondetail" + promotionId;
			var promotionDateControlName = "txtpromotiondate" + promotionId;
			var jobControlName = "slctjob" + promotionId;
			//now get the values using the control names just defined above...
			var employeeId = $('#'+employeeControlName).val();
			var fromDepartmentId = $('#'+fromDepartmentControlName).val();
			var toDepartmentId = $('#'+toDepartmentControlName).val();
			var promotionDetail = $('#'+promotionDetailControlName).val();
			var promotionDate = $('#'+promotionDateControlName).val();
			var jobId = $('#'+jobControlName).val();
			
			var dataString = "employeeId="+employeeId+"&fromDepartmentId="+fromDepartmentId+
			"&toDepartmentId="+toDepartmentId+"&promotionDetail="+promotionDetail+"&promotionDate="+
			promotionDate+"&jobId="+jobId+"&promotionId="+promotionId;
			
			var divId = "promotionEditDiv" + promotionId;
			
			$.ajax({
			    url: 'updatepromotionmanagement.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});
	});//end document.ready function
</script>