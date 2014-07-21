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
	float etbAmount = Float.parseFloat(request.getParameter("etbAmount"));
	float usdAmount = Float.parseFloat(request.getParameter("usdAmount"));
	String comments = request.getParameter("comments");
	//now save this information to the database...
	SalaryInternational salaryInternational = new SalaryInternational(payGradeId,payFrequencyId,etbAmount,usdAmount,comments,modifiedBy,modificationDate);
	salaryInternational.save();
	//now get the specific salary using
	SalaryInternational fetchedSalary = SalaryInternational.fetchSalaryUsing(payGradeId,payFrequencyId,etbAmount,usdAmount,modifiedBy,modificationDate);
	
	EmployeeSalary employeeSalary = new EmployeeSalary(employeeId,fetchedSalary.getId(),modifiedBy,modificationDate);
	employeeSalary.save();
%>
<p class="msg done">Employee Salary Saved Successfully!</p>