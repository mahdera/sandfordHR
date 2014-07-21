<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
 	//out.print(vacancyId);
%>
<form style="background:#eeeeee">
<div align="right">	
		<a href="#.jsp" onclick="insertNewEducationLevelCriteria(document.getElementById('educationLevelCriteriaGrid'));">
			[Add Row]
		</a>
		 | 
		<a href="#.jsp" onclick="removeEducationLevelCriteria(document.getElementById('educationLevelCriteriaGrid'));">
			[Remove Row]
		</a>	
</div>
<table border="0" width="100%" id="educationLevelCriteriaGrid">
	<thead>								
		<tr>								
			<th style="background:#cccccc;color:black;">Education Level</th>
			<th style="background:#cccccc;color:black;">Point</th>									
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<select name="slcteducationlevel1" id="slcteducationlevel1" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<EducationLevel> educationLevelList = EducationLevel.getAllEducationLevels();
					Iterator<EducationLevel> educationLevelItr = educationLevelList.iterator();
					while(educationLevelItr.hasNext()){
						EducationLevel e = educationLevelItr.next();
						%>
						<option value="<%=e.getId() %>"><%=e.getEducationLevel() %></option>
						<%
					}//end while loop
				%>
				</select>
			</td>
			<td>
				<input type="text" name="txtpoint1" id="txtpoint1"/>
			</td>
		 </tr>
	</tbody>
</table>
<table border="0" width="100%">
	<tr>
		<td align="right">			
			<input type="button" value="Save" class="input-submit" onclick="saveEducationLevelCriteria(<%=vacancyId%>,
			document.getElementById('educationLevelCriteriaGrid'));"/>
			<input type="reset" value="Clear All" class="input-submit"/>
		</td>
	</tr>
</table>
</form>