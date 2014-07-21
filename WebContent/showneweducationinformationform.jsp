<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form style="background:#eeeeee">
	<fieldset>
		<legend>3. Education Information</legend>
		<table border="1" width="100%" id="educationGrid">
			<thead>
				<tr>
					<th style="background: #cccccc; color: black;">Name of Institution</th>
					<th style="background: #cccccc; color: black;">Field of Study</th>
					<th style="background:#cccccc;color:black;" width="">Education Level</th>	
					<th style="background:#cccccc;color:black;" width="">Date of Award</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text"
						name="txtnewnameofinstitution" id="txtnewnameofinstitution"/></td>
					<td>
						<%
							List<FieldOfStudy> newFList = FieldOfStudy.getAllFieldOfStudies();
							Iterator<FieldOfStudy> newFItr = newFList.iterator();
							out.print("<select name='slctnewfieldofstudy' id='slctnewfieldofstudy' style='width:100%'>");
							out.print("<option value='' selected='selected'>--Select--</option>");
							while (newFItr.hasNext()) {
								FieldOfStudy f = newFItr.next();
						%>
						<option value="<%=f.getId()%>"><%=f.getFieldOfStudy()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
					</td>
					<td width=""><input type="text" name="txtneweducationlevel"
						id="txtneweducationlevel" /></td>
					<td width=""><input type="text" name="txtnewdateofaward"
						id="txtnewdateofaward" /> <img src="sample/images/cal.gif"
						onclick="javascript:NewCssCal('txtnewdateofaward')" /></td>
				</tr>
				<tr>
					<td colspan="4" align="right"><input type="button"
						value="Save Education Info" class="input-submit"
						onclick="saveNewEducationInformation(<%=empRecId%>,document.getElementById('txtnewnameofinstitution').value,
				document.getElementById('slctnewfieldofstudy').value,document.getElementById('txtneweducationlevel').value,
				document.getElementById('txtnewdateofaward').value);" />
						<input type="reset" value="Clear" class="input-submit" /></td>
				</tr>
			</tbody>
		</table>
	</fieldset>
</form>