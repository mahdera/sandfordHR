<html>
<head>
<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
	<script type="text/javascript" src="js/jquery1.7.js"></script> 
	<script type="text/javascript" src="js/tablesorter.js"></script>
	<script type="text/javascript">
	$(document).ready(function() 
		    { 
		        $("#myTable").tablesorter( {sortList: [[5,0], [1,0]]} ); 
		    } 
		); 
	</script> 
</head>
<body>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));	
%>
<div align="center">
<table border="1" width="80%" rules="rows,cols" id="myTable" class="tablesorter">
	<thead>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>		
		<td  align="center" colspan="7">
			<img src="design/aaulogo.jpeg" border="0" width="20%"/>
		</td>
	</tr>
	<tr>
		<td colspan="7">
			<%
				Vacancy v = Vacancy.getVacancy(vacancyId);
				out.print("Placement for vacancy: "+v.getVacancyName());
			%>
		</td>
	</tr>	
	<tr>
		<th>Rank</th>
		<th>Employee</th>
		<th>Education Level Point</th>
		<th>Field of Study Point</th>
		<th>Experience Point</th>
		<th>Total Point</th>
		<th>Employee Age</th>
	</tr>
	</thead>
	<tbody>
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
	</tbody>
</table>
</div>
</body>
</html>