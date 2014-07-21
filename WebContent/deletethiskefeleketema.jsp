<%@page import="com.empadmin.server.classes.*" %>
<%
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	KefeleKetema.deleteKefeleKetema(kefeleKetemaId);	
%>
<%@include file="showlistofkefeleketemasfordelete.jsp" %>
<p class="msg done">Kefele Ketema deleted successfully!</p>

