<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	List<EducationLevelCriteriaValueList> ednLevelCriteriaList = EducationLevelCriteriaValueList.getAllEducationLevelCriteriaListForVacancy(vacancyId);
	List<FieldOfStudyCriteriaValueList> fldOfStudyCriteriaList = FieldOfStudyCriteriaValueList.getAllFieldOfStudyCriteriaForVacancy(vacancyId);
	List<ExperienceCriteriaValueList> expCriteriaList = ExperienceCriteriaValueList.getAllExperienceCriteriaListForVacancy(vacancyId);
	
	Iterator<EducationLevelCriteriaValueList> ednLevelCriteriaItr = ednLevelCriteriaList.iterator();
	Iterator<FieldOfStudyCriteriaValueList> fldOfStudyCriteriaItr = fldOfStudyCriteriaList.iterator();
	Iterator<ExperienceCriteriaValueList> expCriteriaItr = expCriteriaList.iterator();	
%>
<table border="1" width="100%">
	<tr>
		<th>Criteria</th>
		<th>Requirement</th>
		<th>Point</th>
	</tr>
	<%
		while(ednLevelCriteriaItr.hasNext()){
			EducationLevelCriteriaValueList ed = ednLevelCriteriaItr.next();
			%>
			<tr>
				<td>Education Level Criteria</td>
				<td><%=EducationLevel.getEducationLevel(ed.getEducationLevelId()).getEducationLevel() %></td>
				<td><%=ed.getPoint() %></td>
			</tr>
			<%
		}//end while loop
		
		while(fldOfStudyCriteriaItr.hasNext()){
			FieldOfStudyCriteriaValueList fl = fldOfStudyCriteriaItr.next();
			%>
			<tr>
				<td>Field Of Study Criteria</td>
				<td><%=FieldOfStudy.getFieldOfStudy(fl.getFieldOfStudyId()).getFieldOfStudy() %></td>
				<td><%=fl.getPoint() %></td>
			</tr>
			<%
		}//end while loop
		
		while(expCriteriaItr.hasNext()){
			ExperienceCriteriaValueList ex = expCriteriaItr.next();
			%>
			<tr>
				<td>Experience Criteria</td>
				<td><%=ex.getMinimumExperienceYear() %></td>
				<td><%=ex.getPoint() %></td>
			</tr>
			<%
		}//end while loop
	%>
	<tr>
		<td colspan="3" align="right">
			<input type="button" value="Place Employees" class="input-submit"/ onclick="startPlacingEmployeesNowForVacancy(<%=vacancyId%>);">			
		</td>
	</tr>
</table>
<div id="placedEmployeeListDiv"></div>