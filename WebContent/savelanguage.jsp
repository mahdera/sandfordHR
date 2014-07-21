<%@page import="com.empadmin.server.classes.*"%>
<%
	String lang = request.getParameter("lang");
	Language language = new Language(lang);
	language.addLanguage();
%>
<p class="msg done">Language saved successfully!</p>