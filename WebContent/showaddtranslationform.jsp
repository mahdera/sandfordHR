<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<div id="errorMsgDiv"></div>
	<table border="0" width="100%">
		<tr>
			<td align="right">Language:</td>
			<td>
				<select name="slctlanguage" id="slctlanguage" style="width:100%" onchange="clearTranslatedWord();">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Language> languageList = Language.getAllLanguages();
						Iterator<Language> languageItr = languageList.iterator();
						while(languageItr.hasNext()){
							Language lang = languageItr.next();
							%>
							<option value="<%=lang.getId() %>"><%=lang.getLanguage() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>	
		<tr>
			<td align="right">Label:</td>
			<td>
				<select name="slctlabel" id="slctlabel" style="width:100%" onchange="showTheTranslatedLabelCaptionForTheSelectedLanguage(document.getElementById('slctlanguage').value,this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Label> labelList = Label.getAllLabels();
						Iterator<Label> labelItr = labelList.iterator();
						while(labelItr.hasNext()){
							Label l = labelItr.next();
							%>
							<option value="<%=l.getId() %>"><%=l.getLabelCaption() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Translated phrase in the selected language:</td>
			<td>
				<input type="text" name="txttranslatedvalue" id="txttranslatedvalue" size="70"/>
			</td>
		</tr>	
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Save" class="input-submit" onclick="saveTranslation(document.getElementById('slctlanguage').value,
						document.getElementById('slctlabel').value,document.getElementById('txttranslatedvalue').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>