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
	//now save this information to the database...
	Salary salary = new Salary(payGradeId,payFrequencyId,amount,comments,modifiedBy,modificationDate);
	salary.save();
	//now get the specific salary using
	Salary fetchedSalary = Salary.fetchSalaryUsing(payGradeId,payFrequencyId,amount,modifiedBy,modificationDate);
	
	EmployeeSalary employeeSalary = new EmployeeSalary(employeeId,fetchedSalary.getId(),modifiedBy,modificationDate);
	employeeSalary.save();
%>
<p class="msg done">Employee Salary Saved Successfully!</p>