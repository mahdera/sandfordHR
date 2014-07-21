<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<!-- Menu --> 
	<div id="menu" class="box">		 
		<%
			List<Functionality> functionalityList = Functionality.getAllFunctionalities();
			Iterator<Functionality> functionalityItr = functionalityList.iterator();
			//Account acct = (Account)session.getAttribute("account");			
		%> 
		<ul class="box"> 
			<%
			while(functionalityItr.hasNext()){
				Functionality functionality = functionalityItr.next();				
			%>
				<li><strong><a href="#.jsp" title="<%=functionality.getDescription()%>" onclick="performThisFunction('<%=functionality.getFunctionalityName() %>')"><span><%=functionality.getMenuName()%></span></a></strong></li>
			<%				
			}//end while loop
			%>			 
		</ul>  
</div> <!-- /header --> 
<script type="text/javascript">
function performThisFunction(menuName) {
	if (menuName == "fisManagement") {		
		$('#content').load('fismanagement.jsp');
	} else if (menuName == "collegeManagement") {		
		$('#content').load('collegemanagement.jsp');
	} else if (menuName == "departmentManagement") {		
		$('#content').load('departmentmanagement.jsp');
	} else if (menuName == "employeeManagement") {
		$('#content').load('employeemanagement.jsp');		
	} else if (menuName == "manageAdminFields") {		
		$('#content').load('adminfieldsmanagement.jsp');
	} else if (menuName == "accountManagement") {		
		$('#content').load('accountmanagement.jsp');
	} else if (menuName == "roleManagement") {		
		$('#content').load('rolemanagement.jsp');
	} else if (menuName == "userManagement") {		
		$('#content').load('usermanagement.jsp');
	} else if (menuName == "viewReport") {		
		$('#content').load('viewreport.jsp');
	} else if (menuName == "attendanceManagement") {		
		$('#content').load('attendancemanagement.jsp');
	} else if (menuName == "hrModuleManagement") {		
		$('#content').load('hrmodulemanagement.jsp');
	} else if(menuName == "recruitmentRequestForm"){		
		$('#content').load('showrecruitmentrequestmanagement.jsp');
	} else if (menuName == "permitManagement"){
		$('#content').load('showpermitmanagement.jsp');
	} else if(menuName == "formsManagement"){
		$('#content').load('showformmanagement.jsp');
	} else if(menuName == "vacancyManagement"){
		$('#content').load('showvacancymanagement.jsp');
	}
}
</script>