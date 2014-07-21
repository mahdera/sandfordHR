<%@page import="com.empadmin.server.classes.*" %>
<div>
	<fieldset>
		<legend>Register College</legend>
		<%
			Account account = (Account) session.getAttribute("account");
			String functionalityName = "collegeManagement";
			Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
			Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			if(role.isWritable()){
		%>
		<form>
		<table  border='1' width='100%'>
			<tr>
				<td align="center">College Code:</td>
				<td><input type="text" size="40" name="txtcollegecode" id="txtcollegecode" class="input-text" />
				</td>
			</tr>
			<tr>
				<td align="center">College Name:</td>
				<td><input type="text" size="40" name="txtcollegename" id="txtcollegename" class="input-text" />
				</td>
			</tr>
			<tr>
				<td align="center">College Description:</td>
				<td>
					<textarea name="textareacollegedescription" id="textareacollegedescription" cols="100" rows="5"></textarea>
				</td>
			</tr>				
			<tr>
				<td colspan="2" class="t-right">
					<input type="button" value="Save" onclick="saveCollege(document.getElementById('txtcollegecode').value,document.getElementById('txtcollegename').value,document.getElementById('textareacollegedescription').value);" class="input-submit"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div id="campusSaveDiv"></div>
				</td>
			</tr>
		</table>
		</form>		
		<%
			}else{
				out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
			}
		%>
	</fieldset>
</div>
<!-- Now comes the tabs section mahder -->
<div>	
	<!-- Tabs --> 
			<h3 class="tit">College Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showListOfColleges();"><span>View Colleges</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfCollegesForEdit();"><span>Edit College</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfCollegesForDelete();"><span>Delete College</span></a></li> 
				</ul> 
			</div> <!-- /tabs -->
			
			<h3 class="tit" style="border:1px solid #CCCCCC;">
				<%@include file="campussortbar.jsp" %>
			</h3> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the college tab for manipulating faculties</p>			
			</div>			
			
			<div class="fix"></div> 
</div>
