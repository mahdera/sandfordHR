<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long leaveId = Long.parseLong(request.getParameter("leaveId"));
	LeaveRequest leave = LeaveRequest.getLeave(leaveId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Starting From:</td>
		<td><input type="text" name="txteditstartingfrom" id="txteditstartingfrom" value="<%=leave.getLeaveStartFrom() %>"/>
		<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditstartingfrom')" />
		</td>
	</tr>
	<tr>
		<td align="right">Up to:</td>
		<td>
			<input type="text" name="txteditupto" id="txteditupto" value="<%=leave.getLeaveEndTo() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditupto')" />
		</td>
		<td></td>
	</tr>
	<tr>
		<td align="right">Leave Type:</td>
		<td>
			<input type="text" name="txteditleavetype" id="txteditleavetype" value="<%=LeaveType.getLeaveType(leave.getLeaveTypeId()).getLeaveType() %>"/>
			<input type="hidden" name="hiddenleavetypeid" id="hiddenleavetypeid" value="<%=leave.getLeaveTypeId() %>"/>
		</td>
		<td>
			<select name="slcteditleavetype" id="slcteditleavetype" onchange="changeTheLeaveTypeForThisLeave(this.value);" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<LeaveType> leaveTypeList = LeaveType.getAllLeaveTypes();
					Iterator<LeaveType> leaveTypeItr = leaveTypeList.iterator();
					while(leaveTypeItr.hasNext()){
						LeaveType leaveType = leaveTypeItr.next();
						%>
						<option value="<%=leaveType.getId() %>"><%=leaveType.getLeaveType() %></option>
						<%
					}
				%>
			</select>
		</td>
	</tr>
	<tr>
		<td align="right">Leave From Last Leave Period:</td>
		<td><input type="text" name="txteditleavefromlastleaveperiod" id="txteditleavefromlastleaveperiod" value="<%=leave.getLeaveFromLastLeavePeriod() %>"/></td>
		<td></td>
	</tr>
	<tr>
		<td align="right">Leave Taken:</td>
		<td><input type="text" name="txteditleavetaken" id="txteditleavetaken" value="<%=leave.getLeaveTaken() %>"/></td>
		<td></td>
	</tr>
	<tr>
		<td align="right">Leave To Next Leave Period:</td>
		<td><input type="text" name="txteditleavetonextleaveperiod" id="txteditleavetonextleaveperiod" value="<%=leave.getLeaveToNextLeavePeriod() %>"/></td>
		<td></td>
	</tr>
	<tr>
		<td align="right" colspan="3">
			<input type="button" value="Update" class="input-submit" onclick="updateLeaveManagement(<%=leaveId %>,
			document.getElementById('txteditstartingfrom').value,document.getElementById('txteditupto').value,
			document.getElementById('hiddenleavetypeid').value,document.getElementById('txteditleavefromlastleaveperiod').value,
			document.getElementById('txteditleavetaken').value,document.getElementById('txteditleavetonextleaveperiod').value);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>