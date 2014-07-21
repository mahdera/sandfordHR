<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form>
	<fieldset>
		<legend>10. Add New Dependant</legend>
		<table border="1" width="100%">
			<tr>
				<td>
					First Name:<br/>
					<input type="text" name="txtnewdependantfirstname" id="txtnewdependantfirstname"/>
				</td>
				<td>
					Father Name:<br/>
					<input type="text" name="txtnewdependantfathername" id="txtnewdependantfathername"/>
				</td>
				<td>
					Grand Father Name:<br/>
					<input type="text" name="txtnewdependantgrandfathername" id="txtnewdependantgrandfathername"/>
				</td>
			</tr>
			<tr>
				<td>				
				Kefele Ketema:<font color="red">* </font><br /> <%
 	List<KefeleKetema> kNewDepList = KefeleKetema.getAllKefeleKetemas();
 	Iterator<KefeleKetema> kNewDepItr = kNewDepList.iterator();
 	out.print("<select name='slctnewdependantkefeleketema' id='slctnewdependantkefeleketema' style='width:100%'>"); 
 	out.print("<option value=''>--Select--</option>");
 	while (kNewDepItr.hasNext()) {
 		KefeleKetema k = kNewDepItr.next();
 %>
					<option value="<%=k.getId()%>"><%=k.getKefeleKetema()%></option>
					<%
						}//end while loop
						out.print("</select>");
					%>
				</td>
				<td>Woreda:<br /> <input type="text" name="txtnewdependantworeda"
					id="txtnewdependantworeda" /></td>
				<td>Kebele:<br /> <input type="text" name="txtnewdependantkebele"
					id="txtnewdependantkebele" /></td>
			</tr>
			<tr>
				<td>House Number:<br /> <input type="text"
					name="txtnewdependanthousenumber" id="txtnewdependanthousenumber" /></td>
				<td>City:<br /> <input type="text"
					name="txtnewdependantcity" id="txtnewdependantcity" /></td>
				<td>Telephone Mobile:<br /> <input type="text"
					name="txtnewdependanttelephonemobile" id="txtnewdependanttelephonemobile" /></td>
			</tr>
			<tr>
				<td>Relation:<br /> <input type="text" name="txtnewdependantrelation"
					id="txtnewdependantrelation" /></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="Save" class="input-submit"
					onclick="saveNewDependant(<%=empRecId%>,document.getElementById('txtnewdependantfirstname').value,
					document.getElementById('txtnewdependantfathername').value,
					document.getElementById('txtnewdependantgrandfathername').value,
					document.getElementById('slctnewdependantkefeleketema').value,
					document.getElementById('txtnewdependantworeda').value,
					document.getElementById('txtnewdependantkebele').value,
					document.getElementById('txtnewdependanthousenumber').value,
					document.getElementById('txtnewdependantcity').value,
					document.getElementById('txtnewdependanttelephonemobile').value,
					document.getElementById('txtnewdependantrelation').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>