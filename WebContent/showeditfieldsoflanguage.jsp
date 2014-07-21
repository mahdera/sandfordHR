<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*"%>
<%
	int langId = Integer.parseInt(request.getParameter("langId"));
	Language lang = Language.getLanguage(langId);
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Language:</td>
			<td>
				<input type="text" name="txteditlanguage" id="txteditlanguage" value="<%=lang.getLanguage() %>"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Update" class="input-submit" onclick="updateLanguage(<%=langId%>,document.getElementById('txteditlanguage').value);"/>
				<input type="reset" value="Reset to default values" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>