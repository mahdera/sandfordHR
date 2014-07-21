<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	//out.print(collegeId);

List<FacultyInstituteSchool> fisEditList = FacultyInstituteSchool.getAllFacultyInstituteSchoolsFoundInThisCollege(collegeId);
	Iterator<FacultyInstituteSchool> fisEditItr = fisEditList.iterator();	
%>
<select name="slcteditfis" id="slcteditfis" onchange="populateEditDepartmentDropdownWithFIS(this.value);" style="width:100%">
	<option value="0" selected="selected">--Select--</option>
	<%
		while(fisEditItr.hasNext()){
			FacultyInstituteSchool fis = fisEditItr.next();
			%>
			<option value="<%=fis.getId() %>"><%=fis.getFisName() %></option>
			<%
		}//end while
	%>
</select>