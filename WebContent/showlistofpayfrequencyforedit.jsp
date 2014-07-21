<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	List<PayFrequency> payFrequencyList = PayFrequency.getAFrequencies();
	if(!payFrequencyList.isEmpty()){
		Iterator<PayFrequency> payFrequencyItr = payFrequencyList.iterator();
		%>
			<table border="0" width="100%">
				<tr style="background:#eee;font-weight:bolder">
					<td>Ser.No</td>
					<td>Pay Frequency</td>
					<td>Edit</td>					
				</tr>
				<%
					int ctr=1;
					while(payFrequencyItr.hasNext()){
						PayFrequency payFrequency = payFrequencyItr.next();
						%>
							<tr>
								<td><%=ctr++ %></td>
								<td><%=payFrequency.getFrequencyName() %></td>
								<td>
									<a href="#.jsp" onclick="showEditFieldsOfThisPayFrequency(<%=payFrequency.getId() %>);">Edit</a>
								</td>
							</tr>
							<%
								String divId = "payFrequencyEditDiv" + payFrequency.getId();
							%>
							<tr>
								<td colspan="3">
									<div id="<%=divId%>"></div>
								</td>
							</tr>
						<%
					}//end while loop
				%>
			</table>
		<%
	}else{
		%>
			<p class="msg warning">There is no pay frequency information saved in the database!</p>
		<%
	}
%>	
<script type="text/javascript">
	function showEditFieldsOfThisPayFrequency(payFrequencyId){
		var divId = "payFrequencyEditDiv" + payFrequencyId;
		$('#'+divId).load('showeditfieldsofthispayfrequency.jsp?payFrequencyId='+payFrequencyId);
	}
</script>