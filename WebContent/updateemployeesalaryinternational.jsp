<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
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
	String comments = request.getParameter("comments");
	float usdAmount = Float.parseFloat(request.getParameter("usdAmount"));
	
	//now find the salary information for this particular employee...
	EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalaryForThisEmployee(employeeId);
	SalaryInternational salaryInternational = SalaryInternational.getSalary(employeeSalary.getSalaryId());
	if(salaryInternational != null){
		salaryInternational.setPayGradeId(payGradeId);
		salaryInternational.setPayFrequencyId(payFrequencyId);
		salaryInternational.setEtbAmount(etbAmount);
		salaryInternational.setUsdAmount(usdAmount);
		salaryInternational.setComments(comments);
		salaryInternational.setModifiedBy(modifiedBy);
		salaryInternational.setModificationDate(modificationDate);
		SalaryInternational.update(salaryInternational);
	}else{
		//it needs a new insertion on the database table....
		SalaryInternational internationalSalary = new SalaryInternational(payGradeId,payFrequencyId,etbAmount,
				usdAmount,comments,modifiedBy,modificationDate);
		internationalSalary.save();		
	}
%>
<p class="msg done">International employee salary information updated successfully!</p>