<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long demotionId = Long.parseLong(request.getParameter("demotionId"));	
	Demotion demotion = Demotion.getdemotion(demotionId);
	//now define the control names in here...
	String employeeControlName = "slctemployee" + demotionId;
	String fromDepartmentControlName = "slctdemotedfromdepartmentid" + demotionId;
	String toDepartmentControlName = "slctdemotedtodepartmentid" + demotionId;
	String demotionDetailControlName = "textareademotiondetail" + demotionId;
	String demotionDateControlName = "txtdemotiondate" + demotionId;
	String jobControlName = "slctjob" + demotionId;
%>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr>
			<td colspan="2"><h2>Demotion Management Form</h2></td>
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
							if(employee.getId() == demotion.getEmployeeId()){		
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
			<td align="right">Demoted From Department:</td>
			<td>		
				<select name="<%=fromDepartmentControlName %>" id="<%=fromDepartmentControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentFromList = Department.getAllDepartments();
					Iterator<Department> departmentFromItr = departmentFromList.iterator();
					while(departmentFromItr.hasNext()){
						Department dept = departmentFromItr.next();
						if(dept.getId() == demotion.getFromDepartmentId()){
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
			<td align="right">Demoted To Department:</td>
			<td>				
				<select name="<%=toDepartmentControlName %>" id="<%=toDepartmentControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentToList = Department.getAllDepartments();
					Iterator<Department> departmentToItr = departmentToList.iterator();
					while(departmentToItr.hasNext()){
						Department dept = departmentToItr.next();
						if(dept.getId() == demotion.getToDepartmentId()){
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
			<td align="right">Demotion Detail:</td>
			<td><textarea name="<%=demotionDetailControlName %>"
					id="<%=demotionDetailControlName %>" rows="4" style="width:100%"><%=demotion.getDemotionDetail() %></textarea></td>
		</tr>
		<tr>
			<td align="right">Demotion Date:</td>
			<td><input type="text" name="<%=demotionDateControlName %>" id="<%=demotionDateControlName %>" value="<%=demotion.getDemotionDate() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=demotionDateControlName %>')" />
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
							if(job.getId() == demotion.getJobId()){
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
					String buttonId = "btnupdate" + demotionId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId %>"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var demotionId = "<%=demotionId%>";
		var buttonId = "btnupdate" + demotionId;
		
		$('#'+buttonId).click(function(){			
			var employeeControlName = "slctemployee" + demotionId;
			var fromDepartmentControlName = "slctdemotedfromdepartmentid" + demotionId;
			var toDepartmentControlName = "slctdemotedtodepartmentid" + demotionId;
			var demotionDetailControlName = "textareademotiondetail" + demotionId;
			var demotionDateControlName = "txtdemotiondate" + demotionId;
			var jobControlName = "slctjob" + demotionId;
			//now get the values using the control names just defined above...
			var employeeId = $('#'+employeeControlName).val();
			var fromDepartmentId = $('#'+fromDepartmentControlName).val();
			var toDepartmentId = $('#'+toDepartmentControlName).val();
			var demotionDetail = $('#'+demotionDetailControlName).val();
			var demotionDate = $('#'+demotionDateControlName).val();
			var jobId = $('#'+jobControlName).val();
			
			var dataString = "employeeId="+employeeId+"&fromDepartmentId="+fromDepartmentId+
			"&toDepartmentId="+toDepartmentId+"&demotionDetail="+demotionDetail+"&demotionDate="+
			demotionDate+"&jobId="+jobId+"&demotionId="+demotionId;
			
			
			var divId = "demotionEditDiv" + demotionId;
			
			$.ajax({
			    url: 'updatedemotionmanagement.jsp',		
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