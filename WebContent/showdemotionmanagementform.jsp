<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr>
			<td colspan="2"><h2>Demotion Management Form</h2></td>
		</tr>
		<tr>
			<td align="right" width="30%"><font color="red">*</font> Employee:</td>
			<td><select name="slctemployee" id="slctemployee"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while (employeeItr.hasNext()) {
							Employee employee = employeeItr.next();
							String employeeFullName = employee.getFirstName() + " " + employee.getLastName();
									
					%>
							<option value="<%=employee.getId()%>"><%=employeeFullName%></option>
					<%
						}//end while loop
					%>
			</select></td>
		</tr>
		<tr>
			<td align="right">Demoted From Department:</td>
			<td>		
				<div id="demotedFromDepartmentDiv"></div>				
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Demoted To Department:</td>
			<td>				
				<select name="slctdemotedtodepartmentid" id="slctdemotedtodepartmentid" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentToList = Department.getAllDepartments();
					Iterator<Department> departmentToItr = departmentToList.iterator();
					while(departmentToItr.hasNext()){
						Department dept = departmentToItr.next();
						%>
							<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
					}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Demotion Detail:</td>
			<td><textarea name="textareademotiondetail"
					id="textareademotiondetail" rows="4" style="width:100%"></textarea></td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Demotion Date:</td>
			<td><input type="text" name="txtdemotiondate" id="txtdemotiondate" />
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdemotiondate')" />
			</td>
		</tr>
		<tr>
			<td align="right"><font color="red">*</font> Job Title</td>
			<td>
				<select name="slctjob" id="slctjob" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Job> jobList = Job.getAllJobs();
						Iterator<Job> jobItr = jobList.iterator();
						while(jobItr.hasNext()){
							Job job = jobItr.next();
							%>
								<option value="<%=job.getId() %>"><%=job.getJobTitle() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>		
		<tr>			
			<td align="right" colspan="2">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required!</p>
			</td>
		</tr>
	</table>
	</form>
	<div id="errorDiv"></div>
	<!-- Now comes the tabs section mahder -->
	<div>	
	
	<h3 class="tit">Demotion Management Details Tab</h3> 

	<div class="tabs box"> 
		<ul> 
			<li><a href="#.jsp" id="demotionListLink"><span>View Demotion Management</span></a></li> 
			<li><a href="#.jsp" id="demotionListEditLink"><span>Edit Demotion Management</span></a></li> 
			<li><a href="#.jsp" id="demotionListDeleteLink"><span>Delete Demotion Management</span></a></li> 
		</ul> 
	</div> 
				 
	<div id="tabDetailDiv"> 			
		<p class="msg info">Click on the demotion management details tab for manipulating demotion management</p>			
	</div>			
	<div id="promotionDetailDiv"></div>
	<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctemployee').change(function(){
			var employeeId = $(this).val();
			$('#demotedFromDepartmentDiv').load('showlistofdepartmentsfordemotionforemployee.jsp?employeeId='+employeeId);
		});
		
		$('#demotionListLink').click(function(){
			$('#tabDetailDiv').load('showlistofdemotionmanagement.jsp');
		});
		
		$('#demotionListEditLink').click(function(){
			$('#tabDetailDiv').load('showlistofdemotionmanagementforedit.jsp');
		});
		
		$('#demotionListDeleteLink').click(function(){
			$('#tabDetailDiv').load('showlistofdemotionmanagementfordelete.jsp');
		});
		
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var fromDepartmentId = $('#slctdemotedfromdepartmentid').val();
			var toDepartmentId = $('#slctdemotedtodepartmentid').val();
			var demotionDetail = $('#textareademotiondetail').val();
			var demotionDate = $('#txtdemotiondate').val();
			var jobId = $('#slctjob').val();
			
			var dataString = "employeeId="+employeeId+"&fromDepartmentId="+
			fromDepartmentId+"&toDepartmentId="+toDepartmentId+"&demotionDetail="+
			demotionDetail+"&demotionDate="+demotionDate+"&jobId="+jobId;
			
			if(employeeId != "" && toDepartmentId != "" && demotionDate != "" && jobId != ""){
				$.ajax({
				    url: 'savedemotionmanagement.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#hrModuleDetailDiv').load('demotionmanagement.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fields!</p>");
			}
		});//end button.click
		
		
	});//end document.ready function
</script>
	