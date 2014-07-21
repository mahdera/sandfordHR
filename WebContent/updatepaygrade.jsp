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
	
	String code = request.getParameter("code");
	String name = request.getParameter("name");
	float minimumSalary = Float.parseFloat(request.getParameter("minimumSalary"));
	float maximumSalary = Float.parseFloat(request.getParameter("maximumSalary"));
	int stepIncrease = Integer.parseInt(request.getParameter("stepIncrease"));
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	//now find the pay grade object...set its values and update the database information...
	PayGrade payGrade = PayGrade.getPayGrade(payGradeId);
	payGrade.setCode(code);
	payGrade.setName(name);
	payGrade.setMinimumSalary(minimumSalary);
	payGrade.setMaximumSalary(maximumSalary);
	payGrade.setStepIncrease(stepIncrease);
	payGrade.setModifiedBy(modifiedBy);
	payGrade.setModificationDate(modificationDate);
	PayGrade.update(payGrade);
%>
