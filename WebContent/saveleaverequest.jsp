<%@page import="java.sql.Timestamp"%>
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
	Date leaveRequestDate = Date.valueOf(request.getParameter("leaveRequestDate"));
	int leaveType = Integer.parseInt(request.getParameter("leaveType"));
	int numberOfDays = Integer.parseInt(request.getParameter("numberOfDays"));
	String purpose = request.getParameter("purpose");
	float remaining = Float.parseFloat(request.getParameter("remaining"));
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	java.util.Date utilDateFrom = sdf.parse(request.getParameter("dateFrom"));
	java.util.Date utilDateTo = sdf.parse(request.getParameter("dateTo"));
	//now convert the util to String...
	Timestamp fromTimestamp = new Timestamp(utilDateFrom.getTime());
	Timestamp toTimestamp = new Timestamp(utilDateTo.getTime());
	
	//now save this information to the database...
	LeaveRequest leaveRequest = new LeaveRequest(employeeId,leaveRequestDate,leaveType,numberOfDays,
			purpose,fromTimestamp,toTimestamp,modifiedBy,modificationDate);
	leaveRequest.save();
	//now update the employee leave status object and save this information back to the database again...
	EmployeeLeaveStatus employeeLeaveStatus = EmployeeLeaveStatus.getEmployeeLeaveStatusForEmployee(employeeId);
	employeeLeaveStatus.setEmployeeId(employeeId);
	employeeLeaveStatus.setAvailable(remaining);
	employeeLeaveStatus.setModifiedBy(modifiedBy);
	employeeLeaveStatus.setModificationDate(modificationDate);
	EmployeeLeaveStatus.update(employeeLeaveStatus);
%>
Leave request saved successfully!