<%@page import="com.empadmin.server.classes.*" %>
<%
	int langId = Integer.parseInt(request.getParameter("langId"));
	Language.deleteLanguage(langId);
	//now delete all related records from language setting table
	//LanguageSetting.deleteLanguageSettingForLanguage(langId);
%>
<%@include file="showlistoflanguagesfordelete.jsp" %>
<p class="msg done">Language deleted successfully!</p>