<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form>
	<div id="errorMsgDiv"></div>
	<table border="0" width="100%">
		<tr>
			<td>Language:</td>
			<td>
				<input type="text" name="txtlanguage" id="txtlanguage"/>
			</td>
		</tr>		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Save" class="input-submit" onclick="saveLanguage(document.getElementById('txtlanguage').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>