<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<PayGrade> payGradeList = PayGrade.getAllPayGrades();
	if(!payGradeList.isEmpty()){
		Iterator<PayGrade> payGradeItr = payGradeList.iterator();
		%>
			<table border="0" width="100%">
				<tr style="background:#eee;font-weight:bolder;">
					<td>Ser.No.</td>
					<td>Code</td>
					<td>Name</td>
					<td>Minimum Salary</td>
					<td>Maximum Salary</td>
					<td>Step Increase</td>
					<td>Delete</td>					
				</tr>
				<%
					int ctr=1;
					while(payGradeItr.hasNext()){
						PayGrade payGrade = payGradeItr.next();
						%>
							<tr>
								<td><%=ctr++ %></td>
								<td><%=payGrade.getCode() %></td>
								<td><%=payGrade.getName() %></td>
								<td><%=payGrade.getMinimumSalary() %></td>
								<td><%=payGrade.getMaximumSalary() %></td>
								<td><%=payGrade.getStepIncrease() %></td>
								<td>
									<a href="#.jsp" onclick="deleteThisPayGrade(<%=payGrade.getId() %>);">Delete</a>
								</td>
							</tr>							
						<%
					}//end while loop
				%>
			</table>
		<%
	}else{
		%>
			<p class="msg warning">There is no pay grade information saved in the database!</p>
		<%
	}
%>
<script type="text/javascript">
	function deleteThisPayGrade(payGradeId){
		if(window.confirm('Are you sure you want to delete this pay grade record?')){
			var dataString = "payGradeId="+payGradeId;
			$.ajax({
			    url: 'deletepaygrade.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		$('#subTabDetailDiv').load('showlistofpaygradefordelete.jsp');			
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}//end confirmation if condition		
	}
</script>