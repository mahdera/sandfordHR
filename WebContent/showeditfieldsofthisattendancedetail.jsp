<%@page import="com.empadmin.server.classes.*"%>
<%
	long attDetailId = Long.parseLong(request.getParameter("attDetailId"));
	Attendance attendanceDetail = Attendance.getAttendanceDetail(attDetailId);
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td>Absent On (Start Date)</td>
			<td>
				<input type="text" name="txteditabsentonstartdate" id="txteditabsentonstartdate" value="<%=attendanceDetail.getAbsentOnStartDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditabsentonstartdate')" />
			</td>
		</tr>
		<tr>
			<td>Absent On (End Date)</td>
			<td>
				<input type="text" name="txteditabsentonenddate" id="txteditabsentonenddate" value="<%=attendanceDetail.getAbsentOnEndDate() %>"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditabsentonenddate')" />
			</td>
		</tr>
		<tr>
			<td>Reason for Absence</td>
			<td>
				<textarea name="textareaeditreason" id="textareaeditreason" cols="70" rows="4"><%=attendanceDetail.getReasonForAbsence() %></textarea>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" onclick="updateAttendanceDetail(<%=attDetailId%>,document.getElementById('txteditabsentonstartdate').value,
				document.getElementById('txteditabsentonenddate').value,document.getElementById('textareaeditreason').value);"/>
				<input type="reset" value="Reset Values"/>
			</td>
		</tr>
	</table>
</form>