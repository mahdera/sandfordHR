<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form>
	<fieldset>
		<legend>9. Add New Address</legend>
		<table border="1" width="100%">
			<tr>
				<td>				
				Kefele Ketema:<font color="red">* </font><br /> <%
 	List<KefeleKetema> kEditList = KefeleKetema.getAllKefeleKetemas();
 	Iterator<KefeleKetema> kEditItr = kEditList.iterator();
 	out.print("<select name='slctnewkefeleketema' id='slctnewkefeleketema' style='width:100%'>"); 
 	out.print("<option value=''>--Select--</option>");
 	while (kEditItr.hasNext()) {
 		KefeleKetema k = kEditItr.next();
 %>
					<option value="<%=k.getId()%>"><%=k.getKefeleKetema()%></option>
					<%
						}//end while loop
						out.print("</select>");
					%>
				</td>
				<td>Woreda:<br /> <input type="text" name="txtnewworda"
					id="txtnewworda" /></td>
				<td>Kebele:<br /> <input type="text" name="txtnewkebele"
					id="txtnewkebele" /></td>
			</tr>
			<tr>
				<td>House Number:<br /> <input type="text"
					name="txtnewhousenumber" id="txtnewhousenumber" /></td>
				<td>Telephone House:<br /> <input type="text"
					name="txtnewtelephonehouse" id="txtnewtelephonehouse" /></td>
				<td>Telephone Mobile:<br /> <input type="text"
					name="txtnewtelephonemobile" id="txtnewtelephonemobile" /></td>
			</tr>
			<tr>
				<td>Email:<br /> <input type="text" name="txtnewemail"
					id="txtnewemail" /></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="Save" class="input-submit"
					onclick="saveNewAddress(<%=empRecId%>,document.getElementById('slctnewkefeleketema').value,
					document.getElementById('txtnewworda').value,
					document.getElementById('txtnewkebele').value,
					document.getElementById('txtnewhousenumber').value,
					document.getElementById('txtnewtelephonehouse').value,
					document.getElementById('txtnewtelephonemobile').value,
					document.getElementById('txtnewemail').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>