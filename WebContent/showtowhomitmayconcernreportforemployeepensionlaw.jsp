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
	Salary salary = Salary.getSalary(employeeSalary.getSalaryId());
	DecimalFormat twoDigit = new DecimalFormat("0.00");
	
	String sex = null;
	if(internationalEmployee.getSex().equalsIgnoreCase("male")){
		sex = "He";
	}else if(internationalEmployee.getSex().equalsIgnoreCase("female")){
		sex = "She";
	}
	
	String sexReff = null;
	if(internationalEmployee.getSex().equalsIgnoreCase("male")){
		sexReff = "His";
	}else if(internationalEmployee.getSex().equalsIgnoreCase("female")){
		sexReff = "Her";
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
				This is to certify that <%=employeeFullName %> was a staff member of the Sandford International
				School working in a capacity of <%=job.getJobTitle() %> from <%=worksAt.getEmployementDate() %> to
				<%=modificationDate %>. <%=sexReff %> last monthly salary while working with us was
				Birr <%=twoDigit.format(salary.getAmount()) %>. <%=sex %> has paid all required income
				tax and pension contribution as per the tax schedule and Private Organization Employees
				Pension Proclamation No. 715/2011.
				 
				<br/><br/><br/><br/>
				We appreciate any cooperation rendered to her.
				<br/><br/><br/><br/>
				
			
		</p>
		<p style="text-align:right;font-size:16pt">
			With regards,
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