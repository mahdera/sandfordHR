<%
	long empId = Long.parseLong(request.getParameter("employeeId"));
%>
<div>
	<form method="post" enctype="multipart/form-data" action="uploademployeephoto.jsp">
	<table border="0" width="100%">
		<tr>
			<td>Enter Employee Photo:</td>
			<td>
				<input type="file" name="fleemployeephoto" id="fleemployeephoto"/>
				<input type="hidden" name="hiddenempid" id="hiddenempid" value="<%=empId %>"/> 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="Upload Photo"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>