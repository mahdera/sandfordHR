<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long depId = Long.parseLong(request.getParameter("depId"));
	Dependant dep = Dependant.getDependant(depId);
%>
<form>
	<fieldset>
		<legend>10. Edit Dependent</legend>
		<table border="1" width="100%">
			<tr>
				<td>
					First Name:<br/>
					<input type="text" name="txteditdependantfirstname" id="txteditdependantfirstname"
					value="<%=dep.getFirstName() %>"/>
				</td>
				<td>
					Father Name:<br/>
					<input type="text" name="txteditdependantfathername" id="txteditdependantfathername"
					value="<%=dep.getFatherName() %>"/>
				</td>
				<td>
					Grand Father Name:<br/>
					<input type="text" name="txteditdependantgrandfathername" id="txteditdependantgrandfathername"
					value="<%=dep.getGrandFatherName() %>"/>
				</td>
			</tr>
			<tr>
				<td>				
				Kefele Ketema:<font color="red">* </font><br />
				<input type="text" name="txteditdependantkefeleketema" id="txteditdependantkefeleketema"
				value="<%=KefeleKetema.getKefeleKetema(dep.getKefeleKetemaId()).getKefeleKetema() %>"/>
				<input type="hidden" name="hiddeneditdependantkefeleketemaid" id="hiddeneditdependantkefeleketemaid"
				value="<%=dep.getKefeleKetemaId() %>"/> 
				<%
 	List<KefeleKetema> kNewDepList = KefeleKetema.getAllKefeleKetemas();
 	Iterator<KefeleKetema> kNewDepItr = kNewDepList.iterator();
 	out.print("<select name='slcteditdependantkefeleketema' id='slcteditdependantkefeleketema' style='width:100%' onchange='changeExistingDependantKefeleKetema(this.value);'>"); 
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
				<td>Woreda:<br /> <input type="text" name="txteditdependantworeda"
					id="txteditdependantworeda" value="<%=dep.getWoreda() %>"/></td>
				<td>Kebele:<br /> <input type="text" name="txteditdependantkebele"
					id="txteditdependantkebele" value="<%=dep.getKebele() %>"/></td>
			</tr>
			<tr>
				<td>House Number:<br /> <input type="text"
					name="txteditdependanthousenumber" id="txteditdependanthousenumber" value="<%=dep.getHouseNumber() %>"/></td>
				<td>City:<br /> <input type="text"
					name="txteditdependantcity" id="txteditdependantcity" value="<%=dep.getCity() %>"/></td>
				<td>Telephone Mobile:<br /> <input type="text"
					name="txteditdependanttelephonemobile" id="txteditdependanttelephonemobile" value="<%=dep.getMobileNumber() %>"/></td>
			</tr>
			<tr>
				<td>Relation:<br /> <input type="text" name="txteditdependantrelation"
					id="txteditdependantrelation" value="<%=dep.getRelation() %>"/></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="Update" class="input-submit"
					onclick="updateDependant(<%=depId%>,document.getElementById('txteditdependantfirstname').value,
					document.getElementById('txteditdependantfathername').value,
					document.getElementById('txteditdependantgrandfathername').value,
					document.getElementById('txteditdependantcity').value,
					document.getElementById('hiddeneditdependantkefeleketemaid').value,
					document.getElementById('txteditdependantworeda').value,
					document.getElementById('txteditdependantkebele').value,
					document.getElementById('txteditdependanthousenumber').value,
					document.getElementById('txteditdependanttelephonemobile').value,
					document.getElementById('txteditdependantrelation').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>