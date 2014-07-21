<%@page import="com.empadmin.server.classes.*"%>
<%
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveTypeId"));
	LeaveType leaveType = LeaveType.getLeaveType(leaveTypeId);
	//define the control names in here...
	String abbrivationControlName = "txtabbr" + leaveTypeId;
	String leaveTypeNameControlName = "txtleavetypename" + leaveTypeId;
	String descriptionControlName = "textareadescription" + leaveTypeId;
%>
<form>	
	<table border="1" width="100%">
		<tr>
			<td width="20%"><font color="red">*</font> Leave Type Abbrivation:</td>
			<td>
				<input type="text" name="<%=abbrivationControlName %>" id="<%=abbrivationControlName %>" value="<%=leaveType.getLeaveTypeAbbrivation() %>"/>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font> Leave Type Name:</td>
			<td>
				<input type="text" name="<%=leaveTypeNameControlName %>" id="<%=leaveTypeNameControlName %>" value="<%=leaveType.getLeaveTypeName() %>"/>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:middle">Description:</td>
			<td>
				<textarea class="jqte-test" name="<%=descriptionControlName %>" id="<%=descriptionControlName %>" rows="3" style="width:100%"><%=leaveType.getDescription() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<p class="msg info">N.B. Fields indicated by <font color='red'>*</font> are required!</p>
			</td>
		</tr>
		<tr>			
			<td colspan="2" align="right">
				<%
					String buttonId = "btnupdate" + leaveTypeId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId %>"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<div id="errorDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		var leaveTypeId = "<%=leaveTypeId%>";
		var buttonId = "btnupdate" + leaveTypeId;
		
		$('#'+buttonId).click(function(){
			var abbrivationControlName = "txtabbr" + leaveTypeId;
			var leaveTypeNameControlName = "txtleavetypename" + leaveTypeId;
			var descriptionControlName = "textareadescription" + leaveTypeId;
			var abbr = $('#'+abbrivationControlName).val();
			var leaveTypeName = $('#'+leaveTypeNameControlName).val();
			var description = $('#'+descriptionControlName).val();
			
			if(abbr != "" && leaveTypeName != ""){
				var dataString = "abbr="+abbr+"&leaveTypeName="+leaveTypeName+"&description="+description+
				"&leaveTypeId="+leaveTypeId;
				$.ajax({
				    url: 'updateleavetype.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		var divId = "leaveTypeEditDiv" + leaveTypeId;
				    		$('#'+divId).html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fileds!</p>");
			}
		});
	});//end document.ready function
</script>