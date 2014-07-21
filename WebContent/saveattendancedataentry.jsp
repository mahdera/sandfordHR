<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date"%>
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
	
	int ctr = Integer.parseInt(request.getParameter("ctr"));
	for(int i=1;i<=ctr;i++){
		String employeeIdControlName = "hiddenemployeeid" + i;
		String absentControlName = "chkabsent" + i;
		String punchInControlName = "txtpunchin" + i;
		String punchInNoteControlName = "textareapunchinnote" + i;
		String punchOutControlName = "txtpunchout" + i;
		String punchOutNoteControlName = "textareapunchoutnote" + i;
		String totalHourControlName = "txttotal" + i;
		//now get the values and save the information to the database...
		long employeeId = Long.parseLong(request.getParameter(employeeIdControlName));		
		String punchInNote = request.getParameter(punchInNoteControlName);		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		java.util.Date utilDatePunchIn = null;
		if(request.getParameter(punchInControlName) != ""){
			utilDatePunchIn = sdf.parse(request.getParameter(punchInControlName));
		}
		java.util.Date utilDatePunchTo = null;
		if(request.getParameter(punchOutControlName) != ""){
			utilDatePunchTo = sdf.parse(request.getParameter(punchOutControlName));
		}
		
		Timestamp punchInTimestamp = null;
		if(utilDatePunchIn != null){
			punchInTimestamp = new Timestamp(utilDatePunchIn.getTime());
		}
		
		Timestamp punchOutTimestamp = null;
		if(utilDatePunchTo != null){
			punchOutTimestamp = new Timestamp(utilDatePunchTo.getTime());
		}
		String punchOutNote = request.getParameter(punchOutNoteControlName);	
		String totalHour = request.getParameter(totalHourControlName);
		String employeeStatus = request.getParameter(absentControlName);
		Attendance attendance = new Attendance(employeeId,punchInTimestamp,punchInNote,punchOutTimestamp,punchOutNote,
				employeeStatus,modifiedBy,modificationDate,totalHour);
		attendance.save();
	}//end for...loop
%>
<p class="msg done">Attendance data entry saved successfully!</p>