<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.empadmin.server.classes.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee internationalEmployee = Employee.getEmployee(employeeId);
	String employeeFullName = internationalEmployee.getFirstName()+" "+internationalEmployee.getMiddleName()+" "+internationalEmployee.getLastName();
	WorksAt worksAt = WorksAt.getWorksAtForEmployee(employeeId);
	EmployeeJob employeeJob = EmployeeJob.getEmployeeJobForThisEmployee(employeeId);
	Job job = Job.getJob(employeeJob.getJobId());
	EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalary(employeeId);
	SalaryInternational salaryInternational = SalaryInternational.getSalary(employeeSalary.getSalaryId());
	DecimalFormat twoDigit = new DecimalFormat("0.00");
	String sex = null;
	if(internationalEmployee.getSex().equalsIgnoreCase("male")){
		sex = "he";
	}else if(internationalEmployee.getSex().equalsIgnoreCase("female")){
		sex = "she";
	}
	
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
%>
<div id="printReportDiv">
		<br/><br/>
		<p style="text-align:right">
			_ _ /_ _ /20_ _
		</p>
		<p style="text-align:right">
			SIS/H_ _ _ _ / _ _ 
		</p>
		<br/><br/><br/><br/><br/>
		<p style="font-weight:bolder;font-size:16pt;text-align:center">
			To Whom It May Concern
		</p>
		<br/><br/><br/>
		<p style="font-size:14pt;text-align:justify">			
				This is to certify that <%=employeeFullName %> has been our expatriate teacher in 
				out school since <%=worksAt.getEmployementDate() %>. This calendar year <%=sex %> was
				paid net salary of USD <%=salaryInternational.getUsdAmount() %>.
				<br/><br/><br/><br/>
				Any assistance given to her is highly appreciated.
				<br/><br/><br/><br/>
				
			
		</p>
		<p style="text-align:right;font-size:16pt">
			Sincerely Yours,
		</p>
</div>	
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>	