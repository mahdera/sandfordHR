<%@page import="com.empadmin.server.classes.*"%>
<%
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	PayFrequency payFrequency = PayFrequency.getPayFrequency(payFrequencyId);
%>
<form>
	<table border="1" width="100%">
		<tr>
			<td>Pay Frequency Name:</td>
			<td><input type="text" name="txtpayfrequencyname" id="txtpayfrequencyname" value="<%=payFrequency.getFrequencyName() %>"/></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" onclick="updatePayFrequency(<%=payFrequencyId %>,document.getElementById('txtpayfrequencyname').value);"/>
				<input type="reset" value="Reset to default values"/>
			</td>
		</tr>
	</table>
</form>