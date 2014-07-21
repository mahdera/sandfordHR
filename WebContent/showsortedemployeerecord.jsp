<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%
	//Account account = (Account) session.getAttribute("account");
	String functionalityName = "registerStudentRecord";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true)
	{
		
		String sortField = request.getParameter("sortField");
		String sortOrder = request.getParameter("sortOrder");
		
		List<Employee> employeeList = null;
		Iterator<Employee> employeeItr = null;
		
		if(sortField.equals("department")){
			employeeList = Employee.getSortedEmployeeRecordsByAcademicUnit(sortOrder);		
		}else if(sortField.equals("field of study")){
			employeeList = Employee.getSortedEmployeeRecordsByFieldOfStudy(sortOrder);
		}else if(sortField.equals("first name")){
			employeeList = Employee.getSortedEmployeeRecordsByFirstName(sortOrder);
		}else if(sortField.equals("father name")){
			employeeList = Employee.getSortedEmployeeRecordsByFatherName(sortOrder);
		}else if(sortField.equals("grand father name")){
			employeeList = Employee.getSortedEmployeeRecordsByGrandFatherName(sortOrder);
		}else if(sortField.equals("id number")){
			employeeList = Employee.getSortedEmployeeRecordsByIdNumber(sortOrder);
		}else if(sortField.equals("type")){
			employeeList = Employee.getSortedEmployeeRecordsByType(sortOrder);
		}else if(sortField.equals("education level")){
			employeeList = Employee.getSortedEmployeeRecordsByEducationLevel(sortOrder);
		}else if(sortField.equals("basic salary")){
			employeeList = Employee.getSortedEmployeeRecordsByBasicSalary(sortOrder);
		}
		
	employeeItr = employeeList.iterator();
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Employees</caption>");
	out.print("<th>S.No</th>");
	out.print("<th>Full Name</th>");	
	out.print("<th>Id #</th>");
	out.print("<th>Basic Salary</th>");
	out.print("<th>Type</th>");
	out.print("<th>Posn.</th>");
	out.print("<th>Edu.Level</th>");
	out.print("<th>Field of stud.</th>");
	out.print("<th colspan='14'>Address</th>");
	int ctr = 1;
	while(employeeItr.hasNext()){
		Employee e = employeeItr.next();		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(e.getFirstName()+" "+e.getFatherName()+" "+e.getGrandFatherName());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getEmployeeId());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getBasicSalary());
			out.print("</td>");
			out.print("<td>");
				out.print(EmployeeType.getEmployeeType(e.getEmployeeTypeId()).getEmployeeType());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getEmployeePosition());
			out.print("</td>");
			out.print("<td>");
				out.print(EducationLevel.getEducationLevel(e.getEducationLevelId()).getEducationLevel());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getFieldOfStudy());
			out.print("</td>");
			out.print("<td colspan='14'>");
				List<Address> addressList = Address.getAllAddressesForEmployee(e.getId());
				List<WorksAt> worksAtList = WorksAt.getAllWorksAtForEmployee(e.getId());
				%>
					<fieldset>
						<legend>Address</legend>
						<table border="1" width="100%">
							<tr>
								<td>K/Ketema</td>
								<td>Woreda</td>
								<td>Kebele</td>
								<td>House Number</td>
								<td>Tel. House</td>
								<td>Tel. Mobile</td>
								<td>Email</td>
							</tr>
							<%
							Iterator<Address> addressItr = addressList.iterator();
							while(addressItr.hasNext()){
								Address ad = addressItr.next();
								out.print("<tr>");
									out.print("<td>");
										out.print(KefeleKetema.getKefeleKetema(ad.getKefeleKetemaId()).getKefeleKetema());
									out.print("</td>");
									out.print("<td>");
										out.print(ad.getWoreda());
									out.print("</td>");
									out.print("<td>");
										out.print(ad.getKebele());
									out.print("</td>");
									out.print("<td>");
										out.print(ad.getHouseNumber());
									out.print("</td>");
									out.print("<td>");
										out.print(ad.getTelephoneHouse());
									out.print("</td>");
									out.print("<td>");
										out.print(ad.getTelephoneMobile());
									out.print("</td>");
									out.print("<td>");
										out.print(ad.getEmail());
									out.print("</td>");
								out.print("</tr>");
							}//end while loop
							%>
						</table>
					</fieldset>
					<fieldset>
						<legend>Works At</legend>
						<table border="1" width="100%">
							<tr>
								<td>Academic Unit</td>
								<td>Date Employed</td>								
							</tr>
							<%
								Iterator<WorksAt> worksAtItr = worksAtList.iterator();
												while(worksAtItr.hasNext()){
													WorksAt w = worksAtItr.next();
													out.print("<tr>");
														out.print("<td>");
															out.print(Department.getAcademicUnit(w.getAcademicUnitId()).getAcademicUnitName());
														out.print("</td>");
														out.print("<td>");
															out.print(w.getDateEmployeed());
														out.print("</td>");									
													out.print("</tr>");
												}//end while loop
							%>
						</table>
					</fieldset>
				<%
			out.print("</td>");			
    	out.print("</tr>");    	
		ctr++;
	}//end while loop
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>