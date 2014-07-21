<%
	int howMany = Integer.parseInt(request.getParameter("howMany"));
	for(int i=1;i<=howMany;i++){
		int idCtr = i+1;
		String fromMonthYear = "txtfrommonthyear" + idCtr;
		String toMonthYear = "txttomonthyear" + idCtr;
		String startingSalary = "txtstartingsalary" + idCtr;
		String finalSalary = "txtfinalsalary" + idCtr;
		String exactTitleOfPost = "textareaexacttitleofpost" + idCtr;
		String nameOfEmployer = "txtnameofemployer" + idCtr;
		String typeOfBusiness = "txttypeofbusiness" + idCtr;
		String addressOfEmployer = "textareaaddressofemployer" + idCtr;
		String nameOfSupervisor = "txtnameofsupervisor" + idCtr;
		String reasonForLeaving = "textareareasonforleaving" + idCtr;
		%>
			<table border="1" width="100%">
			<tr>
				<td>FROM</td>
				<td>TO</td>
				<td colspan="2">SALARY PER ANNUM</td>
				<td>EXACT TITLE OF YOUR POST</td>
			</tr>							
			<tr>
				<td>Month/Year<br/><input type="text" style="width:98%" name="<%=fromMonthYear %>" id="<%=fromMonthYear %>"/></td>
				<td>Month/Year<br/><input type="text" style="width:98%" name="<%=toMonthYear %>" id="<%=toMonthYear %>"/></td>
				<td>
					Starting<br/>
					<input type="text" style="width:98%" name="<%=startingSalary %>" id="<%=startingSalary %>"/>
				</td>
				<td>
					Final<br/>
					<input type="text" style="width:98%" name="<%=finalSalary %>" id="<%=finalSalary %>"/>
				</td>
				<td>
					<br/>
					<textarea cols="10" rows="3" style="width:100%" name="<%=exactTitleOfPost %>" id="<%=exactTitleOfPost %>"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					NAME OF EMPLOYER:<br/>
					<input type="text" style="width:98%" name="<%=nameOfEmployer %>" id="<%=nameOfEmployer %>"/>
				</td>
				<td colspan="3">
					TYPE OF BUSINESS:<br/>
					<input type="text" style="width:98%" name="<%=typeOfBusiness %>" id="<%=typeOfBusiness %>"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					ADDRESS OF EMPLOYER:<br/>
					<textarea cols="10" rows="3" style="width:100%" name="<%=addressOfEmployer %>" id="<%=addressOfEmployer %>"></textarea>
				</td>
				<td colspan="2">
					NAME OF SUPERVISOR:<br/>
					<input type="text" style="width:98%" name="<%=nameOfSupervisor %>" id="<%=nameOfSupervisor %>"/>
				</td>
			</tr>
			<tr>
				<td colspan="5">
					REASON FOR LEAVING:<br/>
					<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="<%=reasonForLeaving %>" id="<%=reasonForLeaving %>"></textarea>
				</td>
			</tr>
		</table>	
		<%
	}//end for loop
%>