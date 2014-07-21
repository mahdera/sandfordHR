

function showAddRecruitmentRequestForm(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddrecruitmentrequestform.jsp", true);
	xmlhttp.send();
}

function createUser() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "createuser.jsp", true);
	xmlhttp.send();
}

function showListOfUsers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusers.jsp", true);
	xmlhttp.send();
}

function showReportNow(rptType){
	//alert(rptType);
	if(rptType == "employee_profile"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeeselector.jsp?rptType="+rptType, true);
		xmlhttp.send();
	}else if(rptType == "attendance_sheet"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeeselectorforattendancesheet.jsp?rptType="+rptType, true);
		xmlhttp.send();
	}else if(rptType == "employee_education_level_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeeeducationleveldepartmentselectorbar.jsp", true);
		xmlhttp.send();
	}else if(rptType == "employee_by_age_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showdepartmentforagereportselectorbar.jsp", true);
		xmlhttp.send();
	}else if(rptType == "employee_by_sex_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showdepartmentforsexreportselectorbar.jsp", true);
		xmlhttp.send();
	}else if(rptType == "employee_promotion_history_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeepromotionhistoryreport.jsp", true);
		xmlhttp.send();
	}else if(rptType == "employee_on_pension_list_report"){
		
	}else if(rptType == "employee_by_status_terminated_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeeterminationreport.jsp", true);
		xmlhttp.send();
	}else if(rptType == "newly_hired_employee_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "shownewlyhiredemployeereportselectorbar.jsp", true);
		xmlhttp.send();
	}else if(rptType == "vacancy_list_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showvacancylistreport.jsp", true);
		xmlhttp.send();
	}else if(rptType == "employee_by_department_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeedepartmentselectorbar.jsp", true);
		xmlhttp.send();
	}else if(rptType == "employee_by_experience_in_a_department_report"){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showemployeebyexperienceinadepartmentselectorbar.jsp", true);
		xmlhttp.send();
	}
}

function showListOfEmployeesFromThisDepartmentByExperience(departmentId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeByDepartmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfromthisdepartmentbyexperience.jsp?departmentId="+departmentId, true);
	xmlhttp.send();
}

function showListOfEmployeesFromThisDepartment(departmentId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeByDepartmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfromthisdepartment.jsp?departmentId="+departmentId, true);
	xmlhttp.send();
}

function showListOfNewlyHiredEmployeesWithInThisMonth(departmentId,month){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeByDepartmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofnewlyhiredemployeeswithinthismonth.jsp?departmentId="+departmentId+"&month="+month, true);
	xmlhttp.send();
}

function showListOfEmployeesFromThisDepartmentByEducationLevel(departmentId,educationLevelId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeByDepartmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfromthisdepartmentbyeducationlevel.jsp?departmentId="+departmentId+"&educationLevelId="+educationLevelId, true);
	xmlhttp.send();
}

function showListOfEmployeesFromThisDepartmentByAge(departmentId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeByDepartmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfromthisdepartmentbyage.jsp?departmentId="+departmentId, true);
	xmlhttp.send();
}

function showListOfEmployeesFromThisDepartmentBySex(departmentId,sex){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeByDepartmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfromthisdepartmentbysex.jsp?departmentId="+departmentId+"&sex="+sex, true);
	xmlhttp.send();
}

function showAttendanceSheetOfThisEmployee(empId){
	//alert(empId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceSheetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showattendancesheetofthisemployee.jsp?empId="+empId, true);
	xmlhttp.send();
}

function showProfileForThisEmployee(empId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportSection").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showprofileforthisemployee.jsp?empId="+empId, true);
	xmlhttp.send();
}

function showListOfUsersForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusersforedit.jsp", true);
	xmlhttp.send();
}

function showListOfUsersForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusersfordelete.jsp", true);
	xmlhttp.send();
}

function saveUser(fullName, userType, username, password) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveuser.jsp?fullName=" + fullName + "&userType="
			+ userType + "&username=" + username + "&password=" + password,
			true);
	xmlhttp.send();
}

function showReportFacultyInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportfacultyinnermenu.jsp", true);
	xmlhttp.send();
}

function showReportServiceInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportserviceinnermenu.jsp", true);
	xmlhttp.send();
}

function showStudentRecordEntryLogInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showstudentrecordentryloginnermenu.jsp", true);
	xmlhttp.send();
}

function showReportAcademicUnitInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportacademicunitinnermenu.jsp", true);
	xmlhttp.send();
}

function showReportEmployeeInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportemployeesinnermenu.jsp", true);
	xmlhttp.send();
}

function showParameterizedReportEmployeeInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showparameterizedreportemployeeinnermenu.jsp", true);
	xmlhttp.send();
}

function showSortEmployeesByInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsortemployeesbyinnermenu.jsp", true);
	xmlhttp.send();
}

function showBasicSalarySelectorBar() {
	// alert("shubert");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbasicsalaryselectorbar.jsp", true);
	xmlhttp.send();
}

function showBudgetCenterSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbudgetcenterselectorbar.jsp", true);
	xmlhttp.send();
}

function showEducationLevelSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeducationlevelselectorbar.jsp", true);
	xmlhttp.send();
}

function showEmployeeTypeSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeetypeselectorbar.jsp", true);
	xmlhttp.send();
}

function showEmployementTypeSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployementtypeselectorbar.jsp", true);
	xmlhttp.send();
}

function showMaritalStatusSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showmaritalstatusselectorbar.jsp", true);
	xmlhttp.send();
}

function showNationalitySelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownationalityselectorbar.jsp", true);
	xmlhttp.send();
}

function showEmployeePositionSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortSelectorBarDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeepositionselectorbar.jsp", true);
	xmlhttp.send();
}

function showCollegeSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("specificEmployeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcollegeselectorbar.jsp", true);
	xmlhttp.send();
}

function showFacultySelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("specificEmployeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfacultyselectorbar.jsp", true);
	xmlhttp.send();
}

function showDepartmentSelectorBar() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("specificEmployeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showdepartmentselectorbar.jsp", true);
	xmlhttp.send();
}

function showReportForAllEmployeesOfThisCollege(collegeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportforallemployeesofthiscollege.jsp?collegeId="
			+ collegeId, true);
	xmlhttp.send();
}

function showReportForAllEmployeesOfThisFIS(fisId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showreportforallemployeesofthisfis.jsp?fisId=" + fisId, true);
	xmlhttp.send();
}

function showReportForAllEmployeesOfThisDepartment(deptId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportforallemployeesofthisdepartment.jsp?deptId="
			+ deptId, true);
	xmlhttp.send();
}

function showAllFacultiesReport() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportSection").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallfacultiesreport.jsp", true);
	xmlhttp.send();
}

function showServiceDetailForm(serviceId) {
	document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("serviceDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showservicedetailform.jsp?serviceId=" + serviceId,
			true);
	xmlhttp.send();
}

function showRoleForUser(userId) {
	// alert(userId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("roleDetailForEmployee").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showroleforuser.jsp?userId=" + userId, true);
	xmlhttp.send();
}

function updateRole(roleId, accountId, functionalityId, chkRead, chkWrite,
		chkUpdate, chkDelete) {
	// now compose the check box names to get the actual selected item from the
	// list
	// alert(roleId+":"+accountId+":"+functionalityId+":"+chkRead+":"+chkWrite+":"+chkUpdate+":"+chkDelete);

	hasReadAccess = false;
	hasWriteAccess = false;
	hasUpdateAccess = false;
	hasDeleteAccess = false;

	if (chkRead.checked == true)
		hasReadAccess = true;
	if (chkWrite.checked == true)
		hasWriteAccess = true;
	if (chkUpdate.checked == true)
		hasUpdateAccess = true;
	if (chkDelete.checked == true)
		hasDeleteAccess = true;
	// ///////////////////////////////////////now comes the ajax...
	// alert("role id: "+roleId+"account id: "+accountId+" operation id:
	// "+operationId+" read : "+hasReadAccess+" : write : "+hasWriteAccess+" :
	// update : "+hasUpdateAccess+" : delete : "+hasDeleteAccess);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("content").innerHTML = xmlhttp.responseText;
			document.getElementById("roleDetailForEmployee").innerHTML = "<strong><font color='green'>Role updated successfully!</font></strong>";
		}
	}
	xmlhttp.open("GET", "updaterole.jsp?roleId=" + roleId + "&accountId="
			+ accountId + "&functionalityId=" + functionalityId
			+ "&hasReadAccess=" + hasReadAccess + "&hasWriteAccess="
			+ hasWriteAccess + "&hasUpdateAccess=" + hasUpdateAccess
			+ "&hasDeleteAccess=" + hasDeleteAccess, true);
	xmlhttp.send();
}

function saveFIS(fisCode, fisName, collegeCode, fisDescription) {
	if (fisCode == "") {
		document.getElementById('txtfiscode').style.borderColor = "red";
		document.getElementById('facultySaveDiv').innerHTML = "<p class='msg warning'>Please enter the F/I/S code!</p>";
		document.getElementById('txtfiscode').focus();
		return false;
	} else if (fisName == "") {
		document.getElementById('txtfisname').style.borderColor = "red";
		document.getElementById('facultySaveDiv').innerHTML = "<p class='msg warning'>Please enter the F/I/S name!</p>";
		document.getElementById('txtfisname').focus();
		return false;
	} else if (collegeCode == "") {
		document.getElementById('txtfisname').style.borderColor = "green";
		document.getElementById('slctcollege').style.borderColor = "red";
		document.getElementById('facultySaveDiv').innerHTML = "<p class='msg warning'>Please select the campus!</p>";
		document.getElementById('slctcollege').focus();
		return false;
	} else if (fisDescription == "") {
		document.getElementById('slctcollege').style.borderColor = "green";
		document.getElementById('textareafisdescription').style.borderColor = "red";
		document.getElementById('facultySaveDiv').innerHTML = "<p class='msg warning'>Please enter the description!</p>";
		document.getElementById('textareafisdescription').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("facultySaveDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('txtfiscode').value = "";
				document.getElementById('txtfisname').value = "";
				document.getElementById('textareafisdescription').vlaue = "";
			}
		}
		xmlhttp.open("GET", "savefis.jsp?fisCode=" + fisCode + "&fisName="
				+ fisName + "&collegeId=" + collegeCode + "&fisDescription="
				+ fisDescription, true);
		xmlhttp.send();
	}
}

function saveCollege(collegeCode, collegeName, collegeDescription) {
	// alert(campusCode+":"+campusName+":"+campusLocation);
	if (collegeCode == "") {
		document.getElementById('txtcollegecode').style.borderColor = "red";
		document.getElementById('campusSaveDiv').innerHTML = "<p class='msg warning'>Please enter the college code!</p>";
		document.getElementById('txtcollegecode').focus();
		return false;
	} else if (collegeName == "") {
		document.getElementById('txtcollegecode').style.borderColor = "green";
		document.getElementById('txtcollegename').style.borderColor = "red";
		document.getElementById('campusSaveDiv').innerHTML = "<p class='msg warning'>Please enter the name of the college!</p>";
		document.getElementById('txtcollegename').focus();
		return false;
	} else if (collegeDescription == "") {
		document.getElementById('txtcollegename').style.borderColor = "green";
		document.getElementById('textareacollegedescription').style.borderColor = "red";
		document.getElementById('campusSaveDiv').innerHTML = "<p class='msg warning'>Please enter the description of the college!</p>";
		document.getElementById('textareacollegedescription').focus();
	} else {

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("campusSaveDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('txtcollegecode').value = "";
				document.getElementById('txtcollegename').value = "";
				document.getElementById('textareacollegedescription').value = "";
			}
		}
		xmlhttp.open("GET", "savecollege.jsp?collegeCode=" + collegeCode
				+ "&collegeName=" + collegeName + "&collegeDescription="
				+ collegeDescription, true);
		xmlhttp.send();
	}
}

function saveDepartment(fisId, departmentCode, departmentName,
		departmentDescription) {
	if (fisId == "") {
		document.getElementById('slctfis').style.borderColor = "red";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please select the Division!</p>";
		document.getElementById('slctfis').focus();
		return false;
	} else if (departmentCode == "") {
		document.getElementById('slctfis').style.borderColor = "green";
		document.getElementById('txtdepartmentcode').style.borderColor = "red";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please enter the department code!</p>";
		document.getElementById('txtdepartmentcode').focus();
		return false;
	} else if (departmentName == "") {
		document.getElementById('txtdepartmentcode').style.borderColor = "green";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please enter the department name!</p>";
		document.getElementById('txtdepartmentname').style.borderColor = "red";
		document.getElementById('txtdepartmentname').focus();
		return false;
	} else if (departmentDescription == "") {
		document.getElementById('txtdepartmentname').style.borderColor = "green";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please enter the desription for the department!</p>";
		document.getElementById('textareadepartmentdescription').style.borderColor = "red";
		document.getElementById('textareadepartmentdescription').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("academicUnitSaveDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('txtdepartmentcode').value = "";
				document.getElementById('txtdepartmentname').value = "";
				document.getElementById('textareadepartmentdescription').value = "";
			}
		}
		xmlhttp.open("GET", "savedepartment.jsp?fisId=" + fisId
				+ "&departmentName=" + departmentName + "&departmentCode="
				+ departmentCode + "&departmentDescription="
				+ departmentDescription, true);
		xmlhttp.send();
	}
}

function saveMedication(grid, diet, activity, nursingCare, vitalSigns,
		patientId) {
	var rowVal = grid.rows.length - 1;
	// alert(grid);
	// alert(rowVal);
	// alert(patientId+":"+diet+":"+activity+":"+nursingCare+":"+vitalSigns+":"+grid);
	// now what i need is, to get the values of each and every grid cells as a
	// string and
	// pass it to the jsp
	stringValues = "";
	drugName = "";
	drugDose = "";
	drugRoute = "";
	drugFrequency = "";
	drugNameVal = "";
	drugDoseVal = "";
	drugRouteVal = "";
	drugFrequencyVal = "";

	for (i = 1; i <= rowVal; i++) {
		drugName = 'txtdrug' + i;
		drugDose = 'txtdose' + i;
		drugRoute = 'txtroute' + i;
		drugFrequency = 'txtfrequency' + i;
		// now get the values of the text fields
		drugNameVal = document.getElementById(drugName).value;
		durgDoseVal = document.getElementById(drugDose).value;
		durgRouteVal = document.getElementById(drugRoute).value;
		drugFrequencyVal = document.getElementById(drugFrequency).value;

		stringValues += "&" + drugName + "=" + drugNameVal + "&" + drugDose
				+ "=" + durgDoseVal + "&" + drugRoute + "=" + durgRouteVal
				+ "&" + drugFrequency + "=" + drugFrequencyVal;
	}

	// alert(stringValues);

	// alert(stringValues);
	// now call the ajax method to save the entire sheet
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("inner-main").innerHTML = xmlhttp.responseText;
			document.getElementById('medicationDetailDiv').innerHTML = "<strong><font color='green'>Medication Saved Successfully!</font></strong>";
		}
	}
	xmlhttp.open("GET", "savemedication.jsp?patientId=" + patientId + "&diet="
			+ diet + "&activity=" + activity + "&nursingCare=" + nursingCare
			+ "&vitalSigns=" + vitalSigns + stringValues + "&rowVal=" + rowVal,
			true);
	xmlhttp.send();
}

function saveEmployee(firstName, fatherName, grandFatherName, sex, dateOfBirth,
		idNumber, pensionNumber, employementDate, religionId, nationality,
		maritalStatusId, spouseFullName, basicSalary, employeeTypeId,
		employeePosition, fStudyId, budgetCenter, employementTypeId, collegeId,
		fisId, departmentId, educationGrid, experienceGrid, trainingGrid,
		kefeleKetemaId, woreda, kebele, houseNumber, telephoneHouse,
		telephoneMobile, email) {
	// now check if the parameters are in correct order

	/*alert(firstName + ":" + fatherName + ":" + grandFatherName + ":" + sex
			+ ":" + dateOfBirth + ":" + idNumber + ":" + pensionNumber + ":"
			+ employementDate + ":" + religionId + ":" + nationality + ":"
			+ maritalStatusId + ":" + spouseFullName + ":" + basicSalary + ":"
			+ employeeTypeId + ":" + employeePosition + ":" + fStudyId + ":"
			+ budgetCenter + ":" + employementTypeId + ":" + collegeId + ":"
			+ fisId + ":" + departmentId + ":" + educationGrid + ":"
			+ experienceGrid + ":" + trainingGrid + ":" + kefeleKetemaId + ":"
			+ woreda + ":" + kebele + ":" + houseNumber + ":" + telephoneHouse
			+ ":" + telephoneMobile + ":" + email);*/

	if (firstName == "") {
		document.getElementById('txtfirstname').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the first name!</p>";
		document.getElementById('txtfirstname').focus();
	} else if (fatherName == "") {
		document.getElementById('txtfirstname').style.borderColor = "green";
		document.getElementById('txtfathername').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the father name!</p>";
		document.getElementById('txtfathername').focus();
		return false;
	} else if (grandFatherName == "") {
		document.getElementById('txtfathername').style.borderColor = "green";
		document.getElementById('txtgrandfathername').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the grand father name!</p>";
		document.getElementById('txtgrandfathername').focus();
		return false;
	} else if (sex == "") {
		document.getElementById('txtgrandfathername').style.borderColor = "green";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please select the sex of the employee!</p>";
		document.getElementById('slctsex').style.borderColor = "red";
		document.getElementById('slctsex').focus();
		return false;
	} else if (dateOfBirth == "") {
		document.getElementById('slctsex').style.borderColor = 'green';
		document.getElementById('txtdateofbirth').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the date of birth!</p>";
		document.getElementById('txtdateofbirth').focus();
		return false;
	} else if (idNumber == "") {
		document.getElementById('slctsex').style.borderColor = "green";
		document.getElementById('txtidnumber').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the id number!</p>";
		document.getElementById('txtidnumber').focus();
		return false;
	} else if (employementDate == "") {
		document.getElementById('txtidnumber').style.borderColor = "green";
		document.getElementById('txtemployementdate').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Enter date of employement!</p>";
		document.getElementById('txtemployementdate').focus();
		return false;
	} else if (religionId == "") {
		document.getElementById('txtemployementdate').style.borderColor = "green";
		document.getElementById('slctreligion').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select religion!</p>";
		document.getElementById('slctreligion').focus();
		return false;
	} else if (nationality == "") {
		document.getElementById('slctreligion').style.borderColor = "green";
		document.getElementById('txtnationality').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Enter the nationality!</p>";
		document.getElementById('txtnationality').focus();
		return false;
	} else if (maritalStatusId == "") {
		document.getElementById('txtnationality').style.borderColor = "green";
		document.getElementById('slctmaritalstatus').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select marital status!</p>";
		document.getElementById('slctmaritalstatus').focus();
		return false;
	} else if (basicSalary == "") {
		document.getElementById('slctmaritalstatus').style.borderColor = "green";
		document.getElementById('txtbasicsalary').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Enter basic salary!</p>";
		document.getElementById('txtbasicsalary').focus();
		return false;
	} else if (employeeTypeId == "") {
		document.getElementById('txtbasicsalary').style.borderColor = "green";
		document.getElementById('slctemployeetype').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select employee type!</p>";
		document.getElementById('slctemployeetype').focus();
		return false;
	} else if (fStudyId == "") {
		document.getElementById('slctemployeetype').style.borderColor = "green";
		document.getElementById('slctfstudy').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select field of study!</p>";
		document.getElementById('slctfstudy').focus();
		return false;
	} else if (budgetCenter == "") {
		document.getElementById('slctfstudy').style.borderColor = "green";
		document.getElementById('slctbudgetcenter').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select budget center!</p>";
		document.getElementById('slctbudgetcenter').focus();
		return false;
	} else if (employementTypeId == "") {
		document.getElementById('slctbudgetcenter').style.borderColor = "green";
		document.getElementById('slctemployementtype').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select the employement type!</p>";
		document.getElementById('slctemployementtype').focus();
		return false;
	} else if (collegeId == "") {
		document.getElementById('slctemployementtype').style.borderColor = "green";
		document.getElementById('slctcollege').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select the college!</p>";
		document.getElementById('slctcollege').focus();
		return false;
	} else if (kefeleKetemaId == "") {
		document.getElementById('txtdateofaction').style.borderColor = "green";
		document.getElementById('slctkefeleketema').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Select kefele ketema!</p>";
		document.getElementById('slctkefeleketema').focus();
		return false;
	} else {
		// now the validation is okay...just go to the variable extraction thing
		// from the three grids
		var educationRowVal = educationGrid.rows.length - 1;
		var experienceRowVal = experienceGrid.rows.length - 1;
		var trainingRowVal = trainingGrid.rows.length - 1;

		stringValues = "";

		// for the educationGrid
		nameOfInstitution = "";
		fieldOfStudyId = "";
		educationLevel = "";
		dateOfAward = "";
		nameOfInstitutionVal = "";
		fieldOfStudyIdVal = "";
		educationLevelVal = "";
		dateOfAwardVal = "";

		// for the experienceGrid
		jobId = "";
		startingFrom = "";
		upTo = "";
		placeOfWork = "";
		jobIdVal = "";
		startingFromVal = "";
		upToVal = "";
		placeOfWorkVal = "";

		// for the trainingGrid
		trainingTaken = "";
		trainingTakenVal = "";

		for (i = 1; i <= educationRowVal; i++) {
			nameOfInstitution = 'txtnameofinstitution' + i;
			fieldOfStudyId = 'slctfieldofstudy' + i;
			educationLevel = 'txteducationlevel' + i;
			dateOfAward = 'txtdateofaward'+i;
			// now get the values of the text fields
			nameOfInstitutionVal = document.getElementById(nameOfInstitution).value;
			fieldOfStudyIdVal = document.getElementById(fieldOfStudyId).value;
			educationLevelVal = document.getElementById(educationLevel).value;
			dateOfAwardVal = document.getElementById(dateOfAward).value;

			stringValues += "&" + nameOfInstitution + "="
					+ nameOfInstitutionVal + "&" + fieldOfStudyId + "="
					+ fieldOfStudyIdVal + "&"+ educationLevel +"="+ educationLevelVal + "&"+ dateOfAward +"="+ dateOfAwardVal;
		}

		for (j = 1; j <= experienceRowVal; j++) {
			jobId = 'slctjob' + j;
			startingFrom = 'txtstartingfrom' + j;
			upTo = 'txtupto' + j;
			placeOfWork = 'txtplaceofwork' + j
			// now get the values...
			jobIdVal = document.getElementById(jobId).value;
			startingFromVal = document.getElementById(startingFrom).value;
			upToVal = document.getElementById(upTo).value;
			placeOfWorkVal = document.getElementById(placeOfWork).value;

			stringValues += "&" + jobId + "=" + jobIdVal + "&" + startingFrom
					+ "=" + startingFromVal + "&" + upTo + "=" + upToVal + "&"
					+ placeOfWork + "=" + placeOfWorkVal;
		}

		for (k = 1; k <= trainingRowVal; k++) {
			trainingTaken = 'txttrainingtaken' + k;
			placeOfTraining = 'txtplaceoftraining' + k;
			duration = 'txtduration' + k;
			yearOfTraining = 'txtyearoftraining' + k;
			// now get the value...
			trainingTakenVal = document.getElementById(trainingTaken).value;
			placeOfTrainingVal = document.getElementById(placeOfTraining).value;
			durationVal = document.getElementById(duration).value;
			yearOfTrainingVal = document.getElementById(yearOfTraining).value;

			stringValues += "&" + trainingTaken + "=" + trainingTakenVal + "&" + placeOfTraining + "=" + placeOfTrainingVal +
			"&" + duration + "=" + durationVal + "&" + yearOfTraining + "=" + yearOfTrainingVal;
		}

		/*
		 * alert(firstName+":"+fatherName+":"+grandFatherName+":"+sex+":"+dateOfBirth+":"+idNumber+":"+pensionNumber+":"+employementDate+":"+
		 * religionId+":"+nationality+":"+maritalStatusId+":"+spouseFullName+":"+basicSalary+":"+employeeTypeId+":"+employeePosition+":"+
		 * fStudyId+":"+budgetCenter+":"+employementTypeId+":"+collegeId+":"+fisId+":"+departmentId+":"+educationGrid+":"+experienceGrid+":"+
		 * trainingGrid+":"+evaluationResult+":"+actionTaken+":"+dateOfAction+":"+description+":"+otherComment+":"+kefeleKetemaId+":"+
		 * woreda+":"+kebele+":"+houseNumber+":"+telephoneHouse+":"+telephoneMobile+":"+email+stringValues);
		 */

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById('employeeRegistrationFormDiv').innerHTML = xmlhttp.responseText;
				document.getElementById("employeeSaveDiv").innerHTML = "<p class='msg done'>Employee saved successfully!</p>";
			}
		}
		xmlhttp.open("GET", "saveemployee.jsp?firstName=" + firstName
				+ "&fatherName=" + fatherName + "&grandFatherName="
				+ grandFatherName + "&sex=" + sex + "&dateOfBirth="
				+ dateOfBirth + "&idNumber=" + idNumber + "&pensionNumber="
				+ pensionNumber + "&employementDate=" + employementDate
				+ "&religionId=" + religionId + "&nationality=" + nationality
				+ "&maritalStatusId=" + maritalStatusId + "&spouseFullName="
				+ spouseFullName + "&basicSalary=" + basicSalary
				+ "&employeeTypeId=" + employeeTypeId + "&employeePosition="
				+ employeePosition + "&fStudyId=" + fStudyId + "&budgetCenter="
				+ budgetCenter + "&employementTypeId=" + employementTypeId
				+ "&collegeId=" + collegeId + "&fisId=" + fisId
				+ "&departmentId=" + departmentId + "&kefeleKetemaId="
				+ kefeleKetemaId + "&woreda=" + woreda + "&kebele=" + kebele
				+ "&houseNumber=" + houseNumber + "&telephoneHouse="
				+ telephoneHouse + "&telephoneMobile=" + telephoneMobile
				+ "&email=" + email + stringValues + "&educationRowVal="
				+ educationRowVal + "&experienceRowVal=" + experienceRowVal
				+ "&trainingRowVal=" + trainingRowVal, true);
		xmlhttp.send();
	}
}

function saveAttendance(employeeId,absentOnStartDate,absentOnEndDate,reasonForAbsence){
	//alert(employeeId+":"+absentOnStartDate+":"+absentOnEndDate+":"+reasonForAbsence);
	if(employeeId == ""){
		document.getElementById('errorDiv').innerHTML = "Please select the employee!";
		document.getElementById('slctemployee').style.borderColor="red";
		document.getElementById('slctemployee').focus();
		return false;
	}else if(absentOnStartDate == ""){
		document.getElementById('errorDiv').innerHTML = "Please enter the start date!";
		document.getElementById('slctemployee').style.borderColor="green";
		document.getElementById('txtabsentonstartdate').style.borderColor="red";
		document.getElementById('txtabsentonstartdate').focus();
		return false;
	}else if(absentOnEndDate == ""){
		document.getElementById('errorDiv').innerHTML = "Please enter the end date!";
		document.getElementById('slctemployee').style.borderColor="green";
		document.getElementById('txtabsentonenddate').style.borderColor="red";
		document.getElementById('txtabsentonenddate').focus();
		return false;
	}else if(reasonForAbsence == ""){
		document.getElementById('errorDiv').innerHTML = "Please enter the reason for absence!";
		document.getElementById('txtabsenton').style.borderColor="green";
		document.getElementById('textareareasonforabsence').style.borderColor = "red";
		document.getElementById('textareareasonforabsence').focus();
		return false;
	}else{
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceFormDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('attendanceSaveDiv').innerHTML = "<p class='msg done'>Attendance saved successfully!</p>";
			}
		}
		xmlhttp.open("GET", "saveattendance.jsp?employeeId="+employeeId+"&absentOnStartDate="+absentOnStartDate+"&reasonForAbsence="+reasonForAbsence+
				"&absentOnEndDate="+absentOnEndDate, true);
		xmlhttp.send();
	}
}

function showListOfEmployeeSelectorToViewAttendance(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeeselectortoviewattendance.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeeSelectorToEditAttendance(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeeselectortoeditattendance.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeeSelectorToDeleteAttendance(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeeselectortodeleteattendance.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeeSelectorToDeleteAttendance(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeeselectortodeleteattendance.jsp", true);
	xmlhttp.send();
}

function showAttendanceSheetForThisEmployee(empId){
	//alert(empId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceSheetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showattendancesheetforthisemployee.jsp?empId="+empId, true);
	xmlhttp.send();
}

function showAttendanceSheetForThisEmployeeToEdit(empId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceSheetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showattendancesheetforthisemployeetoedit.jsp?empId="+empId, true);
	xmlhttp.send();
}

function showAttendanceSheetForThisEmployeeToDelete(empId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceSheetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showattendancesheetforthisemployeetodelete.jsp?empId="+empId, true);
	xmlhttp.send();
}

function showEditFieldsOfThisAttendanceDetail(attDetailId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceDetailEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisattendancedetail.jsp?attDetailId="+attDetailId, true);
	xmlhttp.send();
}

function deleteThisAttendanceDetail(attDetailId){
	if(window.confirm("Are you sure you want to delete this attendance detail?")){
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceDetailEditDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisattenddancedetail.jsp?attDetailId="+attDetailId, true);
		xmlhttp.send();
	}
}

function updateAttendanceDetail(attendanceDetailId,startDate,endDate,reason){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceDetailEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateattendancedetail.jsp?attendanceDetailId="+attendanceDetailId+"&startDate="+startDate+
			"&endDate="+endDate+"&reason="+reason, true);
	xmlhttp.send();
}

function showDivisionRegistrationForm(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("divisionRegistrationFormDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "divisionregistrationform.jsp", true);
	xmlhttp.send();
}

function showListOfFIS() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffis.jsp", true);
	xmlhttp.send();
}

function showListOfColleges() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcolleges.jsp", true);
	xmlhttp.send();
}

function showListOfCollegesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcollegesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfUsers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusers.jsp", true);
	xmlhttp.send();
}

function showListOfUsersForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusersforedit.jsp", true);
	xmlhttp.send();
}

function showListOfUsersForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusersfordelete.jsp", true);
	xmlhttp.send();
}

function showEmployeeRegistrationForm(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeRegistrationFormDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeeregistrationform.jsp", true);
	xmlhttp.send();
}

function showListOfEmployees() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployees.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfordelete.jsp", true);
	xmlhttp.send();
}

function showAddDepartmentForm(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("departmentRegistrationFormDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "departmentregistrationform.jsp", true);
	xmlhttp.send();
}

function showListOfDepartments() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofdepartments.jsp", true);
	xmlhttp.send();
}

function showListOfFISForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffisforedit.jsp", true);
	xmlhttp.send();
}

function showListOfDepartmentsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofdepartmentsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfFISForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffisfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfCollegesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcollegesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfDepartmentsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofdepartmentsfordelete.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfFIS(fisId) {
	// alert(facultyId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("facultyEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoffis.jsp?fisId=" + fisId, true);
	xmlhttp.send();
}

function showEditFieldsOfSystemUser(userId) {
	// alert(userId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("userEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofuser.jsp?userId=" + userId, true);
	xmlhttp.send();
}

function showEditFieldsOfCollege(collegeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("campusEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofcollege.jsp?collegeId=" + collegeId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfEmployee(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofemployee.jsp?id=" + id, true);
	xmlhttp.send();
}

function showEditFieldsOfUser(accountId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editUserDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofuser.jsp?accountId=" + accountId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfDepartment(departmentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("academicUnitEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofdepartment.jsp?departmentId="
			+ departmentId, true);
	xmlhttp.send();
}

function updateFIS(fisId, fisCode, fisName, collegeCode, fisDescription) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatefis.jsp?fisCode=" + fisCode + "&fisName="
			+ fisName + "&collegeCode=" + collegeCode + "&fisDescription="
			+ fisDescription + "&fisId=" + fisId, true);
	xmlhttp.send();
}

function updateCollege(collegeCode, collegeName, collegeDescription) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatecollege.jsp?collegeCode=" + collegeCode
			+ "&collegeName=" + collegeName + "&collegeDescription="
			+ collegeDescription, true);
	xmlhttp.send();
}

function updateUserType(accountId, memberType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateusertype.jsp?accountId=" + accountId
			+ "&memberType=" + memberType, true);
	xmlhttp.send();
}

function updateDepartment(departmentId, fisCode, departmentCode,
		departmentName, departmentDescription) {
	// alert(academicUnitId+":"+facultyId+":"+academicUnitName);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatedepartment.jsp?fisCode=" + fisCode
			+ "&departmentCode=" + departmentCode + "&departmentName="
			+ departmentName + "&departmentDescription="
			+ departmentDescription + "&departmentId=" + departmentId, true);
	xmlhttp.send();
}

function updateEmployee(empId, firstName, lastName, birthDate, sex,
		jobPosition, idNumber, facultyId, dateEmployeed) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateemployee.jsp?empId=" + empId + "&firstName="
			+ firstName + "&lastName=" + lastName + "&birthDate=" + birthDate
			+ "&sex=" + sex + "&jobPosition=" + jobPosition + "&idNumber="
			+ idNumber + "&facultyId=" + facultyId + "&dateEmployeed="
			+ dateEmployeed, true);
	xmlhttp.send();
}

function deleteThisFIS(fisId) {
	if (window
			.confirm('Are you sure you want to delete this Faculty/Institute/School?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisfis.jsp?fisId=" + fisId, true);
		xmlhttp.send();
	}
}

function deleteThisSystemUser(userId) {
	if (window.confirm('Are you sure you want to delete this user?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissystemuser.jsp?userId=" + userId, true);
		xmlhttp.send();
	}
}

function deleteThisCollege(collegeCode) {
	if (window.confirm('Are you sure you want to delete this college?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiscollege.jsp?collegeCode=" + collegeCode,
				true);
		xmlhttp.send();
	}
}

function deleteThisEmployee(empId) {
	if (window.confirm('Are you sure you want to delete this employee?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisemployee.jsp?empId=" + empId, true);
		xmlhttp.send();
	}
}

function deleteThisUser(accountId, empId) {
	if (window
			.confirm('Are you sure you want to delete this employee account?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisuser.jsp?accountId=" + accountId
				+ "&empId=" + empId, true);
		xmlhttp.send();
	}
}

function deleteThisDepartment(departmentId) {
	if (window.confirm('Are you sure you want to delete this department?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisdepartment.jsp?departmentId="
				+ departmentId, true);
		xmlhttp.send();
	}
}

function changeTheFISValues(fisCode) {
	// alert(fisCode);
	document.getElementById('hiddenfiscode').value = fisCode;

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditfisname").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethefisvalues.jsp?fisCode=" + fisCode, true);
	xmlhttp.send();
}

function populateFISDropdownWithCollege(collegeId) {
	// alert(collegeId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fisDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populatefisdropdownwithcollege.jsp?collegeId="
			+ collegeId, true);
	xmlhttp.send();
}

function populateNewFISDropdownWithCollege(collegeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fisNewDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populatenewfisdropdownwithcollege.jsp?collegeId="
			+ collegeId, true);
	xmlhttp.send();
}

function populateEditFISDropdownWithCollege(collegeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fisEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populateeditfisdropdownwithcollege.jsp?collegeId="
			+ collegeId, true);
	xmlhttp.send();
}

function populateDepartmentDropdownWithFIS(fisId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("departmentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populatefisdropdownwithfis.jsp?fisId=" + fisId, true);
	xmlhttp.send();
}

function populateNewDepartmentDropdownWithFIS(fisId) {
	// alert("the dept changeer : "+fisId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("departmentNewDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populatenewfisdropdownwithfis.jsp?fisId=" + fisId,
			true);
	xmlhttp.send();
}

function populateEditDepartmentDropdownWithFIS(fisId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("departmentEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populateeditdepartmentdropdownwithfis.jsp?fisId="
			+ fisId, true);
	xmlhttp.send();
}

function suggestUsername(val) {
	document.getElementById('txtusername').value = val;
	var suggestedPassword = val + "123";
	document.getElementById('txtpassword').value = suggestedPassword;
}

function changeSexValue(newSex) {
	document.getElementById("txtsex").value = newSex;
}

function showAdmissionTypeInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadmissiontypeinnermenu.jsp", true);
	xmlhttp.send();
}

function showFieldOfStudyInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfieldofstudyinnermenu.jsp", true);
	xmlhttp.send();
}

function showJobInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showjobinnermenu.jsp", true);
	xmlhttp.send();
}

function showSalaryInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsalaryinnermenu.jsp", true);
	xmlhttp.send();
}

function showMaritalStatusInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showmaritalstatusinnermenu.jsp", true);
	xmlhttp.send();
}

function showReligionInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreligioninnermenu.jsp", true);
	xmlhttp.send();
}

function showEducationLevelInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeducationlevelinnermenu.jsp", true);
	xmlhttp.send();
}

function showLanguageManagementInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlanguagemanagementinnermenu.jsp", true);
	xmlhttp.send();
}

function showTranslationManagementInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtranslationmanagementinnermenu.jsp", true);
	xmlhttp.send();
}

function showAddLanguageForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddlanguageform.jsp", true);
	xmlhttp.send();
}

function showAddTranslationForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddtranslationform.jsp", true);
	xmlhttp.send();
}

function showTheTranslatedLabelCaptionForTheSelectedLanguage(langId, labelId) {
	// alert(langId+":"+labelId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txttranslatedvalue").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthetranslatedlabelcaptionfortheselectedlanguage.jsp?langId="
					+ langId + "&labelId=" + labelId, true);
	xmlhttp.send();
}

function saveTranslation(langId, labelId, labelValue) {
	if (langId == "") {
		document.getElementById('errorMsgDiv').innerHTML = "Select the language";
		document.getElementById('slctlanguage').style.borderColor = "red";
		document.getElementById('slctlanguage').focus();
		return false;
	} else if (labelId == "") {
		document.getElementById('errorMsgDiv').innerHTML = "Select the label";
		document.getElementById('slctlabel').style.borderColor = "red";
		document.getElementById('slctlanguage').style.borderColor = "green";
		document.getElementById('slctlabel').focus();
		return false;
	} else if (labelValue == "") {
		document.getElementById('errorMsgDiv').innerHTML = "Enter the translation";
		document.getElementById('txttranslatedvalue').style.borderColor = "red";
		document.getElementById('slctlabel').style.borderColor = "green";
		document.getElementById('txttranslatedvalue').focus();
		return false;
	} else {
		// alert(langId+":"+labelId+":"+labelValue);
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savetranslation.jsp?langId=" + langId
				+ "&labelId=" + labelId + "&labelValue=" + labelValue, true);
		xmlhttp.send();
	}
}

function showListOfTranslations() {

}

function showListOfTranslationsForEdit() {

}

function showListOfTranslationsForDelete() {

}



function saveBenefitsManagement(employeeId, benefitName, benefitDate,
		description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("hrModuleDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('successDiv').innerHTML = "<p class='msg done'>Benefits management saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savebenefitsmanagement.jsp?employeeId=" + employeeId
			+ "&benefitName=" + benefitName + "&benefitDate=" + benefitDate
			+ "&description=" + description, true);
	xmlhttp.send();
}

function savePromotionManagement(employeeId, promotedFromDivisionId, promotedToDivisionId,promotedFromDepartmentId,promotedToDepartmentId,
		promotionDetail, promotionDate) {
	// alert(employeeId+":"+promotedFrom+":"+promotedTo+":"+promotionDetail+":"+promotionDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("hrModuleDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('successDiv').innerHTML = "<p class='msg done'>Promotion management saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savepromotionmanagement.jsp?employeeId=" + employeeId
			+ "&promotedFromDivisionId=" + promotedFromDivisionId + "&promotedToDivisionId=" + promotedToDivisionId
			+ "&promotedFromDepartmentId=" + promotedFromDepartmentId + "&promotedToDepartmentId="+ promotedToDepartmentId
			+ "&promotionDetail=" + promotionDetail + "&promotionDate="
			+ promotionDate, true);
	xmlhttp.send();
}

function saveTransferManagement(employeeId, promotedFromDivisionId, promotedToDivisionId,promotedFromDepartmentId,promotedToDepartmentId,
		promotionDetail, promotionDate) {
	// alert(employeeId+":"+promotedFrom+":"+promotedTo+":"+promotionDetail+":"+promotionDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("hrModuleDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('successDiv').innerHTML = "<p class='msg done'>Transfer management saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savetransfermanagement.jsp?employeeId=" + employeeId
			+ "&transferedFromDivisionId=" + promotedFromDivisionId + "&transferedToDivisionId=" + promotedToDivisionId
			+ "&transferedFromDepartmentId=" + promotedFromDepartmentId + "&transferedToDepartmentId="+ promotedToDepartmentId
			+ "&transferDetail=" + promotionDetail + "&transferDate="
			+ promotionDate, true);
	xmlhttp.send();
}
function showFromDivision(divisionId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtpromotedfromdivision").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showfromdivision.jsp?divisionId=" + divisionId, true);
	xmlhttp.send();
}

function showToDivision(divisionId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtpromotedtodivision").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showtodivision.jsp?divisionId=" + divisionId, true);
	xmlhttp.send();
}

function showFromDepartment(departmentId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtpromotedfromdepartment").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showfromdepartment.jsp?departmentId=" + departmentId, true);
	xmlhttp.send();
}

function showToDepartment(departmentId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtpromotedtodepartment").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showtodepartment.jsp?departmentId=" + departmentId, true);
	xmlhttp.send();
}

function showEditFromDivision(divisionId){
	document.getElementById('hiddenpromotionfromdivisionid').value = divisionId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditpromotedfromdivision").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showfromdivision.jsp?divisionId=" + divisionId, true);
	xmlhttp.send();
}

function showEditToDivision(divisionId){
	document.getElementById('hiddenpromotedtodivisionid').value = divisionId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditpromotedtodivision").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showtodivision.jsp?divisionId=" + divisionId, true);
	xmlhttp.send();
}

function showEditFromDepartment(departmentId){
	document.getElementById('hiddenpromotedfromdepartmentid').value = departmentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditpromotedfromdepartment").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showfromdepartment.jsp?departmentId=" + departmentId, true);
	xmlhttp.send();
}

function showEditToDepartment(departmentId){
	document.getElementById('hiddenpromotedtodepartmentid').value = departmentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditpromotedtodepartment").value = xmlhttp.responseText;			
		}
	}
	xmlhttp.open("GET", "showtodepartment.jsp?departmentId=" + departmentId, true);
	xmlhttp.send();
}

function saveDisciplineManagement(employeeId, disciplineName, disciplineDate,
		description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("hrModuleDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('successDiv').innerHTML = "<p class='msg done'>Discipline management saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savedisciplinemanagement.jsp?employeeId=" + employeeId
			+ "&disciplineName=" + disciplineName + "&disciplineDate="
			+ disciplineDate + "&description=" + description, true);
	xmlhttp.send();
}

function saveLeaveManagement(employeeId,startingFrom,upto,leaveTypeId,leaveFromLastLeavePeriod,leaveTaken,leaveToNextLeavePeriod){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("hrModuleDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('successDiv').innerHTML = "<p class='msg done'>Leave management saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "saveleavemanagement.jsp?employeeId=" + employeeId
			+ "&startingFrom=" + startingFrom + "&upto="
			+ upto + "&leaveTypeId=" + leaveTypeId+"&leaveFromLastLeavePeriod="+leaveFromLastLeavePeriod+
			"&leaveTaken="+leaveTaken+"&leaveToNextLeavePeriod="+leaveToNextLeavePeriod, true);
	xmlhttp.send();
}

function saveGriveanceManagement(employeeId, subject, description,
		griveanceDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("hrModuleDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('successDiv').innerHTML = "<p class='msg done'>Griveance management saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savegriveancemanagement.jsp?employeeId=" + employeeId
			+ "&subject=" + subject + "&description="
			+ description + "&griveanceDate=" + griveanceDate, true);
	xmlhttp.send();
}

function showListOfBenefitManagement() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofbenefitmanagement.jsp", true);
	xmlhttp.send();
}

function showListOfDisciplineManagement() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofdisciplinemanagement.jsp", true);
	xmlhttp.send();
}

function showListOfGriveanceManagement(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgriveancemanagement.jsp", true);
	xmlhttp.send();
}

function showListOfGriveanceManagementForEdit(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgriveancemanagementforedit.jsp", true);
	xmlhttp.send();
}

function showListOfGriveanceManagementForDelete(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgriveancemanagementfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfLeaveManagement(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofleavemanagement.jsp", true);
	xmlhttp.send();
}

function showListOfLeaveManagementForEdit(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofleavemanagementforedit.jsp", true);
	xmlhttp.send();
}

function showListOfLeaveManagementForDelete(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofleavemanagementfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfPromotionManagement() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpromotionmanagement.jsp", true);
	xmlhttp.send();
}

function showListOfTransferManagement(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoftransfermanagement.jsp", true);
	xmlhttp.send();
}

function showListOfBenefitManagementForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofbenefitmanagementforedit.jsp", true);
	xmlhttp.send();
}

function showListOfDisciplineManagementForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofdisciplinemanagementforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPromotionManagementForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpromotionmanagementforedit.jsp", true);
	xmlhttp.send();
}

function showListOfTransferManagementForEdit(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoftransfermanagementforedit.jsp", true);
	xmlhttp.send();
}

function showListOfBenefitManagementForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofbenefitmanagementfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfDisciplineManagementForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofdisciplinemanagementfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfPromotionManagementForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpromotionmanagementfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfTransferManagementForDelete(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoftransfermanagementfordelete.jsp", true);
	xmlhttp.send();
}

function showTheBenefitsOfThisEmployee(employeeId) {
	// alert(empId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("benefitsDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthebenefitsofthisemployee.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheDisciplineOfThisEmployee(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("disciplineDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthedisciplineofthisemployee.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheGriveanceOfThisEmployee(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("griveanceDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthegriveanceofthisemployee.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheGriveanceOfThisEmployeeForEdit(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("griveanceDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthegriveanceofthisemployeeforedit.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheGriveanceOfThisEmployeeForDelete(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("griveanceDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthegriveanceofthisemployeefordelete.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheLeaveOfThisEmployee(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leaveDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtheleaveofthisemployee.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheLeaveOfThisEmployeeForEdit(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leaveDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtheleaveofthisemployeeforedit.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheLeaveOfThisEmployeeForDelete(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leaveDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtheleaveofthisemployeefordelete.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showThePromotionOfThisEmployee(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthepromotionofthisemployee.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheTransferOfThisEmployee(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthetransferofthisemployee.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheBenefitsOfThisEmployeeForEdit(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("benefitsDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthebenefitsofthisemployeeforedit.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheDisciplineOfThisEmployeeForEdit(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("disciplineDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthedisciplineofthisemployeeforedit.jsp?employeeId="
					+ employeeId, true);
	xmlhttp.send();
}

function showThePromotionOfThisEmployeeForEdit(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthepromotionofthisemployeeforedit.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showTheTransferOfThisEmployeeForEdit(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthetransferofthisemployeeforedit.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function showThePromotionOfThisEmployeeForDelete(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthepromotionofthisemployeefordelete.jsp?employeeId="
					+ employeeId, true);
	xmlhttp.send();
}

function showTheTransferOfThisEmployeeForDelete(employeeId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthetransferofthisemployeefordelete.jsp?employeeId="
					+ employeeId, true);
	xmlhttp.send();
}

function showTheBenefitsOfThisEmployeeForDelete(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("benefitsDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthebenefitsofthisemployeefordelete.jsp?employeeId="
					+ employeeId, true);
	xmlhttp.send();
}

function showTheDisciplineOfThisEmployeeForDelete(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("disciplineDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthedisciplineofthisemployeefordelete.jsp?employeeId="
					+ employeeId, true);
	xmlhttp.send();
}

function showEditFieldsOfBenefitManagement(benefitManagementId, employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("benefitManagementEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofbenefitmanagement.jsp?benefitManagementId="
					+ benefitManagementId + "&employeeId=" + employeeId, true);
	xmlhttp.send();
}

function showEditFieldsOfDisciplineManagement(disciplineManagementId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("disciplineManagementEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofdisciplinemanagement.jsp?disciplineManagementId="
					+ disciplineManagementId, true);
	xmlhttp.send();
}

function showEditFieldsOfGriveanceManagement(griveanceManagementId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("griveanceManagementEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofgriveancemanagement.jsp?griveanceManagementId="
					+ griveanceManagementId, true);
	xmlhttp.send();
}

function showEditFieldsOfLeaveManagement(leaveId){
	//alert(leaveId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leaveManagementEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofleavemanagement.jsp?leaveId="
					+ leaveId, true);
	xmlhttp.send();
}

function changeTheLeaveTypeForThisLeave(leaveTypeId){
	//alert(leaveTypeId);
	document.getElementById('hiddenleavetypeid').value = leaveTypeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditleavetype").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"changetheleavetypeforthisleave.jsp?leaveTypeId="
					+ leaveTypeId, true);
	xmlhttp.send();
}

function showEditFieldsOfPromotion(promotionId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionManagementEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofpromotionmanagement.jsp?promotionId="
			+ promotionId, true);
	xmlhttp.send();
}

function showEditFieldsOfTransfer(promotionId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionManagementEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoftransfermanagement.jsp?promotionId="
			+ promotionId, true);
	xmlhttp.send();
}

function deleteThisBenefit(benefitManagementId) {
	if (window.confirm("Are you sure you want to delete this benefit?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("benefitsDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisbenefit.jsp?benefitManagementId="
				+ benefitManagementId, true);
		xmlhttp.send();
	}
}

function deleteThisDisciplineManagement(disciplineManagementId) {
	if (window
			.confirm("Are you sure you want to delete this discipline?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("disciplineDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"deletethisdisciplinemanagement.jsp?disciplineManagementId="
						+ disciplineManagementId, true);
		xmlhttp.send();
	}
}

function deleteThisGriveanceManagement(griveanceManagementId){
	if (window
			.confirm("Are you sure you want to delete this griveance?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("griveanceDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"deletethisgriveancemanagement.jsp?griveanceManagementId="
						+ griveanceManagementId, true);
		xmlhttp.send();
	}
}

function deleteThisLeave(leaveId){
	if (window
			.confirm("Are you sure you want to delete this leave?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("leaveDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"deletethisleave.jsp?leaveId="
						+ leaveId, true);
		xmlhttp.send();
	}
}

function deleteThisPromotion(promotionId) {
	if (window.confirm("Are you sure you want to delete this promotion?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethispromotion.jsp?promotionId="
				+ promotionId, true);
		xmlhttp.send();
	}
}

function deleteThisTransfer(promotionId){
	if (window.confirm("Are you sure you want to delete this transfer?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethistransfer.jsp?promotionId="
				+ promotionId, true);
		xmlhttp.send();
	}
}

function updateBenefitManagement(benefitManagementId, benefitName, benefitDate,
		description, employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("benefitsDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatebenefitmanagement.jsp?benefitManagementId="
			+ benefitManagementId + "&benefitName=" + benefitName
			+ "&benefitDate=" + benefitDate + "&description=" + description
			+ "&employeeId=" + employeeId, true);
	xmlhttp.send();
}

function updateDisciplineManagement(disciplineManagementId, disciplineName,
		disciplineDate, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("disciplineDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"updatedisciplinemanagement.jsp?disciplineManagementId="
					+ disciplineManagementId + "&disciplineName="
					+ disciplineName + "&disciplineDate=" + disciplineDate
					+ "&description=" + description, true);
	xmlhttp.send();
}

function updateGriveanceManagement(griveanceManagementId,subject,description,griveanceDate){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("griveanceDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"updategriveancemanagement.jsp?griveanceManagementId="
					+ griveanceManagementId + "&subject="
					+ subject + "&description=" + description
					+ "&griveanceDate=" + griveanceDate, true);
	xmlhttp.send();
}

function updateLeaveManagement(leaveId,startingFrom,upto,leaveTypeId,leaveFromLastLeavePeriod,leaveTaken,leaveToNextLeavePeriod){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leaveDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"updateleavemanagement.jsp?leaveId="
					+ leaveId + "&startingFrom="
					+ startingFrom + "&upto=" + upto
					+ "&leaveTypeId=" + leaveTypeId+"&leaveFromLastLeavePeriod="+leaveFromLastLeavePeriod+
					"&leaveTaken="+leaveTaken+"&leaveToNextLeavePeriod="+leaveToNextLeavePeriod, true);
	xmlhttp.send();
}

function updatePromotionManagement(promotionId, promotedFromDivisionId, promotedToDivisionId,promotedFromDepartmentId,promotedToDepartmentId,
		promotionDetail, promotionDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatepromotionmanagement.jsp?promotionId="
			+ promotionId + "&promotedFromDivisionId=" + promotedFromDivisionId + "&promotedToDivisionId="
			+ promotedToDivisionId + "&promotedFromDepartmentId="+promotedFromDepartmentId+"&promotedToDepartmentId="+
			promotedToDepartmentId+"&promotionDetail=" + promotionDetail
			+ "&promotionDate=" + promotionDate, true);
	xmlhttp.send();
}

function updateTransferManagement(promotionId, promotedFromDivisionId, promotedToDivisionId,promotedFromDepartmentId,promotedToDepartmentId,
		promotionDetail, promotionDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("promotionDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatetransfermanagement.jsp?promotionId="
			+ promotionId + "&promotedFromDivisionId=" + promotedFromDivisionId + "&promotedToDivisionId="
			+ promotedToDivisionId + "&promotedFromDepartmentId="+promotedFromDepartmentId+"&promotedToDepartmentId="+
			promotedToDepartmentId+"&promotionDetail=" + promotionDetail
			+ "&promotionDate=" + promotionDate, true);
	xmlhttp.send();
}

function deleteThisLanguage(langId) {
	if (window.confirm("Are you sure you want to delete this language?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethislanguage.jsp?langId=" + langId, true);
		xmlhttp.send();
	}
}

function updateLanguage(langId, language) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatelanguage.jsp?langId=" + langId + "&language="
			+ language, true);
	xmlhttp.send();
}

function showListOfLanguages() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflanguages.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfLanguage(langId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("languageEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoflanguage.jsp?langId=" + langId, true);
	xmlhttp.send();
}

function showListOfLanguagesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflanguagesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfLanguagesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflanguagesfordelete.jsp", true);
	xmlhttp.send();
}

function showEmployementTypeInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployementtypeinnermenu.jsp", true);
	xmlhttp.send();
}

function showFieldOfStudyInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfieldofstudyinnermenu.jsp", true);
	xmlhttp.send();
}

function showEmployeeTypeInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeetypeinnermenu.jsp", true);
	xmlhttp.send();
}

function showKefeleKetamaInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showkefeleketemainnermenu.jsp", true);
	xmlhttp.send();
}

function showVacancyInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	// alert("inside show vacancy inner menu");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showvacancyinnermenu.jsp", true);
	xmlhttp.send();
}

function showProgramLevelInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showprogramlevelinnermenu.jsp", true);
	xmlhttp.send();
}

function showRegionInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showregioninnermenu.jsp", true);
	xmlhttp.send();
}

function showRemarkInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showremarkinnermenu.jsp", true);
	xmlhttp.send();
}

function showRegistrarServicesInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showregistrarservicesinnermenu.jsp", true);
	xmlhttp.send();
}

function showSponsorInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsponsorinnermenu.jsp", true);
	xmlhttp.send();
}

function showPriceInformationInnerMenu() {
	// alert("here mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showpriceinformationinnermenu.jsp", true);
	xmlhttp.send();
}

function showAddAdmissionTypeForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddadmissiontypeform.jsp", true);
	xmlhttp.send();
}

function showAddEducationLevelForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddeducationlevelform.jsp", true);
	xmlhttp.send();
}

function showAddVacancyForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddvacancyform.jsp", true);
	xmlhttp.send();
}

function showListOfVacancy() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofvacancy.jsp", true);
	xmlhttp.send();
}

function showListOfVacancyForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofvacancyforedit.jsp", true);
	xmlhttp.send();
}

function showEducationLevelCriteriaInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("vacancySelectorForCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeducationlevelcriteriainnermenu.jsp", true);
	xmlhttp.send();
}

function showFieldOfStudyCriteriaInnerMenu() {
	// alert("mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("vacancySelectorForCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfieldofstudycriteriainnermenu.jsp", true);
	xmlhttp.send();
}

function showExperienceCriteriaInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("vacancySelectorForCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showexperiencecriteriainnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfVacancyForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofvacancyfordelete.jsp", true);
	xmlhttp.send();
}

function showCriteriaSettingInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcriteriasettinginnermenu.jsp", true);
	xmlhttp.send();
}

function showPlacementInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showplacementinnermenu.jsp", true);
	xmlhttp.send();
}

function showStartPlacingEmployee() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("placementDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showstartplacingemployee.jsp", true);
	xmlhttp.send();
}

function showPlacementResults() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("placementDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showplacementresults.jsp", true);
	xmlhttp.send();
}

function showPlacedEmployeeForVacancy(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showEmployeePlacementDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showplacedemployeeforvacancy.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showVacancyCriteria(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("vacancyCriteriaListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showvacancycriteria.jsp?vacancyId=" + vacancyId, true);
	xmlhttp.send();
}

function startPlacingEmployeesNowForVacancy(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("placedEmployeeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "startplacingemployeesnowforvacancy.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showAddKefeleKetemaForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddkefeleketemaform.jsp", true);
	xmlhttp.send();
}

function showAddEmployeeTypeForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddemployeetypeform.jsp", true);
	xmlhttp.send();
}

function showAddEmployementTypeForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddemployementtypeform.jsp", true);
	xmlhttp.send();
}

function showAddFieldOfStudyForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddfieldofstudyform.jsp", true);
	xmlhttp.send();
}

function showAddJobForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddjobform.jsp", true);
	xmlhttp.send();
}

function showAddSalaryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsalaryform.jsp", true);
	xmlhttp.send();
}

function showAddPayFrequencyForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddpayfrequencyform.jsp", true);
	xmlhttp.send();
}

function showListOfPayFrequencies() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpayfrequencies.jsp", true);
	xmlhttp.send();
}

function showListOfPayFrequenciesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpayfrequenciesforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfPayFrequency(payFrequencyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("payFrequencyEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofpayfrequency.jsp?payFrequencyId="
			+ payFrequencyId, true);
	xmlhttp.send();
}

function updatePayFrequency(payFrequencyId, payFrequencyName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatepayfrequency.jsp?payFrequencyId="
			+ payFrequencyId + "&payFrequencyName=" + payFrequencyName, true);
	xmlhttp.send();
}

function showListOfPayFrequenciesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpayfrequenciesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfSalaries() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsalaries.jsp", true);
	xmlhttp.send();
}

function showListOfSalariesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsalariesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfSalariesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsalariesfordelete.jsp", true);
	xmlhttp.send();
}

function showAddPayGradeForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddpaygradeform.jsp", true);
	xmlhttp.send();
}

function showAddReligionForm() {
	// alert("mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddreligionform.jsp", true);
	xmlhttp.send();
}

function showAddMaritalStatusForm() {
	// alert("mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddmaritalstatusform.jsp", true);
	xmlhttp.send();
}

function showAddFieldOfStudyForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddfieldofstudyform.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudies() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudies.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudiesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudiesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudiesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudiesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfJobsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofjobsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfReligionsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofreligionsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfMaritalStatusesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofmaritalstatusesfordelete.jsp", true);
	xmlhttp.send();
}

function showResetUsersAccount() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaccountsforreset.jsp", true);
	xmlhttp.send();
}

function showChangeUsername() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showchangeusername.jsp", true);
	xmlhttp.send();
}

function showChangePassword() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showchangepassword.jsp", true);
	xmlhttp.send();
}

function changeUsername(currentUsername, newUsername, password) {
	if (currentUsername == "") {
		document.getElementById('txtcurrentusername').style.borderColor = "red";
		document.getElementById('usernameErrorDiv').innerHTML = "<p class='msg warning'>Enter the current username!</p>";
		document.getElementById('txtcurrentusername').focus();
		return false;
	} else if (newUsername == "") {
		document.getElementById('txtcurrentusername').style.borderColor = "green";
		document.getElementById('txtnewusername').style.borderColor = "red";
		document.getElementById('usernameErrorDiv').innerHTML = "<p class='msg warning'>Enter the new username!</p>";
		document.getElementById('txtnewusername').focus();
		return false;
	} else if (password == "") {
		document.getElementById('txtnewusername').style.borderColor = "green";
		document.getElementById('txtpassword').style.borderColor = "red";
		document.getElementById('usernameErrorDiv').innerHTML = "<p class='msg warning'>Enter the password!</p>";
		document.getElementById('txtpassword').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "changeusername.jsp?currentUsername="
				+ currentUsername + "&newUsername=" + newUsername
				+ "&password=" + password, true);
		xmlhttp.send();
	}
}

function changePassword(currentUsername, currentPassword, newPassword,
		confirmPassword) {
	if (currentUsername == "") {
		document.getElementById('txtcurrentusername').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the current username</p>";
		document.getElementById('txtcurrentusername').focus();
		return false;
	} else if (currentPassword == "") {
		document.getElementById('txtcurrentpassword').style.borderColor = "red";
		document.getElementById('txtcurrentusername').style.borderColor = "green";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the current password!</p>";
		document.getElementById('txtcurrentpassword').focus();
		return false;
	} else if (newPassword == "") {
		document.getElementById('txtcurrentpassword').style.borderColor = "green";
		document.getElementById('txtnewpassword').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the new password!</p>";
		document.getElementById('txtnewpassword').focus();
		return false;
	} else if (confirmPassword == "") {
		document.getElementById('txtnewpassword').style.borderColor = "green";
		document.getElementById('txtconfirmpassword').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the confirmation password!</p>";
		document.getElementById('txtconfirmpassword').focus();
		return false;
	} else if (newPassword != confirmPassword) {
		document.getElementById('txtnewpassword').style.borderColor = "red";
		document.getElementById('txtconfirmpassword').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>New and confirmation password are not identical!</p>";
		document.getElementById('txtnewpassword').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "changepassword.jsp?currentUsername="
				+ currentUsername + "&currentPassword=" + currentPassword
				+ "&newPassword=" + newPassword, true);
		xmlhttp.send();
	}
}

function showLeftMenuListForAdmissionType() {
	// alert("here mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leftMenuDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "admissiontypeleftmenulist.jsp", true);
	xmlhttp.send();
}

function showAddRegionForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddregionform.jsp", true);
	xmlhttp.send();
}

function showAddRemarkForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddremarkform.jsp", true);
	xmlhttp.send();
}

function showAddRegistrarServiceForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddregistrarserviceform.jsp", true);
	xmlhttp.send();
}

function showAddSponsorForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsponsorform.jsp", true);
	xmlhttp.send();
}

function showListOfSponsors() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsponsors.jsp", true);
	xmlhttp.send();
}

function showListOfSponsorsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsponsorsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfSponsorsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsponsorsfordelete.jsp", true);
	xmlhttp.send();
}

function showAddPriceInformationForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddpriceinformationform.jsp", true);
	xmlhttp.send();
}

function showAddProgramLevelForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddprogramlevelform.jsp", true);
	xmlhttp.send();
}

function saveAdmissionType(admissionTypeName) {
	if (admissionTypeName == "") {
		document.getElementById('admissionTypeErrorDiv').innerHTML = "<p class='msg warning'>Enter admission type name!</p>";
		document.getElementById('txtadmissiontypename').style.borderColor = "red";
		document.getElementById('txtadmissiontypename').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveadmissiontype.jsp?admissionTypeName="
			+ admissionTypeName, true);
	xmlhttp.send();
}

function saveEducationLevel(educationLevel) {
	if (educationLevel == "") {
		document.getElementById('educationLevelErrorDiv').innerHTML = "<p class='msg warning'>Enter education level!</p>";
		document.getElementById('txteducationlevel').style.borderColor = "red";
		document.getElementById('txteducationlevel').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveeducationlevel.jsp?educationLevel="
			+ educationLevel, true);
	xmlhttp.send();
}

function saveEmployeeType(employeeType) {
	if (employeeType == "") {
		document.getElementById('employeeTypeErrorDiv').innerHTML = "<p class='msg warning'>Enter employee type!</p>";
		document.getElementById('txtemployeetype').style.borderColor = "red";
		document.getElementById('txtemployeetype').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveemployeetype.jsp?employeeType=" + employeeType,
			true);
	xmlhttp.send();
}

function updateWorksAt(worksAtId, collegeId, facultyId, departmentId) {
	// alert(worksAtId+":"+collegeId+":"+facultyId+":"+departmentId);
	if (collegeId == 0) {
		document.getElementById('slcteditcollege').style.borderColor = "red";
		document.getElementById('slcteditcollege').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editWorksAtDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateworksat.jsp?worksAtId=" + worksAtId
			+ "&collegeId=" + collegeId + "&facultyId=" + facultyId
			+ "&departmentId=" + departmentId, true);
	xmlhttp.send();
}

function updateDependant(depId, firstName, fatherName, grandFatherName, city,
		kefeleKetemaId, woreda, kebele, houseNumber, mobile, relation) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editDependantDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatedependant.jsp?depId=" + depId + "&firstName="
			+ firstName + "&fatherName=" + fatherName + "&grandFatherName="
			+ grandFatherName + "&city=" + city + "&kefeleKetemaId="
			+ kefeleKetemaId + "&woreda=" + woreda + "&kebele=" + kebele
			+ "&houseNumber=" + houseNumber + "&mobile=" + mobile
			+ "&relation=" + relation, true);
	xmlhttp.send();
}

function upateAddress(addressId, kefeleKetemaId, woreda, kebele, houseNumber,
		telephoneHouse, mobile, email) {
	// alert(addressId+":"+kefeleKetemaId+":"+woreda+":"+kebele+":"+houseNumber+":"+telephoneHouse+":"+mobile+":"+email);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editAddressDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateaddress.jsp?addressId=" + addressId
			+ "&kefeleKetemaId=" + kefeleKetemaId + "&woreda=" + woreda
			+ "&kebele=" + kebele + "&houseNumber=" + houseNumber
			+ "&telephoneHouse=" + telephoneHouse + "&mobile=" + mobile
			+ "&email=" + email, true);
	xmlhttp.send();
}

function updateTrainingInformation(tId, training,placeOfTraining,duration,yearOfTraining) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editTrainingInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatetraininginformation.jsp?tId=" + tId
			+ "&training=" + training+"&placeOfTraining="+placeOfTraining+"&duration="+duration+"&yearOfTraining="+yearOfTraining, true);
	xmlhttp.send();
}

function updateEducationInformation(eduId, nameOfInstitution, fieldOfStudyId,educationLevel,dateOfAward) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editEducationInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateeducationinformation.jsp?eduId=" + eduId
			+ "&nameOfInstitution=" + nameOfInstitution + "&fieldOfStudyId="
			+ fieldOfStudyId+"&educationLevel="+educationLevel+"&dateOfAward="+dateOfAward, true);
	xmlhttp.send();
}

function updateExperience(exId, jobId, startingFrom, upto, place) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editExperienceInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateexperience.jsp?exId=" + exId + "&jobId=" + jobId
			+ "&startingFrom=" + startingFrom + "&upto=" + upto + "&place="
			+ place, true);
	xmlhttp.send();
}

function updateActionTakenOnEmployee(actionId, actionTaken, dateOfAction,
		description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editActionOnEmployeeDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateactiontakenonemployee.jsp?actionId=" + actionId
			+ "&actionTaken=" + actionTaken + "&dateOfAction=" + dateOfAction
			+ "&description=" + description, true);
	xmlhttp.send();
}

function updateOtherComment(commentId, theComment) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editOtherCommentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateothercomment.jsp?commentId=" + commentId
			+ "&theComment=" + theComment, true);
	xmlhttp.send();
}

function updateEvaluationResult(evalId, result) {
	// alert(evalId+":"+result);
	if (result == "") {
		document.getElementById('txteditevaluationresult').style.borderColor = "red";
		document.getElementById('txteditevaluationresult').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("editEvaluationResultDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "updateevaluationresult.jsp?evalId=" + evalId
				+ "&result=" + result, true);
		xmlhttp.send();
	}
}

function saveWorksAt(empRecId, collegeId, facultyId, departmentId) {
	// alert(empRecId+":"+collegeId+":"+facultyId+":"+departmentId);
	if (collegeId == 0) {
		document.getElementById('slctnewcollege').style.borderColor = "red";
		document.getElementById('slctnewcollege').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newWorksAtDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveworksat.jsp?empRecId=" + empRecId + "&collegeId="
			+ collegeId + "&facultyId=" + facultyId + "&departmentId="
			+ departmentId, true);
	xmlhttp.send();
}

function saveNewTrainingInformation(empRecId, t,placeOfTraining,duration,yearOfTraining) {
	if (t == '') {
		document.getElementById('txtnewtrainingtaken').style.borderColor = "red";
		document.getElementById('txtnewtrainingtaken').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newTrainingInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savenewtraininginformation.jsp?empRecId=" + empRecId
			+ "&t=" + t+"&placeOfTraining="+placeOfTraining+"&duration="+duration+"&yearOfTraining="+yearOfTraining, true);
	xmlhttp.send();
}

function saveMaritalStatus(maritalStatus) {
	if (maritalStatus == "") {
		document.getElementById('maritalStatusErrorDiv').innerHTML = "<p class='msg warning'>Enter marital status!</p>";
		document.getElementById('txtmaritalstatus').style.borderColor = "red";
		document.getElementById('txtmaritalstatus').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savemaritalstatus.jsp?maritalStatus=" + maritalStatus,
			true);
	xmlhttp.send();
}

function saveReligion(religion) {
	if (religion == "") {
		document.getElementById('religionErrorDiv').innerHTML = "<p class='msg warning'>Enter the religion!</p>";
		document.getElementById('txtreligion').style.borderColor = "red";
		document.getElementById('txtreligion').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savereligion.jsp?religion=" + religion, true);
	xmlhttp.send();
}

function saveEmployementType(employementType) {
	if (employementType == "") {
		document.getElementById('employeeTypeErrorDiv').innerHTML = "<p class='msg warning'>Enter the employement type!</p>";
		document.getElementById('txtemployementtype').style.borderColor = "red";
		document.getElementById('txtemployementtype').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveemployementtype.jsp?employementType="
			+ employementType, true);
	xmlhttp.send();
}

function saveFieldOfStudy(fieldOfStudy) {
	if (fieldOfStudy == "") {
		document.getElementById('employeeTypeLevelErrorDiv').innerHTML = "<p class='msg warning'>Enter the field of study!</p>";
		document.getElementById('txtfieldofstudy').style.borderColor = "red";
		document.getElementById('txtfieldofstudy').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savefieldofstudy.jsp?fieldOfStudy=" + fieldOfStudy,
			true);
	xmlhttp.send();
}

function saveVacancy(vacancyName, jobId, datePosted, numberOfEmployeeRequired,
		numberOfEmployeeForWaitingList) {
	// alert(jobId+":"+datePosted+":"+numberOfEmployeeRequired+":"+numberOfEmployeeForWaitingList);
	if (vacancyName == "") {
		document.getElementById('txtvacancyname').style.borderColor = "red";
		document.getElementById('txtvacancyname').focus();
	} else if (jobId == "") {
		document.getElementById('slctjob').style.borderColor = "red";
		document.getElementById('slctjob').focus();
		return false;
	} else if (datePosted == "") {
		document.getElementById('txtdateposted').style.borderColor = "red";
		document.getElementById('txtdateposted').focus();
		return false;
	} else if (numberOfEmployeeRequired == "") {
		document.getElementById('txtnumberofemployeerequired').style.borderColor = "red";
		document.getElementById('txtnumberofemployeerequired').focus();
		return false;
	} else if (numberOfEmployeeForWaitingList == "") {
		document.getElementById('txtnumberofemployeeforwaitinglist').style.borderColor = "red";
		document.getElementById('txtnumberofemployeeforwaitinglist').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('txtdateposted').value = "";
				document.getElementById('txtnumberofemployeerequired').value = "";
				document.getElementById('txtnumberofemployeeforwaitinglist').value = "";
			}
		}
		xmlhttp.open("GET", "savevacancy.jsp?jobId=" + jobId + "&datePosted="
				+ datePosted + "&numberOfEmployeeRequired="
				+ numberOfEmployeeRequired + "&numberOfEmployeeForWaitingList="
				+ numberOfEmployeeForWaitingList + "&vacancyName="
				+ vacancyName, true);
		xmlhttp.send();
	}
}

function saveJob(jobTitle, jobClassification, jobClassificationNumber,
		jobDescription) {
	// alert(jobClassification+":"+jobClassificationNumber+":"+jobDescription);
	if (jobClassification == "") {
		document.getElementById('jobErrorDiv').innerHTML = "<p class='msg warning'>Enter the job!</p>";
		document.getElementById('txtjobclassification').style.borderColor = "red";
		document.getElementById('txtjobclassification').focus();
		return false;
	} else if (jobClassificationNumber == "") {
		document.getElementById('txtjobclassification').style.borderColor = "green";
		document.getElementById('txtjobclassificationnumber').style.borderColor = "red";
		document.getElementById('txtjobclassificationnumber').focus();
		document.getElementById('jobErrorDiv').innerHTML = "<p class='msg warning'>Enter the job classification number!</p>";
		return false;
	} else if (jobDescription == "") {
		document.getElementById('txtjobclassificationnumber').style.borderColor = "green";
		document.getElementById('textareajobdescription').style.borderColor = "red";
		document.getElementById('textareajobdescription').focus();
		document.getElementById('jobErrorDiv').innerHTML = "<p class='msg warning'>Enter the job description!</p>";
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savejob.jsp?jobClassification="
				+ jobClassification + "&jobClassificationNumber="
				+ jobClassificationNumber + "&jobDescription=" + jobDescription
				+ "&jobTitle=" + jobTitle, true);
		xmlhttp.send();
	}
}

function saveSalary(payGradeId, payFrequencyId, amount, comments) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savesalary.jsp?payGradeId=" + payGradeId
			+ "&payFrequencyId=" + payFrequencyId + "&amount=" + amount
			+ "&comments=" + comments, true);
	xmlhttp.send();
}

function savePayGrade(code, name, minimumSalary, maximumSalary, stepIncrease) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savepaygrade.jsp?code=" + code + "&name=" + name
			+ "&minimumSalary=" + minimumSalary + "&maximumSalary="
			+ maximumSalary + "&stepIncrease=" + stepIncrease, true);
	xmlhttp.send();
}

function savePayFrequency(payFrequencyName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savepayfrequency.jsp?payFrequencyName="
			+ payFrequencyName, true);
	xmlhttp.send();
}

function saveKefeleKetema(kefeleKetema) {
	if (kefeleKetema == "") {
		document.getElementById('kefeleKetemaErrorDiv').innerHTML = "<p class='msg warning'>Enter the kefele ketema!</p>";
		document.getElementById('txtkefeleketema').style.borderColor = "red";
		document.getElementById('txtkefeleketema').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savekefeleketema.jsp?kefeleKetema=" + kefeleKetema,
			true);
	xmlhttp.send();
}

function saveFieldOfStudy(fieldOfStudy) {
	// alert(fieldOfStudy);
	if (fieldOfStudy == "") {
		document.getElementById('fieldOfStudyErrorDiv').innerHTML = "<p class='msg warning'>Enter field of study!</p>";
		document.getElementById('txtfieldofstudy').style.borderColor = "red";
		document.getElementById('txtfieldofstudy').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savefieldofstudy.jsp?fieldOfStudy=" + fieldOfStudy,
			true);
	xmlhttp.send();
}

function saveSponsor(sponsorName, description) {
	if (sponsorName == "") {
		document.getElementById('sponsorErrorDiv').innerHTML = "<p class='msg warning'>Enter the sponsor name!</p>";
		document.getElementById('txtsponsorname').style.borderColor = "red";
		document.getElementById('txtsponsorname').focus();
		return false;
	} else if (description == "") {
		document.getElementById('txtsponsorname').style.borderColor = "green";
		document.getElementById('textareadescription').style.borderColor = "red";
		document.getElementById('sponsorErrorDiv').innerHTML = "<p class='msg warning'>Enter the description!</p>";
		document.getElementById('textareadescription').focus();
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savesponsor.jsp?sponsorName=" + sponsorName
				+ "&description=" + description, true);
		xmlhttp.send();
	}
}

function saveProgramLevel(programLevelName) {
	if (programLevelName == "") {
		document.getElementById('programLevelErrorDiv').innerHTML = "<p class='msg warning'>Enter program level name!</p>";
		document.getElementById('txtprogramlevel').style.borderColor = "red";
		document.getElementById('txtprogramlevel').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveprogramlevel.jsp?programLevelName="
			+ programLevelName, true);
	xmlhttp.send();
}

function saveRegion(regionName) {
	if (regionName == "") {
		document.getElementById('regionErrorDiv').innerHTML = "<p class='msg warning'>Enter region name!</p>";
		document.getElementById('txtregionname').style.borderColor = "red";
		document.getElementById('txtregionname').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveregion.jsp?regionName=" + regionName, true);
	xmlhttp.send();
}

function saveRemark(remark) {
	if (remark == "") {
		document.getElementById('remarkErrorDiv').innerHTML = "<p class='msg warning'>Enter remark!</p>";
		document.getElementById('txtremark').style.borderColor = "red";
		document.getElementById('txtremark').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveremark.jsp?remark=" + remark, true);
	xmlhttp.send();
}

function savePriceInformation(serviceId, price, month, year) {
	if (serviceId == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Select the registrar service!</p>";
		document.getElementById('slctservice').style.borderColor = "red";
		document.getElementById('slctservice').focus();
		return false;
	}
	if (price == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Enter the price!</p>";
		document.getElementById('txtprice').style.borderColor = "red";
		document.getElementById('txtprice').focus();
		return false;
	}
	if (month == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Select the month!</p>";
		document.getElementById('slctmonth').style.borderColor = "red";
		document.getElementById('slctmonth').focus();
		return false;
	}
	if (year == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Enter the year!</p>";
		document.getElementById('txtyear').style.borderColor = "red";
		document.getElementById('txtyear').focus();
		return false;
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savepriceinformation.jsp?serviceId=" + serviceId
			+ "&price=" + price + "&semester=" + semester + "&year=" + year,
			true);
	xmlhttp.send();
}

function saveRegistrarService(serviceName) {
	// alert(serviceName);
	if (serviceName == "") {
		document.getElementById('registrarServiceErrorDiv').innerHTML = "<p class='msg warning'>Enter service name!</p>";
		document.getElementById('txtservicename').style.borderColor = "red";
		document.getElementById('txtservicename').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveregistrarservice.jsp?serviceName=" + serviceName,
			true);
	xmlhttp.send();
}

function showListOfAdmissionTypes() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissiontypes.jsp", true);
	xmlhttp.send();
}

function showListOfEducationLevels() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevels.jsp", true);
	xmlhttp.send();
}

function showListOfKefeleKetemas() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofkefeleketemas.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeeTypes() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeetypes.jsp", true);
	xmlhttp.send();
}

function showListOfEmployementTypes() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployementtypes.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudies() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudies.jsp", true);
	xmlhttp.send();
}

function showListOfJobs() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofjobs.jsp", true);
	xmlhttp.send();
}

function showListOfPayGrades() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpaygrades.jsp", true);
	xmlhttp.send();
}

function showListOfPayGradesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpaygradesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPayGradesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpaygradesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfReligions() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofreligions.jsp", true);
	xmlhttp.send();
}

function showListOfMaritalStatuses() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofmaritalstatuses.jsp", true);
	xmlhttp.send();
}

function showListOfStudentRecords() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentrecords.jsp", true);
	xmlhttp.send();
}

function sortStudentRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showsortedstudentrecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function sortEmployeeRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showsortedemployeerecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function sortFacultyRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showsortedfacultyrecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function sortAcademicUnitRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showsortedacademicunitrecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function verifiyOfficialTranscriptRequest(idNumber, firstName, fatherName,
		grandFatherName, graduationYear) {
	if (idNumber == "") {
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the id number!</p>";
		document.getElementById('txtidnumber').style.borderColor = "red";
		document.getElementById('txtidnumber').focus();
		return false;
	} else if (firstName == "") {
		document.getElementById('txtidnumber').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the first name!</p>";
		document.getElementById('txtfirstname').style.borderColor = "red";
		document.getElementById('txtfirstname').focus();
		return false;
	} else if (fatherName == "") {
		document.getElementById('txtfirstname').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the father name!</p>";
		document.getElementById('txtfathername').style.borderColor = "red";
		document.getElementById('txtfathername').focus();
		return false;
	} else if (grandFatherName == "") {
		document.getElementById('txtfathername').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the grand father name!</p>";
		document.getElementById('txtgrandfathername').style.borderColor = "red";
		document.getElementById('txtgrandfathername').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('txtgrandfathername').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Select the graduation year!</p>";
		document.getElementById('slctgraduationyear').style.borderColor = "red";
		document.getElementById('slctgraduationyear').focus();
		return false;
	} else {

		document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("verificationStatusDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET", "verifiyofficialtranscriptrequest.jsp?idNumber="
				+ idNumber + "&firstName=" + firstName + "&fatherName="
				+ fatherName + "&grandFatherName=" + grandFatherName
				+ "&graduationYear=" + graduationYear, true);
		xmlhttp.send();
	}
}

function showListOfStudentRecordsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentrecordsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfStudentRecordsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentrecordsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfIdentificationCode() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofidentificationcode.jsp", true);
	xmlhttp.send();
}

function deleteThisStudentRecord(studentRecordId) {
	// alert(studentRecordId);
	if (window.confirm('Are you sure you want to delete this student record?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisstudentrecord.jsp?studentRecordId="
				+ studentRecordId, true);
		xmlhttp.send();
	}
}

function deleteThisVacancy(vacancyId) {
	if (window.confirm('Are you sure you want to delete this vacancy?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisvacancy.jsp?vacancyId=" + vacancyId,
				true);
		xmlhttp.send();
	}
}

function showListOfRegions() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregions.jsp", true);
	xmlhttp.send();
}

function showListOfRemarks() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofremarks.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrarServices() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrarservices.jsp", true);
	xmlhttp.send();
}

function showListOfPriceInformation() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpriceinformation.jsp", true);
	xmlhttp.send();
}

function showListOfProgramLevels() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprogramlevels.jsp", true);
	xmlhttp.send();
}

function showListOfProgramLevelsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprogramlevelsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfRegionsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregionsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfRemarksForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofremarksforedit.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrarServicesForEdit() {
	// alert("for edit service");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrarservicesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPriceInformationForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpriceinformationforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPriceInformationForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpriceinformationfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrarServicesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrarservicesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfAdmissionTypesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissiontypesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfEducationLevelsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevelsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfKefeleKetemasForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofkefeleketemasforedit.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeeTypesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeetypesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfEmployementTypesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployementtypesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudiesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudiesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfJobsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofjobsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfReligionsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofreligionsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfMaritalStatusesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofmaritalstatusesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfAdmissionTypesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissiontypesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfEducationLevelsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevelsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfKefeleKetemasForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofkefeleketemasfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfEmployeeTypesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeetypesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfEmployementTypesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployementtypesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudiesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudiesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfProgramLevelsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprogramlevelsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfRegionsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregionsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfRemarksForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofremarksfordelete.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfAdmissionType(admissionTypeId) {
	// alert(admissionTypeId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionTypeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofadmissiontype.jsp?admissionTypeId="
			+ admissionTypeId, true);
	xmlhttp.send();
}

function showEditFieldsOfEducationLevel(educationLevelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("educationLevelEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofeducationlevel.jsp?educationLevelId="
			+ educationLevelId, true);
	xmlhttp.send();
}

function showEditFieldsOfVacancy(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("vacancyEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofvacancy.jsp?vacancyId=" + vacancyId,
			true);
	xmlhttp.send();
}

function chanageThisEditJob(newValue) {
	// alert(newValue);
	if (newValue == "") {
		return false;
	} else {
		document.getElementById('hiddeneditjobid').value = newValue;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txteditjob").value = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "changethiseditjob.jsp?jobId=" + newValue, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfKefeleKetema(kefeleKetemaId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("kefeleKetemaEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofkefeleketema.jsp?kefeleKetemaId="
			+ kefeleKetemaId, true);
	xmlhttp.send();
}

function showEditFieldsOfEmployeeType(employeeTypeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeTypeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofemployeetype.jsp?employeeTypeId="
			+ employeeTypeId, true);
	xmlhttp.send();
}

function showEditFieldsOfFieldOfStudy(fieldOfStudy) {
	// alert("mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeTypeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoffieldofstudy.jsp?fieldOfStudy="
			+ fieldOfStudy, true);
	xmlhttp.send();
}

function showEditFieldsOfMaritalStatus(maritalStatusId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("maritalStatusEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofmaritalstatus.jsp?maritalStatusId="
			+ maritalStatusId, true);
	xmlhttp.send();
}

function showEditFieldsOfReligion(religionId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("religionEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofreligion.jsp?religionId=" + religionId, true);
	xmlhttp.send();
}

function showEditFieldsOfJob(jobId) {
	// alert(jobId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("jobEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofjob.jsp?jobId=" + jobId, true);
	xmlhttp.send();
}

function showEditFieldsOfSalary(salaryId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("salaryEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofsalary.jsp?salaryId=" + salaryId,
					true);
	xmlhttp.send();
}

function changePayGradeForThisSalary(payGradeId) {
	document.getElementById('hiddenpaygradeid').value = payGradeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditpaygrade").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changepaygradeforthissalary.jsp?payGradeId="
			+ payGradeId, true);
	xmlhttp.send();
}

function changePayFrequencyForThisSalary(payFrequencyId) {
	document.getElementById('hiddenpayfrequencyid').value = payFrequencyId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditpayfrequency").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changepayfrequencyforthissalary.jsp?payFrequencyId="
			+ payFrequencyId, true);
	xmlhttp.send();
}

function showEditFieldsOfPayGrade(payGradeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("payGradeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofpaygrade.jsp?payGradeId=" + payGradeId, true);
	xmlhttp.send();
}

function showEditFieldsOfEmployementType(employementTypeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeTypeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofemployementtype.jsp?employementTypeId="
					+ employementTypeId, true);
	xmlhttp.send();
}

function showEditFieldsOfProgramLevel(programLevelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("programLevelEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofprogramlevel.jsp?programLevelId="
			+ programLevelId, true);
	xmlhttp.send();
}

function showEditFieldsOfSponsor(sponsorId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sponsorEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofsponsor.jsp?sponsorId=" + sponsorId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfStudentRecord(studentRecordId) {
	uniqueStudentRecordEditDiv = "studentRecordEditDiv" + studentRecordId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofstudentrecord.jsp?studentRecordId="
			+ studentRecordId, true);
	xmlhttp.send();
}

function showEmployeeRecordDetail(employeeRecordId) {
	uniqueEmployeeRecordViewDetailDiv = "employeeRecordViewDetailDiv"
			+ employeeRecordId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueEmployeeRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showviewdetailsofemployeerecord.jsp?employeeRecordId="
			+ employeeRecordId, true);
	xmlhttp.send();
}

function hideEmployeeRecordDetail(employeeRecordId){
	uniqueEmployeeRecordViewDetailDiv = "employeeRecordViewDetailDiv"
		+ employeeRecordId;
	document.getElementById(uniqueEmployeeRecordViewDetailDiv).innerHTML = "";
}

function showEmployeeRecordDetailForEdit(employeeRecordId) {
	uniqueEmployeeRecordViewDetailDiv = "employeeRecordViewDetailDiv"
			+ employeeRecordId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueEmployeeRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showviewdetailsofemployeerecordforedit.jsp?employeeRecordId="
					+ employeeRecordId, true);
	xmlhttp.send();
}

function showEditFieldsOfEmployeeBasicInformation(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeBasicInformationEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofemployeebasicinformation.jsp?employeeId="
					+ employeeId, true);
	xmlhttp.send();
}

function showEditFieldsOfWoreksAt(worksAtId) {
	// alert("mahder the worksAtId is : "+worksAtId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editWorksAtDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofworksat.jsp?worksAtId=" + worksAtId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfEducationInformation(eduId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editEducationInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofeducationinformation.jsp?eduId="
			+ eduId, true);
	xmlhttp.send();
}

function showEditFieldsOfExperienceInformation(exId) {
	//alert(exId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editExperienceInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofexperienceinformation.jsp?exId="
			+ exId, true);
	xmlhttp.send();
}

function showEditFieldsOfTrainingInformation(tId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editTrainingInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoftraininginformation.jsp?tId=" + tId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfEvaluationResult(evalId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editEvaluationResultDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofevaluationresult.jsp?evalId=" + evalId, true);
	xmlhttp.send();
}

function showEditFieldsOfActionOnEmployee(actionId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editActionOnEmployeeDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofactiononemployee.jsp?actionId="
			+ actionId, true);
	xmlhttp.send();
}

function showEditFieldsOfOtherComment(commentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editOtherCommentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofothercomment.jsp?commentId="
			+ commentId, true);
	xmlhttp.send();
}

function showEditFieldsOfAddress(addressId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editAddressDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofaddress.jsp?addressId=" + addressId,
			true);
	xmlhttp.send();
}

function showNewExperienceInformationForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newExperienceInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewexperienceinformationform.jsp?empRecId="
			+ empRecId, true);
	xmlhttp.send();
}

function showNewEvaluationResultForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newEvaluationResultDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewevaluationresultform.jsp?empRecId=" + empRecId,
			true);
	xmlhttp.send();
}

function showNewActionOnEmployeeForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newActionOnEmployeeDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewactiononemployeeform.jsp?empRecId=" + empRecId,
			true);
	xmlhttp.send();
}

function showNewOtherCommentForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newOtherCommentDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewothercommentform.jsp?empRecId=" + empRecId,
			true);
	xmlhttp.send();
}

function showNewAddressForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newAddressDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewaddressform.jsp?empRecId=" + empRecId, true);
	xmlhttp.send();
}

function showNewDependantForm(empRecId) {
	// alert(empRecId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newDependantDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewdependantform.jsp?empRecId=" + empRecId, true);
	xmlhttp.send();
}

function showNewEmergencyContactForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newEmergencyContactDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewemergencycontactform.jsp?empRecId=" + empRecId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfDependant(depId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editDependantDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofdependant.jsp?depId=" + depId, true);
	xmlhttp.send();
}

function showNewTrainingInformationForm(empRecId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newTrainingInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewtraininginformationform.jsp?empRecId="
			+ empRecId, true);
	xmlhttp.send();
}

function saveNewExperience(empRecId, jobId, startingFrom, upto, place) {
	if (jobId == '') {
		document.getElementById('slctnewjob').style.borderColor = "red";
		document.getElementById('slctnewjob').focus();
		return false;
	} else if (startingFrom == '') {
		document.getElementById('slctnewjob').style.borderColor = "green";
		document.getElementById('txtnewstartingfrom').style.borderColor = "red";
		document.getElementById('txtnewstartingfrom').focus();
		return false;
	} else if (upto == '') {
		document.getElementById('txtnewstartingfrom').style.borderColor = "green";
		document.getElementById('txtnewupto').style.borderColor = "red";
		document.getElementById('txtnewupto').focus();
		return false;
	} else if (place == '') {
		document.getElementById('txtnewupto').style.borderColor = "green";
		document.getElementById('txtnewplaceofwork').style.borderColor = "red";
		document.getElementById('txtnewplaceofwork').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newExperienceInfoDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savenewexperience.jsp?empRecId=" + empRecId
				+ "&jobId=" + jobId + "&startingFrom=" + startingFrom
				+ "&upto=" + upto + "&place=" + place, true);
		xmlhttp.send();
	}
}

function saveNewOtherComment(empRecId, theComment) {
	if (theComment == "") {
		document.getElementById('textareanewothercomment').style.borderColor = "red";
		document.getElementById('textareanewothercomment').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newOtherCommentDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savenewothercomment.jsp?empRecId=" + empRecId
				+ "&theComment=" + theComment, true);
		xmlhttp.send();
	}
}

function saveNewAddress(empRecId, kefeleKetemaId, woreda, kebele, houseNumber,
		telephoneHouse, mobile, email) {
	// alert(empRecId+":"+kefeleKetemaId+":"+woreda+":"+kebele+":"+houseNumber+":"+telephoneHouse+":"+mobile+":"+email);
	if (kefeleKetemaId == "") {
		document.getElementById('slctnewkefeleketema').style.borderColor = "red";
		document.getElementById('slctnewkefeleketema').focus();
		return false;
	} else if (woreda == "") {
		document.getElementById('slctnewkefeleketema').style.borderColor = "green";
		document.getElementById('txtnewworda').style.borderColor = "red";
		document.getElementById('txtnewworda').focus();
		return false;
	} else if (kebele == "") {
		document.getElementById('txtnewworda').style.borderColor = "green";
		document.getElementById('txtnewkebele').style.borderColor = "red";
		document.getElementById('txtnewkebele').focus();
		return false;
	} else if (houseNumber == "") {
		document.getElementById('txtnewkebele').style.borderColor = "green";
		document.getElementById('txtnewhousenumber').style.borderColor = "red";
		document.getElementById('txtnewhousenumber').focus();
		return false;
	} else if (telephoneHouse == "") {
		document.getElementById('txtnewhousenumber').style.borderColor = "green";
		document.getElementById('txtnewtelephonehouse').style.borderColor = "red";
		document.getElementById('txtnewtelephonehouse').focus();
		return false;
	} else if (mobile == "") {
		document.getElementById('txtnewtelephonehouse').style.borderColor = "green";
		document.getElementById('txtnewtelephonemobile').style.borderColor = "red";
		document.getElementById('txtnewtelephonemobile').focus();
		return false;
	} else if (email == "") {
		document.getElementById('txtnewtelephonemobile').style.borderColor = "green";
		document.getElementById('txtnewemail').style.borderColor = "red";
		document.getElementById('txtnewemail').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newAddressDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savenewaddress.jsp?empRecId=" + empRecId
				+ "&kefeleKetemaId=" + kefeleKetemaId + "&woreda=" + woreda
				+ "&kebele=" + kebele + "&houseNumber=" + houseNumber
				+ "&telephoneHouse=" + telephoneHouse + "&mobile=" + mobile
				+ "&email=" + email, true);
		xmlhttp.send();
	}
}

function saveNewDependant(empRecId, firstName, fatherName, grandFatherName,
		kefeleKetemaId, woreda, kebele, houseNumber, city, mobile, relation) {
	if (firstName == "") {
		document.getElementById('txtnewdependantfirstname').style.borderColor = "red";
		document.getElementById('txtnewdependantfirstname').focus();
		return false;
	} else if (fatherName == "") {
		document.getElementById('txtnewdependantfirstname').style.borderColor = "green";
		document.getElementById('txtnewdependantfathername').style.borderColor = "red";
		document.getElementById('txtnewdependantfathername').focus();
		return false;
	} else if (grandFatherName == "") {
		document.getElementById('txtnewdependantfirstname').style.borderColor = "green";
		document.getElementById('txtnewdependantgrandfathername').style.borderColor = "red";
		document.getElementById('txtnewdependantgrandfathername').focus();
		return false;
	} else if (kefeleKetemaId == "") {
		document.getElementById('txtnewdependantgrandfathername').style.borderColor = "green";
		document.getElementById('slctnewdependantkefeleketema').style.borderColor = "red";
		document.getElementById('slctnewdependantkefeleketema').focus();
		return false;
	} else if (woreda == "") {
		document.getElementById('slctnewdependantkefeleketema').style.borderColor = "green";
		document.getElementById('txtnewdependantworeda').style.borderColor = "red";
		document.getElementById('txtnewdependantworeda').focus();
		return false;
	} else if (kebele == "") {
		document.getElementById('txtnewdependantworeda').style.borderColor = "green";
		document.getElementById('txtnewdependantkebele').style.borderColor = "red";
		document.getElementById('txtnewdependantkebele').focus();
		return false;
	} else if (houseNumber == "") {
		document.getElementById('txtnewdependantkebele').style.borderColor = "green";
		document.getElementById('txtnewdependanthousenumber').style.borderColor = "red";
		document.getElementById('txtnewdependanthousenumber').focus();
		return false;
	} else if (city == "") {
		document.getElementById('txtnewdependanthousenumber').style.borderColor = "green";
		document.getElementById('txtnewdependantcity').style.borderColor = "red";
		document.getElementById('txtnewdependantcity').focus();
		return false;
	} else if (mobile == "") {
		document.getElementById('txtnewdependantcity').style.borderColor = "green";
		document.getElementById('txtnewdependanttelephonemobile').style.borderColor = "red";
		document.getElementById('txtnewdependanttelephonemobile').focus();
		return false;
	} else if (relation == "") {
		document.getElementById('txtnewdependanttelephonemobile').style.borderColor = "green";
		document.getElementById('txtnewdependantrelation').style.borderColor = "red";
		document.getElementById('txtnewdependantrelation').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newDependantDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savenewdependant.jsp?empRecId=" + empRecId
				+ "&firstName=" + firstName + "&fatherName=" + fatherName
				+ "&grandFatherName=" + grandFatherName + "&city=" + city
				+ "&kefeleKetemaId=" + kefeleKetemaId + "&woreda=" + woreda
				+ "&kebele=" + kebele + "&houseNumber=" + houseNumber
				+ "&mobile=" + mobile + "&relation=" + relation, true);
		xmlhttp.send();
	}
}

function saveNewEmergencyContact(empRecId, firstName, lastName, relationship,
		homeTelephone, mobile, workTelephone) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newEmergencyContactDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savenewemergencycontact.jsp?empRecId=" + empRecId
			+ "&firstName=" + firstName + "&lastName=" + lastName
			+ "&relationship=" + relationship + "&homeTelephone=" + homeTelephone
			+ "&mobile=" + mobile + "&workTelephone=" + workTelephone, true);
	xmlhttp.send();
}

function saveNewEvaluationResult(empRecId, result) {
	if (result == "") {
		document.getElementById('txtnewevaluationresult').style.borderColor = "red";
		document.getElementById('txtnewevaluationresult').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newEvaluationResultDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savenewevaluationresult.jsp?empRecId=" + empRecId
				+ "&result=" + result, true);
		xmlhttp.send();
	}
}

function showNewEducationInformationForm(empRecId) {
	// alert(empRecId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newEducationInfoDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showneweducationinformationform.jsp?empRecId="
			+ empRecId, true);
	xmlhttp.send();
}

function saveNewEducationInformation(empRecId, nameOfInstitution,
		fieldOfStudyId,educationLevel,dateOfAward) {
	if (nameOfInstitution == "") {
		document.getElementById('txtnewnameofinstitution').style.borderColor = "red";
		document.getElementById('txtnewnameofinstitution').focus();
		return false;
	} else if (fieldOfStudyId == 0) {
		document.getElementById('txtnewnameofinstitution').style.borderColor = "green";
		document.getElementById('slctnewfieldofstudy').style.borderColor = "red";
		document.getElementById('slctnewfieldofstudy').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newEducationInfoDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "saveneweducationinformation.jsp?empRecId="
				+ empRecId + "&nameOfInstitution=" + nameOfInstitution
				+ "&fieldOfStudyId=" + fieldOfStudyId + "&educationLevel="+educationLevel + "&dateOfAward="+dateOfAward, true);
		xmlhttp.send();
	}
}

function saveNewActionTakenOnEmployee(empRecId, actionTaken, dateOfAction,
		description) {
	if (actionTaken == "") {
		document.getElementById('slctnewactiontaken').style.borderColor = "red";
		document.getElementById('slctnewactiontaken').focus();
		return false;
	} else if (dateOfAction == "") {
		document.getElementById('slctnewactiontaken').style.borderColor = "green";
		document.getElementById('txtnewdateofaction').style.borderColor = "red";
		document.getElementById('txtnewdateofaction').focus();
		return false;
	} else if (description == "") {
		document.getElementById('txtnewdateofaction').style.borderColor = "green";
		document.getElementById('textareanewdescription').style.borderColor = "red";
		document.getElementById('textareanewdescription').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("newActionOnEmployeeDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savenewactiontakenonemployee.jsp?empRecId="
				+ empRecId + "&actionTaken=" + actionTaken + "&dateOfAction="
				+ dateOfAction + "&description=" + description, true);
		xmlhttp.send();
	}
}

function showNewWorksAtForm(employeeRecordId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("newWorksAtDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "shownewworksatform.jsp?employeeRecordId="
			+ employeeRecordId, true);
	xmlhttp.send();
}

function showEmployeePhotoChageForm(employeeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeePhotoEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeephotochangeform.jsp?employeeId="
			+ employeeId, true);
	xmlhttp.send();
}

function checkStudentRecordDetailById(studIdNumber) {
	// alert(studIdNumber);
	uniqueStudentRecordViewDetailDiv = "studentRecordViewDetailDiv"
			+ studIdNumber;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "checkstudentrecorddetailbyid.jsp?studIdNumber="
			+ studIdNumber, true);
	xmlhttp.send();
}

function showListOfAttachments(oId) {
	// alert(oId);
	uniqueStudentRecordViewDetailDiv = "attDiv" + oId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofattachments.jsp?oId=" + oId, true);
	xmlhttp.send();
}

function showAddRemarkNote(id) {
	// alert(id);
	uniqueStudentRecordViewDetailDiv = "remarkDiv" + id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddremarknote.jsp?id=" + id, true);
	xmlhttp.send();
}

function saveRemarkNote(id, theNote) {
	// alert(id);
	uniqueStudentRecordViewDetailDiv = "remarkDiv" + id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveremarknote.jsp?id=" + id + "&theNote=" + theNote,
			true);
	xmlhttp.send();
}

function showEditFieldsOfRegion(regionId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("regionEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofregion.jsp?regionId=" + regionId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfRemark(remarkId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("remarkEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofremark.jsp?remarkId=" + remarkId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfRegistrarService(serviceId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("registrarServiceEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofregistrarservice.jsp?serviceId="
			+ serviceId, true);
	xmlhttp.send();
}

function showEditFieldsOfPriceInformation(priceLookupId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("priceInformationEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofpriceinformation.jsp?priceLookupId="
			+ priceLookupId, true);
	xmlhttp.send();
}

function updateAdmissionType(admissionTypeId, admissionTypeName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "updateadmissiontype.jsp?admissionTypeId="
					+ admissionTypeId + "&admissionTypeName="
					+ admissionTypeName, true);
	xmlhttp.send();
}

function updateEducationLevel(educationLevelId, educationLevel) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateeducationlevel.jsp?educationLevelId="
			+ educationLevelId + "&educationLevel=" + educationLevel, true);
	xmlhttp.send();
}

function updateVacancy(vacancyId, jobId, datePosted, numberOfEmployeeRequired,
		numberOfEmployeeForWaitingList, vacancyName) {
	// alert(vacancyId+":"+jobId+":"+datePosted+":"+numberOfEmployeeRequired+":"+numberOfEmployeeForWaitingList);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatevacancy.jsp?vacancyId=" + vacancyId + "&jobId="
			+ jobId + "&datePosted=" + datePosted
			+ "&numberOfEmployeeRequired=" + numberOfEmployeeRequired
			+ "&numberOfEmployeeForWaitingList="
			+ numberOfEmployeeForWaitingList + "&vacancyName=" + vacancyName,
			true);
	xmlhttp.send();
}

function showSelectedEducationLevelCriteriaInnerMenuForVacancy(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("educationLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showselectededucationlevelcriteriainnermenuforvacancy.jsp?vacancyId="
					+ vacancyId, true);
	xmlhttp.send();
}

function showSelectedFieldOfStudyCriteriaInnerMenuForVacancy(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fieldOfStudyCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showselectedfieldofstudycriteriainnermenuforvacancy.jsp?vacancyId="
					+ vacancyId, true);
	xmlhttp.send();
}

function showSelectedExperienceCriteriaInnerMenuForVacancy(vacancyId) {
	// alert("vac : "+vacancyId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("experienceCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showselectedexperiencecriteriainnermenuforvacancy.jsp?vacancyId="
					+ vacancyId, true);
	xmlhttp.send();
}

function showAddEducationLevelCriteriaForm(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddeducationlevelcriteriaform.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showAddFieldOfStudyCriteriaForm(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fieldCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddfieldofstudycriteriaform.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showAddExperienceCriteriaForm(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddexperiencecriteriaform.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showListOfEducationLevelCriteria(vacancyId) {
	// alert(vacancyId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevelcriteria.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showListOfExperienceCriteria(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofexperiencecriteria.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showListOfExperienceCriteriaForEdit(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofexperiencecriteriaforedit.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showListOfExperienceCriteriaForDelete(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofexperiencecriteriafordelete.jsp?vacancyId="
			+ vacancyId, true);
	xmlhttp.send();
}

function showListOfEducationLevelCriteriaForEdit(vacancyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofeducationlevelcriteriaforedit.jsp?vacancyId="
					+ vacancyId, true);
	xmlhttp.send();
}

function showListOfEducationLevelCriteriaForDelete(vacancyId) {
	// alert(vacancyId);
	if (vacancyId != "") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofeducationlevelcriteriafordelete.jsp?vacancyId="
						+ vacancyId, true);
		xmlhttp.send();
	}
}

function deleteThisEducationLevelCriteria(educationLevelCriteriaId) {
	if (window
			.confirm("Are you sure you want to delete this education level criteria?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"deletethiseducationlevelcriteria.jsp?educationLevelCriteriaId="
						+ educationLevelCriteriaId, true);
		xmlhttp.send();
	}
}

function deleteThisExperienceCriteria(experienceCriteriaId) {
	if (window
			.confirm("Are you sure you want to delete this experience level criteria?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"deletethisexperiencecriteria.jsp?experienceCriteriaId="
						+ experienceCriteriaId, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfEducationLevelCriteria(educationLevelCriteriaId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editEducationLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofeducationlevelcriteria.jsp?educationLevelCriteriaId="
					+ educationLevelCriteriaId, true);
	xmlhttp.send();
}

function showEditFieldsOfExperienceCriteria(experienceCriteriaId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editExperienceCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofexperiencecriteria.jsp?experienceCriteriaId="
					+ experienceCriteriaId, true);
	xmlhttp.send();
}

function changeEditThisVacancy(newValue) {
	document.getElementById('hiddeneditvacancyid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditvacancyname").value = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "changeeditthisvacancy.jsp?vacancyId=" + newValue,
					true);
	xmlhttp.send();
}

function changeEditThisEducationLevelForEducationLevelCriteria(newValue) {
	document.getElementById('hiddenediteducationlevelid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtediteducationlevelname").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"changeeditthiseducationlevelforeducationlevelcriteria.jsp?educationLevelId="
					+ newValue, true);
	xmlhttp.send();
}

function updateEducationLevelCriteria(eduLevelCriteriaId, vacancyId,
		educationLevelId, point) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "updateeducationlevelcriteria.jsp?eduLevelCriteriaId="
					+ eduLevelCriteriaId + "&vacancyId=" + vacancyId
					+ "&educationLevelId=" + educationLevelId + "&point="
					+ point, true);
	xmlhttp.send();
}

function updateExperienceCriteria(experienceCriteriaId, vacancyId,
		minimumExperienceYear, point) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateexperiencecriteria.jsp?experienceCriteriaId="
			+ experienceCriteriaId + "&vacancyId=" + vacancyId
			+ "&minimumExperienceYear=" + minimumExperienceYear + "&point="
			+ point, true);
	xmlhttp.send();
}

function testMahder() {
	alert("hi mahder");
}

function saveEducationLevelCriteria(vacancyId, educationLevelCriteriaGrid) {
	var educationLevelRowVal = educationLevelCriteriaGrid.rows.length - 1;
	stringValues = "";

	// for the educationGrid
	educationLevel = "";
	point = "";

	educationLevelVal = "";
	pointVal = "";

	for (i = 1; i <= educationLevelRowVal; i++) {
		educationLevel = 'slcteducationlevel' + i;
		point = 'txtpoint' + i;
		// now get the values of the text fields
		educationLevelVal = document.getElementById(educationLevel).value;
		pointVal = document.getElementById(point).value;

		stringValues += "&" + educationLevel + "=" + educationLevelVal + "&"
				+ point + "=" + pointVal;
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("eduLevelCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveeducationlevelcriteria.jsp?vacancyId=" + vacancyId
			+ stringValues + "&educationLevelRowVal=" + educationLevelRowVal,
			true);
	xmlhttp.send();
}

function saveFieldOfStudyCriteria(vacancyId, fieldOfStudyGrid) {
	var fieldOfStudyRowVal = fieldOfStudyGrid.rows.length - 1;
	stringValues = "";

	// for the educationGrid
	fieldOfStudy = "";
	point = "";

	fieldOfStudyVal = "";
	pointVal = "";

	for (i = 1; i <= fieldOfStudyRowVal; i++) {
		fieldOfStudy = 'slctfieldofstudy' + i;
		point = 'txtpoint' + i;
		// now get the values of the text fields
		fieldOfStudyVal = document.getElementById(fieldOfStudy).value;
		pointVal = document.getElementById(point).value;

		stringValues += "&" + fieldOfStudy + "=" + fieldOfStudyVal + "&"
				+ point + "=" + pointVal;
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fieldCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savefieldofstudycriteria.jsp?vacancyId=" + vacancyId
			+ stringValues + "&fieldOfStudyRowVal=" + fieldOfStudyRowVal, true);
	xmlhttp.send();
}

function saveExperienceCriteria(vacancyId, experienceGrid) {
	// alert("hi");
	var experienceRowVal = experienceGrid.rows.length - 1;
	stringValues = "";

	// for the educationGrid
	experienceYear = "";
	point = "";

	experienceYearVal = "";
	pointVal = "";

	for (i = 1; i <= experienceRowVal; i++) {
		experienceYear = 'txtminimumnumberofyear' + i;
		point = 'txtpoint' + i;
		// now get the values of the text fields
		experienceYearVal = document.getElementById(experienceYear).value;
		pointVal = document.getElementById(point).value;

		stringValues += "&" + experienceYear + "=" + experienceYearVal + "&"
				+ point + "=" + pointVal;
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("expCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveexperiencecriteria.jsp?vacancyId=" + vacancyId
			+ stringValues + "&experienceRowVal=" + experienceRowVal, true);
	xmlhttp.send();
}

function updateKefeleKetema(kefeleKetemaId, kefeleKetema) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatekefeleketema.jsp?kefeleKetemaId="
			+ kefeleKetemaId + "&kefeleKetema=" + kefeleKetema, true);
	xmlhttp.send();
}

function updateEmployeeType(employeeTypeId, employeeType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateemployeetype.jsp?employeeTypeId="
			+ employeeTypeId + "&employeeType=" + employeeType, true);
	xmlhttp.send();
}

function updateMaritalStatus(maritalStatusId, maritalStatus) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatemaritalstatus.jsp?maritalStatusId="
			+ maritalStatusId + "&maritalStatus=" + maritalStatus, true);
	xmlhttp.send();
}

function updateReligion(religionId, religion) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatereligion.jsp?religionId=" + religionId
			+ "&religion=" + religion, true);
	xmlhttp.send();
}

function updateSystemUser(userId, fullName, userType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesystemuser.jsp?userId=" + userId + "&fullName="
			+ fullName + "&userType=" + userType, true);
	xmlhttp.send();
}

function updateFieldOfStudy(fieldOfStudyId, fieldOfStudy) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatefieldofstudy.jsp?fieldOfStudyId="
			+ fieldOfStudyId + "&fieldOfStudy=" + fieldOfStudy, true);
	xmlhttp.send();
}

function updateJob(jobId, jobTitle, jobClassification, jobClassificationNumber,
		jobDescription) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatejob.jsp?jobId=" + jobId + "&jobClassification="
			+ jobClassification + "&jobClassificationNumber="
			+ jobClassificationNumber + "&jobDescription=" + jobDescription
			+ "&jobTitle=" + jobTitle, true);
	xmlhttp.send();
}

function updateSalary(salaryId, payGradeId, payFrequencyId, amount, comments) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesalary.jsp?salaryId=" + salaryId
			+ "&payGradeId=" + payGradeId + "&payFrequencyId=" + payFrequencyId
			+ "&amount=" + amount + "&comments=" + comments, true);
	xmlhttp.send();
}

function updatePayGrade(payGradeId, code, name, minimumSalary, maximumSalary,
		stepIncrease) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatepaygrade.jsp?payGradeId=" + payGradeId
			+ "&code=" + code + "&name=" + name + "&minimumSalary="
			+ minimumSalary + "&maximumSalary=" + maximumSalary
			+ "&stepIncrease=" + stepIncrease, true);
	xmlhttp.send();
}

function updateEmployementType(employementTypeId, employementType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateemployementtype.jsp?employementTypeId="
			+ employementTypeId + "&employementType=" + employementType, true);
	xmlhttp.send();
}

function updateProgramLevel(programLevelId, programLevelName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateprogramlevel.jsp?programLevelId="
			+ programLevelId + "&programLevelName=" + programLevelName, true);
	xmlhttp.send();
}

function updateFieldOfStudy(fieldOfStudyId, fieldOfStudy) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatefieldofstudy.jsp?fieldOfStudyId="
			+ fieldOfStudyId + "&fieldOfStudy=" + fieldOfStudy, true);
	xmlhttp.send();
}

function updateSponsor(sponsorId, sponsorName, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesponsor.jsp?sponsorId=" + sponsorId
			+ "&sponsorName=" + sponsorName + "&description=" + description,
			true);
	xmlhttp.send();
}

function updateRegion(regionId, regionName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateregion.jsp?regionId=" + regionId
			+ "&regionName=" + regionName, true);
	xmlhttp.send();
}

function updateRemark(remarkId, remarkText) {
	// alert(remarkId+":"+remarkText);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateremark.jsp?remarkId=" + remarkId
			+ "&remarkText=" + remarkText, true);
	xmlhttp.send();
}

function updateRegistrarService(serviceId, serviceName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateregistrarservice.jsp?serviceId=" + serviceId
			+ "&serviceName=" + serviceName, true);
	xmlhttp.send();
}

function updatePriceInformation(priceInformationId, serviceId, price, month,
		year) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatepriceinformation.jsp?priceId="
			+ priceInformationId + "&serviceId=" + serviceId + "&price="
			+ price + "&month=" + month + "&year=" + year, true);
	xmlhttp.send();
}

function deleteThisAdmissionType(admissionTypeId) {
	if (window.confirm('Are you sure you want to delete this admission type?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisadmissiontype.jsp?admissionTypeId="
				+ admissionTypeId, true);
		xmlhttp.send();
	}
}

function deleteThisEducationLevel(educationLevelId) {
	if (window.confirm('Are you sure you want to delete this education level?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiseducationlevel.jsp?educationLevelId="
				+ educationLevelId, true);
		xmlhttp.send();
	}
}

function deleteThisKefeleKetema(kefeleKetemaId) {
	if (window.confirm('Are you sure you want to delete this kefele ketema?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiskefeleketema.jsp?kefeleKetemaId="
				+ kefeleKetemaId, true);
		xmlhttp.send();
	}
}

function deleteThisEmployeeType(employeeTypeId) {
	if (window.confirm('Are you sure you want to delete this employee type?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisemployeetype.jsp?employeeTypeId="
				+ employeeTypeId, true);
		xmlhttp.send();
	}
}

function deleteThisFieldOfStudy(fieldOfStudyId) {
	if (window.confirm('Are you sure you want to delete this field of study?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisfieldofstudy.jsp?fieldOfStudyId="
				+ fieldOfStudyId, true);
		xmlhttp.send();
	}
}

function deleteThisJob(jobId) {
	if (window.confirm('Are you sure you want to delete this job?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisjob.jsp?jobId=" + jobId, true);
		xmlhttp.send();
	}
}

function deleteThisSalary(salaryId) {
	if (window.confirm('Are you sure you want to delete this salary?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissalary.jsp?salaryId=" + salaryId, true);
		xmlhttp.send();
	}
}

function deleteThisPayGrade(payGradeId) {
	if (window.confirm('Are you sure you want to delete this pay grade?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethispaygrade.jsp?payGradeId=" + payGradeId,
				true);
		xmlhttp.send();
	}
}

function deleteThisPayFrequency(payFrequencyId) {
	if (window.confirm('Are you sure you want to delete this pay frequency?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethispayfrequency.jsp?payFrequencyId="
				+ payFrequencyId, true);
		xmlhttp.send();
	}
}

function deleteThisEmployementType(employementId) {
	if (window
			.confirm('Are you sure you want to delete this employement type?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisemployement.jsp?employementId="
				+ employementId, true);
		xmlhttp.send();
	}
}

function deleteThisMaritalStatus(maritalStatusId) {
	if (window.confirm('Are you sure you want to delete this marital status?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethismaritalstatus.jsp?maritalStatusId="
				+ maritalStatusId, true);
		xmlhttp.send();
	}
}

function deleteThisReligion(religionId) {
	if (window.confirm('Are you sure you want to delete this religion?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisreligion.jsp?religionId=" + religionId,
				true);
		xmlhttp.send();
	}
}

function deleteThisPriceInformation(id) {
	if (window
			.confirm('Are you sure you want to delete this price information?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethispriceinformation.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function deleteThisProgramLevel(programLevelId) {
	if (window.confirm('Are you sure you want to delete this program level?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisprogramlevel.jsp?programLevelId="
				+ programLevelId, true);
		xmlhttp.send();
	}
}

function deleteThisFieldsOfFieldOfStudy(fieldOfStudyId) {
	if (window.confirm('Are you sure you want to delete this field of study?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisfieldofstudy.jsp?fieldOfStudyId="
				+ fieldOfStudyId, true);
		xmlhttp.send();
	}
}

function deleteThisSponsor(sponsorId) {
	if (window.confirm('Are you sure you want to delete this sponsor?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissponsor.jsp?sponsorId=" + sponsorId,
				true);
		xmlhttp.send();
	}
}

function deleteThisRegion(regionId) {
	if (window.confirm('Are you sure you want to delete this region?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisregion.jsp?regionId=" + regionId, true);
		xmlhttp.send();
	}
}

function deleteThisRemark(remarkId) {
	if (window.confirm('Are you sure you want to delete this remark?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisremark.jsp?remarkId=" + remarkId, true);
		xmlhttp.send();
	}
}

function deleteThisRegistrarService(serviceId) {
	if (window
			.confirm('Are you sure you want to delete this registrar service?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisregistrarservice.jsp?serviceId="
				+ serviceId, true);
		xmlhttp.send();
	}
}

function generateIdentificationCode(firstName, fatherName, grandFatherName,
		idNumber, graduationYear, programLevelId, academicUnitId,
		admissionTypeId) {
	if (firstName == "") {
		document.getElementById('studentRecordErrorDiv').innerHTML = "<p class='msg error'>Failed to generate identification code: first name is empty!</p>";
		document.getElementById('txtfirstname').style.borderColor = "red";
		document.getElementById('txtfirstname').focus();
		return false;
	} else if (fatherName == "") {
		document.getElementById('txtfirstname').style.borderColor = "green";
		document.getElementById('studentRecordErrorDiv').innerHTML = "<p class='msg error'>Failed to generate identification code: father name is empty!</p>";
		document.getElementById('txtfathername').style.borderColor = "red";
		document.getElementById('txtfathername').focus();
		return false;
	} else if (grandFatherName == "") {
		document.getElementById('txtfathername').style.borderColor = "green";
		document.getElementById('studentRecordErrorDiv').innerHTML = "<p class='msg error'>Failed to generate identification code: grand father name is empty!</p>";
		document.getElementById('txtgrandfathername').style.borderColor = "red";
		document.getElementById('txtgrandfathername').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtidentificationcode").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "generateindentificationcode.jsp?firstName="
			+ firstName + "&fatherName=" + fatherName + "&grandFatherName="
			+ grandFatherName + "&idNumber=" + idNumber + "&graduationYear="
			+ graduationYear + "&programLevelId=" + programLevelId
			+ "&academicUnitId=" + academicUnitId + "&admissionTypeId="
			+ admissionTypeId, true);
	xmlhttp.send();
}

function showImageInNewWindow(studId) {
	// alert(img);
	var msgWin = window
			.open(
					'showimage.jsp?id=' + studId,
					'msgWin',
					'toolbar=no,status=no,width=500,height=350,left=420,top=250,fullscreen=yes,titlebar=no,scrollbars=yes');
}

function showPrinterFriendlyReportOnNewWindow(vacancyId) {
	var msgWin = window
			.open(
					'showprinterfriendlyreportonnewwindow.jsp?vacancyId='
							+ vacancyId,
					'msgWin',
					'toolbar=no,status=no,width=600,height=450,left=420,top=250,fullscreen=yes,titlebar=no,scrollbars=yes');
}

function showAttachementImageInNewWindow(oId) {
	var msgWin = window
			.open(
					'showattimage.jsp?id=' + oId,
					'msgWin',
					'toolbar=no,status=no,width=500,height=350,left=420,top=250,fullscreen=yes,titlebar=no,scrollbars=yes');
}

function toggleEditTickMark() {
	alert("toggler");
	if (document.getElementById('chkeditpaid').checked) {
		document.getElementById('chkeditnotpaid').checked = false;
	} else if (document.getElementById('chkeditnotpaid').checked) {
		document.getElementById('chkeditpaid').checked = false;
	}
}

function validateThisUser(username, password) {
	// alert(username+":"+password);
	if (username == "") {
		document.getElementById('txtusername').style.borderColor = "red";
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Please enter the username!</p>";
		document.getElementById('txtusername').focus();
		return false;
	} else if (password == "") {
		document.getElementById('txtusername').style.borderColor = "green";
		document.getElementById('txtpassword').style.borderColor = "red";
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Please enter the password!</p>";
		document.getElementById('txtpassword').focus();
		return false;
	} else {
		// username and password not blank
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp.open("POST", "validateuser.jsp", true);
		xmlhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		var parameters = "username=" + username + "&password=" + password;
		xmlhttp.send(parameters);
	}
}

function fieldChanger(id, newValue) {
	document.getElementById(id).value = newValue;
}

function changeProgramLevelValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('hiddenprogramlevelid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditprogramlevel").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeprogramlevelvalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeAcademicUnitValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('txthiddenacademicunitid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditacademicunit").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeacademicunitvalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeFieldOfStudy(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('hiddenfieldofstudyid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditfieldofstudy").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changefieldofstudy.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeAdmissionTypeValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('txthiddenadmissiontypeid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditadmissiontype").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeadmissiontypevalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeRegionValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('txthiddenregionid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditregion").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeregionvalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeGraduationYear(newValue) {
	document.getElementById('txteditgraduationyear').value = newValue;
}

function changePaidNotPaidValue(newValue) {
	document.getElementById('txteditfee').value = newValue;
}

function changeMemberTypeValues(newValue) {
	document.getElementById('txteditmembertype').value = newValue;
}

function showSearchResult(searchQuery) {
	if (searchQuery == "")
		return false;
	document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
	if (searchQuery == "") {
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("searchResultDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showsearchresult.jsp?query=" + searchQuery, true);
	xmlhttp.send();

}

function changeServiceIdValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('hiddeneditserviceid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditregistrarservice").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "getnewservicename.jsp?serviceId=" + newValue, true);
	xmlhttp.send();
}

function changeEmployeeFacultyValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('hiddenfacultyid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditfaculty").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "getnewfaculty.jsp?facultyId=" + newValue, true);
	xmlhttp.send();
}

function autoComplete(val) {
	// alert(val);
	if (val == "") {
		document.getElementById('menuPopup').innerHTML = "";
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("menuPopUp").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "getdata.jsp?q=" + val, true);
	xmlhttp.send();
}

function populateStudentRecordData(recId) {
	document.getElementById('menuPopUp').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populatestudentrecorddata.jsp?recId=" + recId, true);
	xmlhttp.send();
}

function removePopupMenu() {
	document.getElementById('popupTable').style.visibility = "hidden";
}

function saveMediumOfInstruction(studRecId, status, graduationYear,
		requestDate, telephoneNumber, preparedById, preparedBySignature,
		preparedDate) {
	// alert(studRecId+":"+status+":"+graduationYear+":"+requestDate+":"+telephoneNumber+":"+preparedById+":"+preparedBySignature+":"+preparedDate);
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (status == "") {
		document.getElementById('txtstudentname').style.borderColor = "green";
		document.getElementById('slctstatus').style.borderColor = "red";
		document.getElementById('slctstatus').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Select status!</p>";
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctstatus').style.borderColor = "green";
		document.getElementById('slctgraduationyear').style.borderColor = "red";
		document.getElementById('slctgraduationyear').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Select year of graduation!</p>";
		return false;
	} else if (requestDate == "") {
		document.getElementById('slctgraduationyear').style.borderColor = "green";
		document.getElementById('txtrequestdate').style.borderColor = "red";
		document.getElementById('txtrequestdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the request datet!</p>";
		return false;
	} else if (telephoneNumber == "") {
		document.getElementById('txtrequestdate').style.borderColor = "green";
		document.getElementById('txttelephonenumber').style.borderColor = "red";
		document.getElementById('txttelephonenumber').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter telephone number!</p>";
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savemediumofinstruction.jsp?studRecId=" + studRecId
			+ "&status=" + status + "&graduationYear=" + graduationYear
			+ "&requestDate=" + requestDate + "&telephoneNumber="
			+ telephoneNumber + "&preparedById=" + preparedById
			+ "&preparedBySignature=" + preparedBySignature + "&preparedDate="
			+ preparedDate, true);
	xmlhttp.send();
}

function saveForeignOfficialTranscript(studRecId, preparedById,
		preparedBySignature, preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveforeignofficialtranscript.jsp?studRecId="
			+ studRecId + "&preparedById=" + preparedById
			+ "&preparedBySignature=" + preparedBySignature + "&preparedDate="
			+ preparedDate, true);
	xmlhttp.send();
}

function saveLocalOfficialTranscript(studRecId, preparedById,
		preparedBySignature, preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savelocalofficialtranscript.jsp?studRecId="
			+ studRecId + "&preparedById=" + preparedById
			+ "&preparedBySignature=" + preparedBySignature + "&preparedDate="
			+ preparedDate, true);
	xmlhttp.send();
}

function saveDegreeVerification(studRecId, preparedById, preparedBySignature,
		preparedDate, numberOfCopies) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	} else if (numberOfCopies == "") {
		document.getElementById('txtprepdate').style.borderColor = "green";
		document.getElementById('txtnumberofcopies').style.borderColor = "red";
		document.getElementById('txtnumberofcopies').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter number of copies</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savedegreeverification.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate
			+ "&numberOfCopies=" + numberOfCopies, true);
	xmlhttp.send();
}

function saveToWhomItMayConcern(studRecId, preparedById, preparedBySignature,
		preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savetowhomitmayconcern.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate, true);
	xmlhttp.send();
}

function saveBirthDateChange(studRecId, preparedById, preparedBySignature,
		preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savebirthdatechange.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate, true);
	xmlhttp.send();
}

function saveNameChange(studRecId, preparedById, preparedBySignature,
		preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savenamechange.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate, true);
	xmlhttp.send();
}

function saveDegreeReplacement(studRecId, preparedById, preparedBySignature,
		preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savedegreereplacement.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate, true);
	xmlhttp.send();
}

function saveOriginalDegreeRequest(studRecId, preparedById,
		preparedBySignature, preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveoriginaldegreerequest.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate, true);
	xmlhttp.send();
}

function saveTemporaryDegreeRequest(studRecId, preparedById,
		preparedBySignature, preparedDate) {
	if (studRecId == "") {
		document.getElementById("txtstudentname").style.borderColor = "red";
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please select a student!</p>";
		document.getElementById('txtstudentname').focus();
		return false;
	} else if (preparedBySignature == "") {
		document.getElementById('txttelephonenumber').style.borderColor = "green";
		document.getElementById('slctpreparedbysignature').style.borderColor = "red";
		document.getElementById('slctpreparedbysignature').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Please put your signature!</p>";
		return false;
	} else if (preparedDate == "") {
		document.getElementById('slctpreparedbysignature').style.borderColor = "green";
		document.getElementById('txtprepdate').style.borderColor = "red";
		document.getElementById('txtprepdate').focus();
		document.getElementById('mediumOfInstErrorDiv').innerHTML = "<p class='msg warning'>Enter the prepared date</p>";
		return false;
	}
	// //////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savetemporarydegreerequest.jsp?studRecId=" + studRecId
			+ "&preparedById=" + preparedById + "&preparedBySignature="
			+ preparedBySignature + "&preparedDate=" + preparedDate, true);
	xmlhttp.send();
}

function issueThisRequest(id, tblName) {
	if (window.confirm('Are you sure you want to issue this request?')) {
		document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET", "issuethisrequest.jsp?id=" + id + "&tblName="
				+ tblName, true);
		xmlhttp.send();
		// //////////////
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlp.onreadystatechange = function() {
			if (xmlp.readyState == 4 && xmlp.status == 200) {
				document.getElementById("issueServiceDiv").innerHTML = xmlp.responseText;
				document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
			}
		}
		xmlp.open("GET", "refreshissueservicecount.jsp", true);
		xmlp.send();
	}
}

function approveThisOnlineOfficialTranscriptRequest(id) {
	if (window
			.confirm('Are you sure you want to approve this online official transcript request?')) {
		document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
			}
		}
		xmlhttp
				.open("GET",
						"approvethisonlineofficialtranscriptrequest.jsp?id="
								+ id, true);
		xmlhttp.send();
	}
}

function showResetFormForThisAccount(accountId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("accountResetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showresetformforthisaccount.jsp?accountId="
			+ accountId, true);
	xmlhttp.send();
}

function resetThisAccount(accountId, resetedUsername, resetedPassword) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "resetthisaccount.jsp?accountId=" + accountId
			+ "&resetedUsername=" + resetedUsername + "&resetedPassword="
			+ resetedPassword, true);
	xmlhttp.send();
}

function changeMonthValue(newValue) {
	document.getElementById('txteditmonth').value = newValue;
}

function changeSponsor(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('hiddensponsorid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditsponsor").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changesponsor.jsp?sponsorId=" + newValue, true);
	xmlhttp.send();
}

function changeCollegeValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('hiddencollegeid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtcollegename").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changecollege.jsp?collegeCode=" + newValue, true);
	xmlhttp.send();
}

function changeSexValue(newValue) {
	if (newValue == "")
		return false;
	document.getElementById('txteditsex').value = newValue;
}

function changeReligionValue(religionId) {
	if (religionId == "")
		return false;
	document.getElementById('hiddenreligionid').value = religionId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditreligion").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changereligion.jsp?religionId=" + religionId, true);
	xmlhttp.send();
}

function changeMaritalStatusValue(maritalStatusId) {
	// alert(maritalStatusId);
	if (maritalStatusId == "")
		return false;
	document.getElementById('hiddenmaritalstatusid').value = maritalStatusId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditmaritalstatus").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changemaritalstatus.jsp?maritalStatusId="
			+ maritalStatusId, true);
	xmlhttp.send();
}

function changeEmployeeType(employeeTypeId) {
	if (employeeTypeId == "")
		return false;
	document.getElementById('hiddenemployeetypeid').value = employeeTypeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditemployeetype").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeemployeetype.jsp?employeeTypeId="
			+ employeeTypeId, true);
	xmlhttp.send();
}

function changeMaxEducationLevel(educationLevelId) {
	if (educationLevelId == "")
		return false;
	document.getElementById('hiddeneducationlevelid').value = educationLevelId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtediteducationlevel").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changemaxeducationlevel.jsp?educationLevelId="
			+ educationLevelId, true);
	xmlhttp.send();
}

function changeBudgetCenter(budgetCenterId) {
	if (budgetCenterId == "")
		return false;
	document.getElementById('hiddenbudgetcenterid').value = budgetCenterId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditbudgetcenter").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changebudgetcenter.jsp?budgetCenterId="
			+ budgetCenterId, true);
	xmlhttp.send();
}

function changeEmployementType(employementTypeId) {
	if (employementTypeId == "")
		return false;
	document.getElementById('hiddenemployementtypeid').value = employementTypeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditemployementtype").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeemployementtype.jsp?employementTypeId="
			+ employementTypeId, true);
	xmlhttp.send();
}

function listIdentificationCodeForThisAcademicUnitInThisYear(academicUnitId,
		year) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("identificationCodeListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"listidentificationcodeforthisacademicunitinthisyear.jsp?academicUnitId="
					+ academicUnitId + "&year=" + year, true);
	xmlhttp.send();
}

function updateEmployeeBasicInformation(employeeId, firstName, fatherName,
		grandFatherName, sex, dateOfBirth, idNumber, pensionNumber,
		employementDate, religionId, nationality, maritalStatusId,
		spouseFullName, basicSalary, employeeTypeId, employeePosition,
		educationLevelId, budgetCenterId, employementTypeId) {
	/*
	 * alert(employeeId+":"+firstName+":"+fatherName+":"+grandFatherName+":"+sex+":"+dateOfBirth+":"+idNumber+":"+
	 * pensionNumber+":"+employementDate+":"+religionId+":"+nationality+":"+maritalStatusId+":"+spouseFullName+":"+basicSalary+":"+employeeTypeId+":"+
	 * employeePosition+":"+educationLevelId+":"+budgetCenterId+":"+employementTypeId);
	 */
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeBasicInformationEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateemployeebasicinformation.jsp?employeeId="
			+ employeeId + "&firstName=" + firstName + "&fatherName="
			+ fatherName + "&grandFatherName=" + grandFatherName + "&sex="
			+ sex + "&dateOfBirth=" + dateOfBirth + "&idNumber=" + idNumber
			+ "&pensionNumber=" + pensionNumber + "&employementDate="
			+ employementDate + "&religionId=" + religionId + "&nationality="
			+ nationality + "&maritalStatusId=" + maritalStatusId
			+ "&spouseFullName=" + spouseFullName + "&basicSalary="
			+ basicSalary + "&employeeTypeId=" + employeeTypeId
			+ "&employeePosition=" + employeePosition + "&educationLevelId="
			+ educationLevelId + "&budgetCenterId=" + budgetCenterId
			+ "&employementTypeId=" + employementTypeId, true);
	xmlhttp.send();
}

function isLoginFormBlank() {
	if (document.getElementById('txtusername').value == "") {
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Enter the username!</p>";
		document.getElementById('txtusername').style.borderColor = "red";
		document.getElementById('txtusername').focus();
		return false;
	} else if (document.getElementById('txtpassword').value == "") {
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Enter the password!</p>";
		document.getElementById('txtpassword').style.borderColor = "red";
		document.getElementById('txtpassword').focus();
		return false;
	} else if(document.getElementById('slctlanguage').value == ""){
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Select the language!</p>";
		document.getElementById('slctlanguage').style.borderColor = "red";
		document.getElementById('slctlanguage').focus();
		return false;
	}else
		return true;

}

function showOnlineOfficialTranscriptForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("content").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showonlineofficialtranscriptform.jsp", true);
	xmlhttp.send();
}

function showFaculty(academicUnitId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("facultySpan").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfaculty.jsp?academicUnitId=" + academicUnitId,
			true);
	xmlhttp.send();
}

function isStudentRecordFormBlank() {
	if (document.getElementById('txtfirstname').value == "") {
		document.getElementById('txtfirstname').style.borderColor = "red";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the First name!</p>";
		document.getElementById('txtfirstname').focus();
		return false;
	} else if (document.getElementById('txtfathername').value == "") {
		document.getElementById('txtfirstname').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the Father name!</p>";
		document.getElementById('txtfathername').style.borderColor = "red";
		document.getElementById('txtfathername').focus();
		return false;
	} else if (document.getElementById('txtgrandfathername').value == "") {
		document.getElementById('txtfathername').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the Grandfather name!</p>";
		document.getElementById('txtgrandfathername').style.borderColor = "red";
		document.getElementById('txtgrandfathername').focus();
		return false;
	} else if (document.getElementById('slctsex').value == "") {
		document.getElementById('txtgrandfathername').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select sex!</p>";
		document.getElementById('slctsex').style.borderColor = "red";
		document.getElementById('slctsex').focus();
		return false;
	} else if (document.getElementById('txtdateofbirth').value == "") {
		document.getElementById('slctsex').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the date of birth!</p>";
		document.getElementById('txtdateofbirth').style.borderColor = "red";
		document.getElementById('txtdateofbirth').focus();
		return false;
	} else if (document.getElementById('txtidnumber').value == "") {
		document.getElementById('txtdateofbirth').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the Id number!</p>";
		document.getElementById('txtidnumber').style.borderColor = "red";
		document.getElementById('txtidnumber').focus();
		return false;
	} else if (document.getElementById('slctprogramlevel').value == "") {
		document.getElementById('txtidnumber').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the program level!</p>";
		document.getElementById('slctprogramlevel').style.borderColor = "red";
		document.getElementById('slctprogramlevel').focus();
		return false;
	} else if (document.getElementById('txtdateofadmission').value == "") {
		document.getElementById('slctprogramlevel').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the date of admission!</p>";
		document.getElementById('txtdateofadmission').style.borderColor = "red";
		document.getElementById('txtdateofadmission').focus();
		return false;
	} else if (document.getElementById('slctacademicunit').value == "") {
		document.getElementById('txtdateofadmission').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the academic unit!</p>";
		document.getElementById('slctacademicunit').style.borderColor = "red";
		document.getElementById('slctacademicunit').focus();
		return false;
	} else if (document.getElementById('slctadmissiontype').value == "") {
		document.getElementById('slctacademicunit').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the admission type!</p>";
		document.getElementById('slctadmissiontype').style.borderColor = "red";
		document.getElementById('slctadmissiontype').focus();
		return false;
	} else if (document.getElementById('txtcgpa').value == "") {
		document.getElementById('slctadmissiontype').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the CGPA!</p>";
		document.getElementById('txtcgpa').style.borderColor = "red";
		document.getElementById('txtcgpa').focus();
		return false;
	} else if (document.getElementById('slctregion').value == "") {
		document.getElementById('txtcgpa').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the region!</p>";
		document.getElementById('slctregion').style.borderColor = "red";
		document.getElementById('slctregion').focus();
		return false;
	} else if (document.getElementById('slctgraduationyear').value == "") {
		document.getElementById('slctregion').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select year of graduation!</p>";
		document.getElementById('slctgraduationyear').style.borderColor = "red";
		document.getElementById('slctgraduationyear').focus();
		return false;
	} else if (document.getElementById('txtidentificationcode').value == "") {
		document.getElementById('slctgraduationyear').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the Identification Code!</p>";
		document.getElementById('txtidentificationcode').style.borderColor = "red";
		document.getElementById('txtidentificationcode').focus();
		return false;
	} else if (document.getElementById('slctfee').value == "") {
		document.getElementById('txtidentificationcode').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select Fee!</p>";
		document.getElementById('slctfee').style.borderColor = "red";
		document.getElementById('slctfee').focus();
		return false;
	} else if (document.getElementById('fletranscript').value == "") {
		document.getElementById('slctfee').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Choose the transcript file!</p>";
		document.getElementById('fletranscript').style.borderColor = "red";
		document.getElementById('fletranscript').focus();
		return false;
	} else if (document.getElementById('slctremark').value == "") {
		document.getElementById('fletranscript').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the remark!</p>";
		document.getElementById('slctremark').style.borderColor = "red";
		document.getElementById('slctremark').focus();
		return false;
	} else if (document.getElementById('slctcountry').value == "") {
		document.getElementById('slctremark').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the country/Nationality!</p>";
		document.getElementById('slctcountry').style.borderColor = "red";
		document.getElementById('slctcountry').focus();
		return false;
	} else if (document.getElementById('slctsponsor').value == "") {
		document.getElementById('slctcountry').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the sponsor!</p>";
		document.getElementById('slctsponsor').style.borderColor = "red";
		document.getElementById('slctsponsor').focus();
		return false;
	} else if (document.getElementById('slctmonth').value == "") {
		document.getElementById('slctsponsor').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select the month of graduation!</p>";
		document.getElementById('slctmonth').style.borderColor = "red";
		document.getElementById('slctmonth').focus();
		return false;
	} else if (document.getElementById('slctfieldofstudy').value == "") {
		document.getElementById('slctmonth').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Select field of study!</p>";
		document.getElementById('slctfieldofstudy').style.borderColor = "red";
		document.getElementById('slctfieldofstudy').focus();
		return false;
	} else if (document.getElementById('txtlocation').value == "") {
		document.getElementById('slctfieldofstudy').style.borderColor = "green";
		document.getElementById('studErrorDiv').innerHTML = "<p class='msg warning'>Enter the location of the record!</p>";
		document.getElementById('txtlocation').style.borderColor = "red";
		document.getElementById('txtlocation').focus();
		return false;
	} else
		return true;
}

function insertNewGridRow(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDInstitution = document.createElement('td');
	var newTDFieldOfStudy = document.createElement('td');
	var newTDEducationLevel = document.createElement('td');
	var newTDDateOfAward = document.createElement('td');
	// alert(newRowId);
	// now comes the naming of the tds for each row
	var newInstitution = "txtnameofinstitution" + newRowId;
	var newFieldOfStudy = "slctfieldofstudy" + newRowId;
	var newFieldOfStudyDiv = "fieldofstudydiv" + newRowId;
	var newEducationLevel = "txteducationlevel" + newRowId;
	var newDateOfAward = "txtdateofaward" + newRowId;

	var institution = "<input type='text' name='" + newInstitution + "' id='"
			+ newInstitution + "'/>";

	var fieldOfStudyDiv = "<div id='" + newFieldOfStudyDiv + "'></div>";
	var educationLevel = "<input type='text' name='" + newEducationLevel + "' id='" + newEducationLevel + "'/>";
	var dateOfAward = "<input type='text' name='" + newDateOfAward + "' id='" + newDateOfAward + "'/>";

	// now here add the ajax part to the div
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// alert(xmlhttp.responseText);
			document.getElementById(newFieldOfStudyDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfieldofstudydropdown.jsp?newRowId=" + newRowId,
			true);
	xmlhttp.send();
	// ////////end ajax part///////////

	newTDInstitution.innerHTML = institution;
	newTDFieldOfStudy.innerHTML = fieldOfStudyDiv;
	newTDEducationLevel.innerHTML = educationLevel;
	newTDDateOfAward.innerHTML = dateOfAward;

	newTR.appendChild(newTDInstitution);
	newTR.appendChild(newTDFieldOfStudy);
	newTR.appendChild(newTDEducationLevel);
	newTR.appendChild(newTDDateOfAward);

	// newTR.appendChild(newTDRoute);
	// newTR.appendChild(newTDFrequency);
	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewEducationLevelCriteria(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDEducationLevel = document.createElement('td');
	var newTDPoint = document.createElement('td');
	// alert(newRowId);
	// now comes the naming of the tds for each row
	var newEducationLevel = "slcteducationlevel" + newRowId;
	var newPoint = "txtpoint" + newRowId;
	var newEducationLevelDiv = "educationLevelDiv" + newRowId;

	var point = "<input type='text' name='" + newPoint + "' id='" + newPoint
			+ "'/>";

	var educationLevelDiv = "<div id='" + newEducationLevelDiv + "'></div>";

	// now here add the ajax part to the div
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// alert(xmlhttp.responseText);
			document.getElementById(newEducationLevelDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeducationleveldropdown.jsp?newRowId=" + newRowId,
			true);
	xmlhttp.send();
	// ////////end ajax part///////////

	newTDEducationLevel.innerHTML = educationLevelDiv;
	newTDPoint.innerHTML = point;

	newTR.appendChild(newTDEducationLevel);
	newTR.appendChild(newTDPoint);

	// newTR.appendChild(newTDRoute);
	// newTR.appendChild(newTDFrequency);
	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewFieldOfStudyCriteria(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDFieldOfStudy = document.createElement('td');
	var newTDPoint = document.createElement('td');
	// alert(newRowId);
	// now comes the naming of the tds for each row
	var newFieldOfStudy = "slctfieldofstudy" + newRowId;
	var newPoint = "txtpoint" + newRowId;
	var newFieldOfStudyDiv = "fieldOfStudyDiv" + newRowId;

	var point = "<input type='text' name='" + newPoint + "' id='" + newPoint
			+ "'/>";

	var fieldOfStudyDiv = "<div id='" + newFieldOfStudyDiv + "'></div>";

	// now here add the ajax part to the div
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// alert(xmlhttp.responseText);
			document.getElementById(newFieldOfStudyDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showfieldofstudycriteriadropdown.jsp?newRowId="
			+ newRowId, true);
	xmlhttp.send();
	// ////////end ajax part///////////

	newTDFieldOfStudy.innerHTML = fieldOfStudyDiv;
	newTDPoint.innerHTML = point;

	newTR.appendChild(newTDFieldOfStudy);
	newTR.appendChild(newTDPoint);

	// newTR.appendChild(newTDRoute);
	// newTR.appendChild(newTDFrequency);
	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewExperienceCriteria(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDExperienceYear = document.createElement('td');
	var newTDPoint = document.createElement('td');
	// alert(newRowId);
	// now comes the naming of the tds for each row
	var newExperienceYear = "txtminimumnumberofyear" + newRowId;
	var newPoint = "txtpoint" + newRowId;

	var experience = "<input type='text' name='" + newExperienceYear + "' id='"
			+ newExperienceYear + "'/>"
	var point = "<input type='text' name='" + newPoint + "' id='" + newPoint
			+ "'/>";

	newTDExperienceYear.innerHTML = experience;
	newTDPoint.innerHTML = point;

	newTR.appendChild(newTDExperienceYear);
	newTR.appendChild(newTDPoint);

	// newTR.appendChild(newTDRoute);
	// newTR.appendChild(newTDFrequency);
	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewGridRowToService(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDName = document.createElement('td');
	var newTDDateOfBirth = document.createElement('td');
	var newTDRelationship = document.createElement('td');

	// now comes the naming of the tds for each row
	var newName = "txtdependentname" + newRowId;
	var newDateOfBirth = "txtdependentdateofbirth" + newRowId;
	var newRelationship = "txtdependentrelationship" + newRowId;
	
	var newDependentsDiv = "dependentsDiv" + newRowId;
	
	var dependentsDiv = "<div id='" + newDependentsDiv + "'></div>";
	var name = "<input type='text' name='" + newName + "' id='" + newName + "' style='width:98%'/>";
	var dateOfBirth = "<input type='text' name='" + newDateOfBirth + "' id='" + newDateOfBirth + "' style='width:98%'/>";
	var relationship = "<input type='text' name='" + newRelationship + "' id='" + newRelationship + "' style='width:98%'/>";
	
	newTDName.innerHTML = name;
	newTDDateOfBirth.innerHTML = dateOfBirth;
	newTDRelationship.innerHTML = relationship;	

	newTR.appendChild(newTDName);
	newTR.appendChild(newTDDateOfBirth);
	newTR.appendChild(newTDRelationship);

	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewGridRowToEducation(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	
	var newTDNamePlaceCountry = document.createElement('td');
	var newTDFromMonthYear = document.createElement('td');
	var newTDToMonthYear = document.createElement('td');
	var newTDDegreesAcademic = document.createElement('td');
	var newTDMainCourseStudy = document.createElement('td');

	// now comes the naming of the tds for each row
	var newNamePlaceCountry = "txteducationnameplacecountry" + newRowId;
	var newFromMonthYear = "txteducationattendedfrom" + newRowId;
	var newToMonthYear = "txteducationattendedto" + newRowId;
	var newDegreesAcademic = "txteducationdegreesacademic" + newRowId;
	var newMainCourseStudy = "txteducationmaincourseofstudy" + newRowId;
	
	var newEducationDiv = "educationDiv" + newRowId;
	
	var educationDiv = "<div id='" + newEducationDiv + "'></div>";
	var namePlaceCountry = "<input type='text' name='" + newNamePlaceCountry + "' id='" + newNamePlaceCountry + "' style='width:98%'/>";
	var fromMonthYear = "<input type='text' name='" + newFromMonthYear + "' id='" + newFromMonthYear + "' style='width:98%'/>";
	var toMonthYear = "<input type='text' name='" + newToMonthYear + "' id='" + newToMonthYear + "' style='width:98%'/>";
	var degreesAcademic = "<input type='text' name='" + newDegreesAcademic + "' id='" + newDegreesAcademic + "' style='width:98%'/>";
	var mainCourseStudy = "<input type='text' name='" + newMainCourseStudy + "' id='" + newMainCourseStudy + "' style='width:98%'/>";
	
	newTDNamePlaceCountry.innerHTML = namePlaceCountry;
	newTDFromMonthYear.innerHTML = fromMonthYear;
	newTDToMonthYear.innerHTML = toMonthYear;	
	newTDDegreesAcademic.innerHTML = degreesAcademic;
	newTDMainCourseStudy.innerHTML = mainCourseStudy;
	
	newTR.appendChild(newTDNamePlaceCountry);
	newTR.appendChild(newTDFromMonthYear);
	newTR.appendChild(newTDToMonthYear);
	newTR.appendChild(newTDDegreesAcademic);
	newTR.appendChild(newTDMainCourseStudy);

	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewGridRowToSchool(grid){
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	
	var newTDNamePlaceCountry = document.createElement('td');
	var newTDType = document.createElement('td');
	var newTDFromMonthYear = document.createElement('td');
	var newTDToMonthYear = document.createElement('td');
	var newTDCertificates = document.createElement('td');	

	// now comes the naming of the tds for each row
	var newNamePlaceCountry = "txtschoolnameplacecountry" + newRowId;
	var newFromMonthYear = "txtschoolattendedfrom" + newRowId;
	var newToMonthYear = "txtschoolattendedto" + newRowId;
	var newType = "txtschooltype" + newRowId;
	var newCertificates = "txtschoolcertificatesordiplomasobtained" + newRowId;
	
	var newSchoolDiv = "schoolDiv" + newRowId;
	
	var schoolDiv = "<div id='" + newSchoolDiv + "'></div>";
	var namePlaceCountry = "<input type='text' name='" + newNamePlaceCountry + "' id='" + newNamePlaceCountry + "' style='width:98%'/>";
	var fromMonthYear = "<input type='text' name='" + newFromMonthYear + "' id='" + newFromMonthYear + "' style='width:98%'/>";
	var toMonthYear = "<input type='text' name='" + newToMonthYear + "' id='" + newToMonthYear + "' style='width:98%'/>";
	var type = "<input type='text' name='" + newType + "' id='" + newType + "' style='width:98%'/>";
	var certificates = "<input type='text' name='" + newCertificates + "' id='" + newCertificates + "' style='width:98%'/>";
	
	newTDNamePlaceCountry.innerHTML = namePlaceCountry;
	newTDFromMonthYear.innerHTML = fromMonthYear;
	newTDToMonthYear.innerHTML = toMonthYear;	
	newTDType.innerHTML = type;
	newTDCertificates.innerHTML = certificates;
	
	newTR.appendChild(newTDNamePlaceCountry);
	newTR.appendChild(newTDType);
	newTR.appendChild(newTDFromMonthYear);
	newTR.appendChild(newTDToMonthYear);	
	newTR.appendChild(newTDCertificates);

	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewGridRowToTraining(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDTraining = document.createElement('td');
	var newTDPlaceOfTraining = document.createElement('td');
	var newTDDuration = document.createElement('td');
	var newTDYearOfTraining = document.createElement('td');

	// alert(newRowId);

	// now comes the naming of the tds for each row
	var newTraining = "txttrainingtaken" + newRowId;
	var newPlaceOfTraining = "txtplaceoftraining" + newRowId;
	var newDuration = "txtduration" + newRowId;
	var newYearOfTraining = "txtyearoftraining" + newRowId;

	var trainingTaken = "<input type='text' name='" + newTraining + "' id='"+ newTraining + "'/>";
	var placeOfTraining = "<input type='text' name='" + newPlaceOfTraining+ "' id='"+ newPlaceOfTraining+"'/>";
	var duration = "<input type='text' name='" + newDuration + "' id='"+ newDuration+"'/>";
	var yearOfTraining = "<input type='text' name='"+ newYearOfTraining+"' id='"+ newYearOfTraining+"'/>";

	newTDTraining.innerHTML = trainingTaken;
	newTDPlaceOfTraining.innerHTML = placeOfTraining;
	newTDDuration.innerHTML = duration;
	newTDYearOfTraining.innerHTML = yearOfTraining;

	newTR.appendChild(newTDTraining);
	newTR.appendChild(newTDPlaceOfTraining);
	newTR.appendChild(newTDDuration);
	newTR.appendChild(newTDYearOfTraining);

	// newTR.appendChild(newTDRoute);
	// newTR.appendChild(newTDFrequency);
	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function removeTableRow(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function removeTableRowFromService(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function removeEducationLevelCriteria(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function removeFieldOfStudyCriteria(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function removeExperienceCriteriaRow(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function removeTableRowFromTraining(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function saveEducationInformation(grid, diet, activity, nursingCare,
		vitalSigns, patientId) {
	var rowVal = grid.rows.length - 1;
	// alert(grid);
	// alert(rowVal);
	// alert(patientId+":"+diet+":"+activity+":"+nursingCare+":"+vitalSigns+":"+grid);
	// now what i need is, to get the values of each and every grid cells as a
	// string and
	// pass it to the jsp
	stringValues = "";
	drugName = "";
	drugDose = "";
	drugRoute = "";
	drugFrequency = "";
	drugNameVal = "";
	drugDoseVal = "";
	drugRouteVal = "";
	drugFrequencyVal = "";

	for (i = 1; i <= rowVal; i++) {
		drugName = 'txtdrug' + i;
		drugDose = 'txtdose' + i;
		drugRoute = 'txtroute' + i;
		drugFrequency = 'txtfrequency' + i;
		// now get the values of the text fields
		drugNameVal = document.getElementById(drugName).value;
		durgDoseVal = document.getElementById(drugDose).value;
		durgRouteVal = document.getElementById(drugRoute).value;
		drugFrequencyVal = document.getElementById(drugFrequency).value;

		stringValues += "&" + drugName + "=" + drugNameVal + "&" + drugDose
				+ "=" + durgDoseVal + "&" + drugRoute + "=" + durgRouteVal
				+ "&" + drugFrequency + "=" + drugFrequencyVal;
	}

	// alert(stringValues);

	// alert(stringValues);
	// now call the ajax method to save the entire sheet
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("inner-main").innerHTML = xmlhttp.responseText;
			document.getElementById('medicationDetailDiv').innerHTML = "<strong><font color='green'>Medication Saved Successfully!</font></strong>";
		}
	}
	xmlhttp.open("GET", "savemedication.jsp?patientId=" + patientId + "&diet="
			+ diet + "&activity=" + activity + "&nursingCare=" + nursingCare
			+ "&vitalSigns=" + vitalSigns + stringValues + "&rowVal=" + rowVal,
			true);
	xmlhttp.send();
}

function changeExistingCollegeName(collegeId) {
	document.getElementById('hiddeneditcollegeworksat').value = collegeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditcollegeworksat").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeexistingcollegename.jsp?collegeId=" + collegeId,
			true);
	xmlhttp.send();
}

function changeExistingKefeleKetema(kId) {
	document.getElementById('hiddenkefeleketemaid').value = kId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditkefeleketema").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeexistingkefeleketema.jsp?kId=" + kId, true);
	xmlhttp.send();
}

function changeExistingFieldOfStudy(fieldOfStudyId) {
	document.getElementById('hiddeneditfieldofstudy').value = fieldOfStudyId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditfieldofstudy").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeexistingfieldofstudy.jsp?fieldOfStudyId="
			+ fieldOfStudyId, true);
	xmlhttp.send();
}

function changeExistingJob(jobId) {
	document.getElementById('hiddeneditjobid').value = jobId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditjob").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeexistingjob.jsp?jobId=" + jobId, true);
	xmlhttp.send();
}

function changeExistingActionTakenOnEmployee(newVal) {
	document.getElementById('txteditactiontaken').value = newVal;
}

function changeExistingDependantKefeleKetema(newValue) {
	document.getElementById('hiddeneditdependantkefeleketemaid').value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditdependantkefeleketema").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeexistingdependantkefeleketema.jsp?kId="
			+ newValue, true);
	xmlhttp.send();
}

function changeExistingUserType(newValue) {
	document.getElementById('txteditusertype').value = newValue;
}

function selectAllCheckBoxes(totalNumFun) {
	canReadChk = "";
	canWriteChk = "";
	canUpdateChk = "";
	canDeleteChk = "";

	hiddenRoleId = "";
	hiddenRoleIdVal = "";

	for (i = 1; i <= totalNumFun; i++) {
		hiddenRoleId = "hiddenroleid" + i;
		hiddenRoleIdVal = document.getElementById(hiddenRoleId).value;
		canReadChk = "chkcanread" + hiddenRoleIdVal;
		canWriteChk = "chkcanwrite" + hiddenRoleIdVal;
		canUpdateChk = "chkcanupdate" + hiddenRoleIdVal;
		canDeleteChk = "chkcandelete" + hiddenRoleIdVal;
		// alert(canReadChk);
		document.getElementById(canReadChk).checked = true;
		document.getElementById(canWriteChk).checked = true;
		document.getElementById(canUpdateChk).checked = true;
		document.getElementById(canDeleteChk).checked = true;
	}
}

function disselectAllCheckBoxes(totalNumFun) {
	// alert(totalNumFun);
	canReadChk = "";
	canWriteChk = "";
	canUpdateChk = "";
	canDeleteChk = "";

	hiddenRoleId = "";
	hiddenRoleIdVal = "";

	for (i = 1; i <= totalNumFun; i++) {
		hiddenRoleId = "hiddenroleid" + i;
		hiddenRoleIdVal = document.getElementById(hiddenRoleId).value;
		canReadChk = "chkcanread" + hiddenRoleIdVal;
		canWriteChk = "chkcanwrite" + hiddenRoleIdVal;
		canUpdateChk = "chkcanupdate" + hiddenRoleIdVal;
		canDeleteChk = "chkcandelete" + hiddenRoleIdVal;
		// alert(canReadChk);
		document.getElementById(canReadChk).checked = false;
		document.getElementById(canWriteChk).checked = false;
		document.getElementById(canUpdateChk).checked = false;
		document.getElementById(canDeleteChk).checked = false;
	}
}

function updateAllRoles(totalNumFun, accountId) {
	canReadChk = "";
	canWriteChk = "";
	canUpdateChk = "";
	canDeleteChk = "";
	hasReadAccess = false;
	hasWriteAccess = false;
	hasUpdateAccess = false;
	hasDeleteAccess = false;
	hiddenRoleId = "";
	hiddenRolIdVal = "";
	hiddenFunctionalityId = "";
	hiddenFunctionalityIdVal = "";

	// now i need to loop tru each check boxes....read thier value and save it
	// to the database...
	for (i = 1; i <= totalNumFun; i++) {
		hiddenRoleId = "hiddenroleid" + i;
		hiddenFunctionalityId = "hiddenfunctionalityid" + i;
		hiddenRoleIdVal = document.getElementById(hiddenRoleId).value;
		hiddenFunctionalityIdVal = document.getElementById(hiddenRoleId).value;

		canReadChk = "chkcanread" + hiddenRoleIdVal;
		canWriteChk = "chkcanwrite" + hiddenRoleIdVal;
		canUpdateChk = "chkcanupdate" + hiddenRoleIdVal;
		canDeleteChk = "chkcandelete" + hiddenRoleIdVal;

		if (document.getElementById(canReadChk).checked == true)
			hasReadAccess = true;
		if (document.getElementById(canWriteChk).checked == true)
			hasWriteAccess = true;
		if (document.getElementById(canUpdateChk).checked == true)
			hasUpdateAccess = true;
		if (document.getElementById(canDeleteChk).checked == true)
			hasDeleteAccess = true;
		// /////////now update the role value in the database...
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				// document.getElementById("content").innerHTML =
				// xmlhttp.responseText;
				// document.getElementById("roleDetailForEmployee").innerHTML =
				// "<strong><font color='green'>Role updated
				// successfully!</font></strong>";
			}
		}
		xmlhttp
				.open("GET", "updaterole.jsp?roleId=" + hiddenRoleIdVal
						+ "&accountId=" + accountId + "&functionalityId="
						+ hiddenFunctionalityIdVal + "&hasReadAccess="
						+ hasReadAccess + "&hasWriteAccess=" + hasWriteAccess
						+ "&hasUpdateAccess=" + hasUpdateAccess
						+ "&hasDeleteAccess=" + hasDeleteAccess, true);
		xmlhttp.send();
		hasReadAccess = false;
		hasWriteAccess = false;
		hasUpdateAccess = false;
		hasDeleteAccess = false;
	}// end for loop

	document.getElementById("content").innerHTML = xmlhttp.responseText;
	document.getElementById("roleDetailForEmployee").innerHTML = "<strong><font color='green'>Role updated successfully!</font></strong>";
}

function deleteThisEmployeeRecord(empId) {
	// alert(empId);
	if (window.confirm("Are you sure you want to delete this employee?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open("GET", "deletethisemployeerecord.jsp?empId=" + empId,
						true);
		xmlhttp.send();
	}
}

function showEmployeesWithThisSalaryRang(salaryRange) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeeswiththissalaryrang.jsp?salaryRange="
			+ salaryRange, true);
	xmlhttp.send();
}

function showEmployeesFromThisBudgetCenter(budgetCenterId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeesfromthisbudgetcenter.jsp?budgetCenterId="
			+ budgetCenterId, true);
	xmlhttp.send();
}

function showEmployeesWithThisEducationLevel(educationLevelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showemployeeswiththiseducationlevel.jsp?educationLevelId="
					+ educationLevelId, true);
	xmlhttp.send();
}

function showEmployeesWhoseEmployeeTypeIs(employeeTypeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showemployeeswhoseemployeetypeis.jsp?employeeTypeId="
			+ employeeTypeId, true);
	xmlhttp.send();
}

function showEmployeesWithThisEmployementType(employementTypeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showemployeeswiththisemployementtype.jsp?employementTypeId="
					+ employementTypeId, true);
	xmlhttp.send();
}

function showEmployeesWhoseMaritalStatusIs(maritalStatusId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showemployeeswhosemaritalstatusis.jsp?maritalStatusId="
					+ maritalStatusId, true);
	xmlhttp.send();
}

function showEmployeesWithThisEmployeePosition(empPosition) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showemployeeswiththisemployeeposition.jsp?empPosition="
					+ empPosition, true);
	xmlhttp.send();
}

function showEmployeesWithThisEmployeeNationality(empNationality) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sortedDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showemployeeswiththisemployeenationality.jsp?empNationality="
					+ empNationality, true);
	xmlhttp.send();
}

function saveLanguage(lang) {
	if (lang == "") {
		document.getElementById('errorMsgDiv').innerHTML = "Enter the langauge";
		document.getElementById('txtlanguage').style.borderColor = "red";
		document.getElementById('txtlanguage').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savelanguage.jsp?lang=" + lang, true);
		xmlhttp.send();
	}
}

function printDiv(divName) {	
    var printContents = document.getElementById(divName).innerHTML;    
    window.document.getElementById(divName).innerHTML = printContents;
    window.print();    
}