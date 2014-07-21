<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId")); 	
%>
<form style="background:#eeeeee">
<div align="right">	
		<a href="#.jsp" onclick="insertNewExperienceCriteria(document.getElementById('experienceCriteriaGrid'));">
			[Add Row]
		</a>
		 | 
		<a href="#.jsp" onclick="removeExperienceCriteriaRow(document.getElementById('experienceCriteriaGrid'));">
			[Remove Row]
		</a>	
</div>
<table border="0" width="100%" id="experienceCriteriaGrid">
	<thead>								
		<tr>								
			<th style="background:#cccccc;color:black;">Minimum Number of Experience Year</th>
			<th style="background:#cccccc;color:black;">Point</th>									
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<input type="text" name="txtminimumnumberofyear1" id="txtminimumnumberofyear1"/>
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
			<input type="button" value="Save" class="input-submit" onclick="saveExperienceCriteria(<%=vacancyId%>,
			document.getElementById('experienceCriteriaGrid'));"/>
			<input type="reset" value="Clear All" class="input-submit"/>
		</td>
	</tr>
</table>
</form>