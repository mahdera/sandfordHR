<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*"%>
<%
	int langId = Integer.parseInt(request.getParameter("langId"));
	String language = request.getParameter("language");
	Language.updateLanguage(langId,language);
%>
<%@include file="showlistoflanguagesforedit.jsp"%>
<p class="msg done">Language updated successfully!</p>