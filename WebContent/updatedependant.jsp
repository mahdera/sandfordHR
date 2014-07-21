<%@page import="com.empadmin.server.classes.*" %>
<%
	long depId = Long.parseLong(request.getParameter("depId"));
	String firstName = request.getParameter("firstName");
	String fatherName = request.getParameter("fatherName");
	String grandFatherName = request.getParameter("grandFatherName");
	String city = request.getParameter("city");
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	String woreda = request.getParameter("woreda");
	String kebele = request.getParameter("kebele");
	String houseNumber = request.getParameter("houseNumber");
	String mobile = request.getParameter("mobile");
	String relation = request.getParameter("relation");
	
	Dependant.updateDependant(depId,firstName,fatherName,grandFatherName,city,
			kefeleKetemaId,woreda,kebele,houseNumber,mobile,relation);	
%>
<p class="msg done">Dependent updated successfully!</p>