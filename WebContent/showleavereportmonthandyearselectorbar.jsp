<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	StringTokenizer token = new StringTokenizer(currentDate,"-");
	String strYear = token.nextToken();	
	int year = Integer.parseInt(strYear);
%>
<form>
	<table border="0" width="100%">
		<tr style="background:#eee">
			<td>
				Select the Year:<br/>
				<select name="slctyear" id="slctyear" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%						
						int stopYear = year - 5;
						for(int i=year;i>=stopYear;i--){
							%>
								<option value="<%=i%>"><%=i %></option>
							<%
						}//end for...loop
					%>
				</select>
			</td>
			<td>
				Select the Month:<br/>
				<select name="slctmonth" id="slctmonth" style="width:100%">
						<option value="" selected="selected">--Select--</option>
						<option value="1">January</option>
						<option value="2">February</option>
						<option value="3">March</option>
						<option value="4">April</option>
						<option value="5">May</option>
						<option value="6">June</option>
						<option value="7">July</option>
						<option value="8">August</option>
						<option value="9">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>
					</select>
			</td>
			<td>
				<br/>
				<input type="button" value="Show" id="btnshow"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="loadingDiv" style="display:none">
	<img src="images/loadingfb.gif" alt="Loading..."/>
</div>
<div id="leaveReportDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnshow').click(function(){
			var year = $('#slctyear').val();
			var month = $('#slctmonth').val();
			
			if(year != "" && month != ""){
				$('#loadingDiv').show();
				$('#leaveReportDetailDiv').load('showallleavesduringyearandmonth.jsp?year='+year+'&month='+month);
			}
		});//end button.click function
	});//end document.ready function
</script>