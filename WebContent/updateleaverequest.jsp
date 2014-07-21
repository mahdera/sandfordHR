<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Timestamp" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate); 

	long leaveRequestId = Long.parseLong(request.getParameter("leaveRequestId"));
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Date leaveRequestDate = Date.valueOf(request.getParameter("leaveRequestDate"));
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveType"));
	float numberOfDays = Float.parseFloat(request.getParameter("numberOfDays"));
	String purpose = request.getParameter("purpose");	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	java.util.Date utilDateFrom = sdf.parse(request.getParameter("dateFrom"));
	java.util.Date utilDateTo = sdf.parse(request.getParameter("dateTo"));
	float newBalance = Float.parseFloat(request.getParameter("newBalance"));
	//now convert the util to String...
	Timestamp fromTimestamp = new Timestamp(utilDateFrom.getTime());
	Timestamp toTimestamp = new Timestamp(utilDateTo.getTime());
	//now fetch the object, set the fields and update the value in the database...
	LeaveRequest leaveRequest = LeaveRequest.getLeaveRequest(leaveRequestId);
	leaveRequest.setEmployeeId(employeeId);
	leaveRequest.setLeaveRequestDate(leaveRequestDate);
	leaveRequest.setLeaveTypeId(leaveTypeId);
	leaveRequest.setNumberOfDays(numberOfDays);
	leaveRequest.setPurpose(purpose);
	leaveRequest.setDateFrom(fromTimestamp);
	leaveRequest.setDateTo(toTimestamp);
	leaveRequest.setModifiedBy(modifiedBy);
	leaveRequest.setModificationDate(modificationDate);
	LeaveRequest.update(leaveRequest);
	
	EmployeeLeaveStatus employeeLeaveStatus = EmployeeLeaveStatus.getEmployeeLeaveStatusForEmployee(employeeId);
	employeeLeaveStatus.setEmployeeId(employeeId);
	employeeLeaveStatus.setAvailable(newBalance);
	employeeLeaveStatus.setModifiedBy(modifiedBy);
	employeeLeaveStatus.setModificationDate(modificationDate);
	EmployeeLeaveStatus.update(employeeLeaveStatus);
%>
<p class="msg done">Leave request updated successfully!</p>
