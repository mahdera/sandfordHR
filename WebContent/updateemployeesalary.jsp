<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);

	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	float amount = Float.parseFloat(request.getParameter("amount"));
	String comments = request.getParameter("comments");
	long salaryId = Long.parseLong(request.getParameter("salaryId"));
	long employeeSalaryId = Long.parseLong(request.getParameter("employeeSalaryId"));
	//first fetch salary object and do the update....
	Salary salary = Salary.getSalary(salaryId);
	salary.setPayGradeId(payGradeId);
	salary.setPayFrequencyId(payFrequencyId);
	salary.setAmount(amount);
	salary.setComments(comments);
	salary.setModifiedBy(modifiedBy);
	salary.setModificationDate(modificationDate);
	Salary.update(salary);
	//now do the update for EmployeeSalary object...
	EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalary(employeeSalaryId);
	employeeSalary.setEmployeeId(employeeId);
	employeeSalary.setSalaryId(salaryId);
	employeeSalary.setModifiedBy(modifiedBy);
	employeeSalary.setModificationDate(modificationDate);
	EmployeeSalary.update(employeeSalary);
%>
<p class="msg done">Employee Salary Information Updated Successfully!</p>