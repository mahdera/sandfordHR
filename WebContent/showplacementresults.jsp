<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<table border="0" width="100%">
	<tr>
		<th>Select Vacancy</th>
		<th>Vacancy Dropdown</th>		
	</tr>
	<tr>
		<td>Please select the vacancy:</td>
		<td>
			<select name="slctvacancy" id="slctvacancy" onchange="showPlacedEmployeeForVacancy(this.value);" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Vacancy> vacancyList = Vacancy.getAllVacanciesWithStatus("set");
					Iterator<Vacancy> vacancyItr = vacancyList.iterator();
					while(vacancyItr.hasNext()){
						Vacancy v = vacancyItr.next();
						%>
						<option value="<%=v.getId()%>"><%=v.getVacancyName() %> : posted on: <%=v.getDatePosted() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>
</table>
<div id="showEmployeePlacementDetailDiv"></div>