<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
 	//out.print(vacancyId);
%>
<form style="background:#eeeeee">
<div align="right">	
		<a href="#.jsp" onclick="insertNewFieldOfStudyCriteria(document.getElementById('fieldOfStudyCriteriaGrid'));">
			[Add Row]
		</a>
		 | 
		<a href="#.jsp" onclick="removeFieldOfStudyCriteria(document.getElementById('fieldOfStudyCriteriaGrid'));">
			[Remove Row]
		</a>	
</div>
<table border="0" width="100%" id="fieldOfStudyCriteriaGrid">
	<thead>								
		<tr>								
			<th style="background:#cccccc;color:black;">Field of Study</th>
			<th style="background:#cccccc;color:black;">Point</th>									
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<select name="slctfieldofstudy1" id="slctfieldofstudy1" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<FieldOfStudy> fList = FieldOfStudy.getAllFieldOfStudies();
					Iterator<FieldOfStudy> fItr = fList.iterator();
					while(fItr.hasNext()){
						FieldOfStudy f = fItr.next();
						%>
						<option value="<%=f.getId() %>"><%=f.getFieldOfStudy() %></option>
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
			<input type="button" value="Save" class="input-submit" onclick="saveFieldOfStudyCriteria(<%=vacancyId%>,
			document.getElementById('fieldOfStudyCriteriaGrid'));"/>
			<input type="reset" value="Clear All" class="input-submit"/>
		</td>
	</tr>
</table>
</form>