<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));	
%>
<table border="0" width="100%">
	<tr>
		<th>Rank</th>
		<th>Employee</th>
		<th>Education Level Point</th>
		<th>Field of Study Point</th>
		<th>Experience Point</th>
		<th>Total Point</th>
		<th>Employee Age</th>
	</tr>
	<%
		java.util.Date d = new java.util.Date();
	    int y = d.getYear();
	    int m = d.getMonth();
	    int k = d.getDate();
	    y+=1900;
	    
		Vacancy vac = Vacancy.getVacancy(vacancyId);
		int numberOfEmployeesRequired = vac.getNumberOfEmployeeRequired();
		int numberOfEmployeesForWaitingList = vac.getNumberOfEmployeeForWaitingList();
		int employeeCtr=1;
		int waitingListCtr=1;
		System.out.println("num of emp: "+numberOfEmployeesRequired);
		System.out.println("waiting list: "+numberOfEmployeesForWaitingList);
		List<EmployeePlacement> empPlacementList = EmployeePlacement.getAllEmployeePlacementForVacancy(vacancyId);
		Iterator<EmployeePlacement> empPlacementItr = empPlacementList.iterator();
		
		while(empPlacementItr.hasNext()){
			while(employeeCtr <= numberOfEmployeesRequired && empPlacementItr.hasNext()){
				System.out.println(employeeCtr);
				EmployeePlacement eP = empPlacementItr.next();
				Employee emp = Employee.getEmployee(eP.getEmployeeId());
				int empAge = (y - (emp.getDateOfBirth().getYear()+1900));
				%>
				<tr>
					<td><%=employeeCtr %></td>
					<td><%=emp.getFirstName()+" "+emp.getFatherName()+" "+emp.getGrandFatherName() %></td>
					<td><%=eP.getPointObtainedForEducationLevelCriteria() %></td>
					<td><%=eP.getPointObtainedForFieldOfStudyCriteria() %></td>
					<td><%=eP.getPointObtainedForExperienceCriteria() %></td>
					<td><%=(eP.getPointObtainedForEducationLevelCriteria() + eP.getPointObtainedForFieldOfStudyCriteria() + eP.getPointObtainedForExperienceCriteria()) %></td>
					<td><%=empAge %></td>
				</tr>
				<%
				employeeCtr++;	
			}//end inner while loop
			%>
			<tr>
				<td colspan="7">Waiting List</td>					
			</tr>
			<%
			while(waitingListCtr <= numberOfEmployeesForWaitingList && empPlacementItr.hasNext()){
				EmployeePlacement eP = empPlacementItr.next();
				Employee emp = Employee.getEmployee(eP.getEmployeeId());
				int empAge = (y - (emp.getDateOfBirth().getYear()+1900));
				%>				
				<tr>
					<td><%=waitingListCtr %></td>
					<td><%=emp.getFirstName()+" "+emp.getFatherName()+" "+emp.getGrandFatherName() %></td>
					<td><%=eP.getPointObtainedForEducationLevelCriteria() %></td>
					<td><%=eP.getPointObtainedForFieldOfStudyCriteria() %></td>
					<td><%=eP.getPointObtainedForExperienceCriteria() %></td>
					<td><%=(eP.getPointObtainedForEducationLevelCriteria() + eP.getPointObtainedForFieldOfStudyCriteria() + eP.getPointObtainedForExperienceCriteria()) %></td>
					<td><%=empAge %></td>
				</tr>
				<%
				waitingListCtr++;
			}//end inner waiting list loop
			
		}//end while loop
	%>
</table>
<div align="right">
	<a href="#.jsp" onclick="showPrinterFriendlyReportOnNewWindow(<%=vacancyId%>);">Printer Friendly Report</a>
</div>