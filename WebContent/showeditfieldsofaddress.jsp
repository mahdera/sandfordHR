<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int addressId = Integer.parseInt(request.getParameter("addressId"));
	Address a = Address.getAddress(addressId);
%>
<form>
	<fieldset>
		<legend>9. Edit Address</legend>
		<table border="1" width="100%">
			<tr>
				<td>
				<input type="text" name="txteditkefeleketema" id="txteditkefeleketema" value="<%=KefeleKetema.getKefeleKetema(a.getKefeleKetemaId()).getKefeleKetema() %>"/><br/>
				<input type="hidden" name="hiddenkefeleketemaid" id="hiddenkefeleketemaid" value="<%=a.getKefeleKetemaId() %>"/>
				Kefele Ketema:<font color="red">* </font><br /> <%
 	List<KefeleKetema> kEditList = KefeleKetema.getAllKefeleKetemas();
 	Iterator<KefeleKetema> kEditItr = kEditList.iterator();
 	out.print("<select name='slcteditkefeleketema' id='slcteditkefeleketema' style='width:100%' onchange='changeExistingKefeleKetema(this.value);'>");
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
				<td>Woreda:<br /> <input type="text" name="txteditworda"
					id="txteditworda" value="<%=a.getWoreda() %>"/></td>
				<td>Kebele:<br /> <input type="text" name="txteditkebele"
					id="txteditkebele" value="<%=a.getKebele() %>"/></td>
			</tr>
			<tr>
				<td>House Number:<br /> <input type="text"
					name="txtedithousenumber" id="txtedithousenumber" value="<%=a.getHouseNumber() %>"/></td>
				<td>Telephone House:<br /> <input type="text"
					name="txtedittelephonehouse" id="txtedittelephonehouse" value="<%=a.getTelephoneHouse() %>"/></td>
				<td>Telephone Mobile:<br /> <input type="text"
					name="txtedittelephonemobile" id="txtedittelephonemobile" value="<%=a.getTelephoneMobile() %>"/></td>
			</tr>
			<tr>
				<td>Email:<br /> <input type="text" name="txteditemail"
					id="txteditemail" value="<%=a.getEmail() %>"/></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="Update" class="input-submit"
					onclick="upateAddress(<%=addressId%>,document.getElementById('hiddenkefeleketemaid').value,
					document.getElementById('txteditworda').value,
					document.getElementById('txteditkebele').value,
					document.getElementById('txtedithousenumber').value,
					document.getElementById('txtedittelephonehouse').value,
					document.getElementById('txtedittelephonemobile').value,
					document.getElementById('txteditemail').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>