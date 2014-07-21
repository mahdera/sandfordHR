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
	int fromDepartmentId = Integer.parseInt(request.getParameter("fromDepartmentId"));
	int toDepartmentId = Integer.parseInt(request.getParameter("toDepartmentId"));
	String promotionDetail = request.getParameter("promotionDetail");
	Date promotionDate = Date.valueOf(request.getParameter("promotionDate"));
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	Promotion promotion = new Promotion(employeeId,fromDepartmentId,toDepartmentId,promotionDetail,
			promotionDate,jobId,modifiedBy,modificationDate);
	promotion.save();
	//now update the works at information for this particular employee
	WorksAt worksAt = WorksAt.getWorksAtForEmployee(employeeId);
	worksAt.setDepartmentId(toDepartmentId);
	worksAt.setModifiedBy(modifiedBy);
	worksAt.setModificationDate(modificationDate);
	WorksAt.update(worksAt);
	//now do the same for employee job information...
	EmployeeJob employeeJob = EmployeeJob.getEmployeeJobForThisEmployee(employeeId);
	employeeJob.setJobId(jobId);
	employeeJob.setModifiedBy(modifiedBy);
	employeeJob.setModificationDate(modificationDate);
	EmployeeJob.update(employeeJob);	
%>
Promotion information saved successfully!