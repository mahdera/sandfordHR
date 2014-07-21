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
	String demotionDetail = request.getParameter("demotionDetail");
	Date demotionDate = Date.valueOf(request.getParameter("demotionDate"));
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	long demotionId = Long.parseLong(request.getParameter("demotionId"));
	//now fetch this particular promotion obj set it and update the info in the database...
	Demotion demotion = Demotion.getdemotion(demotionId);
	demotion.setEmployeeId(employeeId);
	demotion.setFromDepartmentId(fromDepartmentId);
	demotion.setToDepartmentId(toDepartmentId);
	demotion.setDemotionDetail(demotionDetail);
	demotion.setDemotionDate(demotionDate);
	demotion.setJobId(jobId);
	demotion.setModifiedBy(modifiedBy);
	
	demotion.setModificationDate(modificationDate);
	Demotion.update(demotion);
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
<p class="msg done">Demotion Management Updated Successfully!</p>