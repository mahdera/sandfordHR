<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<PermitAlertLookup> permitAlertLookupList = PermitAlertLookup.getAllPermitAlertLookups();
	Iterator<PermitAlertLookup> permitAlertLookupItr = permitAlertLookupList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder;">
		<td>Alert Before (X-months): Work Permit</td>
		<td>Alert Before (X-months): Residence Permit</td>
		<td>Alert Before (X-months): Passport Expire</td>
		<td>Edit</td>
	</tr>
	<%
		while(permitAlertLookupItr.hasNext()){
			PermitAlertLookup permitAlertLookup = permitAlertLookupItr.next();
			%>
			<tr>
				<td><%=permitAlertLookup.getWorkPermitPeriod() %></td>
				<td><%=permitAlertLookup.getResidencePermitPeriod() %></td>
				<td><%=permitAlertLookup.getPassportExpiryPeriod() %></td>
				<td>
					<a href="#.jsp" onclick="showEditFieldsOfThisPermitAlert(<%=permitAlertLookup.getId() %>);">Edit</a>
					|
					<a href="#.jsp" onclick="hideEditFieldsOfThisPermitAlert(<%=permitAlertLookup.getId() %>);">Hide</a>
				</td>
			</tr>
			<%
				String divId = "permitEditDiv" + permitAlertLookup.getId();
			%>
			<tr>
				<td colspan="4">
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showEditFieldsOfThisPermitAlert(permitAlertId){
		var divId = "permitEditDiv" + permitAlertId;
		$('#'+divId).load('showeditfieldsofthispermitalert.jsp?permitAlertId='+permitAlertId);
	}
	
	function hideEditFieldsOfThisPermitAlert(permitAlertId){
		var divId = "permitEditDiv" + permitAlertId;
		$('#'+divId).html('');
	}
</script>