<%@page import="com.empadmin.server.classes.*" %>
<%
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	KefeleKetema kObj = KefeleKetema.getKefeleKetema(kefeleKetemaId);		
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Kefele Ketema</td>
		<td>
			<input type="text" name="txteditkefeleketema" id="txteditkefeleketema" value="<%=kObj.getKefeleKetema() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateKefeleKetema(<%=kObj.getId() %>, document.getElementById('txteditkefeleketema').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>