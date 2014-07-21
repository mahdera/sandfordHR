<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	//out.print(collegeId);

List<FacultyInstituteSchool> fisNewList = FacultyInstituteSchool.getAllFacultyInstituteSchoolsFoundInThisCollege(collegeId);
	Iterator<FacultyInstituteSchool> fisNewItr = fisNewList.iterator();	
%>
<select name="slctnewfis" id="slctnewfis" onchange="populateNewDepartmentDropdownWithFIS(this.value);" style="width:100%">
	<option value="0" selected="selected">--Select--</option>
	<%
		while(fisNewItr.hasNext()){
			FacultyInstituteSchool fis = fisNewItr.next();
			%>
			<option value="<%=fis.getId() %>"><%=fis.getFisName() %></option>
			<%
		}//end while
	%>
</select>