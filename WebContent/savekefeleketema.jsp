<%@page import="com.empadmin.server.classes.*" %>
<%
	String kefeleKetema = request.getParameter("kefeleKetema");
	KefeleKetema k = new KefeleKetema(kefeleKetema);
	k.addKefeleKetema();		
%>
<p class="msg done">Kefele Ketema saved successfully!</p>