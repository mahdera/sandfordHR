<%@page import="com.empadmin.server.classes.*" %>
<%
	int religionId = Integer.parseInt(request.getParameter("religionId"));
	Religion r = Religion.getReligion(religionId);			
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Religion:</td>
		<td>
			<input type="text" name="txteditreligion" id="txteditreligion" value="<%=r.getReligion() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateReligion(<%=r.getId() %>, document.getElementById('txteditreligion').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>