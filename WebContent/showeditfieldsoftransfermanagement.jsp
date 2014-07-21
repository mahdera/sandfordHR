<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long promotionId = Long.parseLong(request.getParameter("promotionId"));
	//out.print(benefitManagementId);
	//Promotion promotion = Promotion.getPromotion(promotionId);
	Transfer promotion = Transfer.getTransfer(promotionId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Transfered From Division:</td>
		<td>
			<input type="text" name="txteditpromotedfromdivision" id="txteditpromotedfromdivision" value="<%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getTransferedFromDivisionId()).getFisName() %>"/>
			<input type="hidden" name="hiddenfromdivisionid" id="hiddenfromdivisionid" value="<%=promotion.getTransferedFromDivisionId() %>"/>
 			<select name="slcteidtpromotedfromdivisionid" id="slcteditpromotedfromdivisionid" onchange="showEditFromDivision(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
						List<FacultyInstituteSchool> facultyList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
						Iterator<FacultyInstituteSchool> facultyItr = facultyList.iterator();
						while(facultyItr.hasNext()){
							FacultyInstituteSchool fac = facultyItr.next();
							%>
							<option value="<%=fac.getId() %>"><%=fac.getFisName() %></option>
							<%
						}//end while loop
					%>
				</select>
		</td>
	</tr>
	<tr>
		<td align="right">Transfered To Division:</td>
		<td>
			<input type="text" name="txteditpromotedtodivision" id="txteditpromotedtodivision" value="<%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getTransferedToDivisionId()).getFisName() %>"/>
			<input type="hidden" name="hiddenpromotedtodivisionid" id="hiddenpromotedtodivisionid" value="<%=promotion.getTransferedToDivisionId() %>"/>
			<select name="slcteditpromotedtodivisionid" id="slcteditpromotedtodivisionid" onchange="showEditToDivision(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
					List<FacultyInstituteSchool> facultyToList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
					Iterator<FacultyInstituteSchool> facultyToItr = facultyToList.iterator();
					while(facultyToItr.hasNext()){
						FacultyInstituteSchool fac = facultyToItr.next();
						%>
						<option value="<%=fac.getId() %>"><%=fac.getFisName() %></option>
						<%
					}//end while loop
					%>
				</select>
		</td>
	</tr>
	<tr>
		<td align="right">Transfered From Department:</td>
		<td>
			<input type="text" name="txteditpromotedfromdepartment" id="txteditpromotedfromdepartment" value="<%=Department.getDepartment(promotion.getTransferedFromDepartmentId()).getDepartmentName() %>"/>
			<input type="hidden" name="hiddenpromotedfromdepartmentid" id="hiddenpromotedfromdepartmentid" value="<%=promotion.getTransferedFromDepartmentId() %>"/>
			<select name="slcteditpromotedfromdepartmentid" id="slcteditpromotedfromdepartmentid" onchange="showEditFromDepartment(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentFromList = Department.getAllDepartments();
					Iterator<Department> departmentFromItr = departmentFromList.iterator();
					while(departmentFromItr.hasNext()){
						Department dept = departmentFromItr.next();
						%>
						<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
					}//end while loop
					%>
				</select>
		</td>
	</tr>
	<tr>
		<td align="right">Transfered To Department:</td>
		<td>
			<input type="text" name="txteditpromotedtodepartment" id="txteditpromotedtodepartment" value="<%=Department.getDepartment(promotion.getTransferedToDepartmentId()).getDepartmentName() %>"/>
			<input type="hidden" name="hiddenpromotedtodepartmentid" id="hiddenpromotedtodepartmentid" value="<%=promotion.getTransferedToDepartmentId() %>"/>
			<select name="slcteditpromotedtodepartmentid" id="slcteditpromotedtodepartmentid" onchange="showEditToDepartment(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentToList = Department.getAllDepartments();
					Iterator<Department> departmentToItr = departmentToList.iterator();
					while(departmentToItr.hasNext()){
						Department dept = departmentToItr.next();
						%>
						<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
					}//end while loop
					%>
				</select>
		</td>
	</tr>
	<tr>
		<td align="right">Transfer Detail:</td>
		<td>
			<textarea name="textareaeditpromotiondetail" id="textareaeditpromotiondetail" cols="50" rows="4"><%=promotion.getTransferDetail() %></textarea>
		</td>
	</tr>
	<tr>
		<td align="right">Transfer Date:</td>
		<td>
			<input type="text" name="txteditpromotiondate" id="txteditpromotiondate" value="<%=promotion.getTransferDate() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditpromotiondate')" />
		</td>
	</tr>	
	<tr>
		<td></td>
		<td align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateTransferManagement(<%=promotionId %>,
			document.getElementById('hiddenpromotedfromdivisionid').value,document.getElementById('hiddenpromotedtodivisionid').value,
			document.getElementById('hiddenpromotedfromdepartmentid').value,document.getElementById('hiddenpromotedtodepartmentid').value,
			document.getElementById('textareaeditpromotiondetail').value,document.getElementById('txteditpromotiondate').value);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>