<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee employee = Employee.getEmployee(employeeId);
	String fullName = employee.getFirstName()+" "+employee.getLastName();
%>
<table border="0" width="100%">
	<tr>
		<td style="font-weight:bolder" align="center" colspan="2">SANDFORD INTERNATIONAL SCHOOL</td>
	</tr>
	<tr>
		<td style="text-align:left;font-weight:bolder" colspan="2">MEMO</td>
	</tr>
	<tr>
		<td>From:</td>
		<td>Personnel Office</td>
	</tr>
	<tr>
		<td>To:</td>
		<td>Head of HR & Administration</td>
	</tr>
	<tr>
		<td>Date:</td>
		<td>
			<%
				SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE, MMMM d, yyyy");
				Calendar cal = Calendar.getInstance();
				String currentDate = dateFormat.format(cal.getTime());
				//Date modificationDate = Date.valueOf(currentDate);
				out.print(currentDate);
			%>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<%
				//here find the name prefix...
				String prefix = "";
				if(employee.getSex().equalsIgnoreCase("male")){
					prefix = "Ato";
				}else if(employee.getSex().equalsIgnoreCase("female")){
					if(employee.getMaritalStatus().equalsIgnoreCase("single")){
						prefix = "Wrt";
					}else{
						prefix = "Wro";
					}
				}
			%>
			<strong>Personnel data of <%=prefix %> <%=fullName %></strong>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<table border="0" width="100%">
				<tr>
					<td width="30%">Job Title</td>
					<td>
						<%
							EmployeeJob employeeJob = EmployeeJob.getEmployeeJobForThisEmployee(employeeId);
							if(employeeJob != null){
								Job job = Job.getJob(employeeJob.getJobId());
								out.println(job.getJobTitle());
							}else{
								%>
								<p class="msg warning">No job information specified!</p>
								<%
							}
						%>
					</td>
				</tr>
				<tr>
					<td>Date of Employement</td>
					<td>
						<%
							WorksAt worksAt = WorksAt.getWorksAtForEmployee(employeeId);
							out.print(dateFormat.format(worksAt.getEmployementDate()));
						%>
					</td>
				</tr>
				<tr>
					<td>Date of Submission of Resignation Letter</td>
					<td>
						<%
							ResignationLetter resignationLetter = ResignationLetter.getResignationLetterForEmployee(employeeId);
							if(resignationLetter != null){
								out.print(resignationLetter.getResignationLetterDate());
							}else{
								%>
								<p class="msg warning">Resignation letter not yet submitted!</p>
								<%
							}
						%>
					</td>
				</tr>
				<tr>
					<td>Date of Resignation</td>
					<td></td>
				</tr>
				<tr>
					<td>Annual Leave Balance</td>
					<td>
						<%
							EmployeeLeaveStatus employeeLeaveStatus = EmployeeLeaveStatus.getEmployeeLeaveStatusForEmployee(employeeId);
							out.print(employeeLeaveStatus != null ? employeeLeaveStatus.getAvailable() : "---");
						%>
					</td>
				</tr>
				<tr>
					<td>Basic Salary at date of resignation</td>
					<td>
						<%
							EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalaryForThisEmployee(employeeId);
							if(employee.getEmployeeCategoryType().equalsIgnoreCase("national")){
								if(employeeSalary != null){
									Salary salary = Salary.getSalary(employeeSalary.getSalaryId());
									out.println(salary.getAmount());
								}else{
									out.print("---");
								}
							}else{
								if(employeeSalary != null){
									SalaryInternational salaryInternational = SalaryInternational.getSalary(employeeSalary.getSalaryId());
									out.println("$"+salaryInternational.getUsdAmount()+" and "+salaryInternational.getEtbAmount()+" ETB");
								}else{
									out.print("---");
								}
							}
						%>
					</td>
				</tr>
				<tr>
					<td>Original life Insurance policy No.</td>
					<td>
						<%
							EmployeeInsurance employeeInsurance = EmployeeInsurance.getEmployeeInsuranceForEmployee(employeeId);
							out.print(employeeInsurance != null ? employeeInsurance.getInsurancePolicyNumber() : "---");
						%>
					</td>
				</tr>
				<tr>
					<td>Hand over for claim from EIC</td>
					<td>
						<%
							out.print(fullName);
						%>
					</td>
				</tr>
				<tr>
					<td>Clearance sheet</td>
					<td></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>