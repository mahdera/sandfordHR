<%@page import="com.empadmin.server.classes.*"%>
<%
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	String kKetema = request.getParameter("kefeleKetema");
	
	KefeleKetema.updateKefeleKetema(kefeleKetemaId,kKetema);			
%>
<%@include file="showlistofkefeleketemasforedit.jsp" %>
<p class="msg done">Kefele Ketema updated successfully!</p>