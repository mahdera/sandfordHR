<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	//out.print(collegeId);

List<FacultyInstituteSchool> fisList = FacultyInstituteSchool.getAllFacultyInstituteSchoolsFoundInThisCollege(collegeId);
	Iterator<FacultyInstituteSchool> fisItr = fisList.iterator();	
%>
<select name="slctfis" id="slctfis" onchange="populateDepartmentDropdownWithFIS(this.value);" style="width:100%">
	<option value="0" selected="selected">--Select--</option>
	<%
		while(fisItr.hasNext()){
			FacultyInstituteSchool fis = fisItr.next();
			%>
			<option value="<%=fis.getId() %>"><%=fis.getFisName() %></option>
			<%
		}//end while
	%>
</select>