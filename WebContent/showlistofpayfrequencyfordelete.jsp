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
					<td>Delete</td>					
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
									<a href="#.jsp" onclick="deleteThisPayFrequency(<%=payFrequency.getId() %>);">Delete</a>
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
	function deleteThisPayFrequency(payFrequencyId){
		if(window.confirm('Are you sure you want to delete this pay frequency?')){
			var dataString = "payFrequencyId="+payFrequencyId;
			$.ajax({
			    url: 'deletepayfrequency.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#subTabDetailDiv').load('showlistofpayfrequencyfordelete.jsp');			
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}
	}
</script>