<%@page import="com.empadmin.server.classes.*"%>
<%
	long departingEmployeeCheckoutFormId = Long.parseLong(request.getParameter("departingEmployeeCheckoutFormId"));
	DepartingEmployeeCheckoutForm.delete(departingEmployeeCheckoutFormId);
%>
<p class="msg done">Departing employee checkout form successfully!</p>