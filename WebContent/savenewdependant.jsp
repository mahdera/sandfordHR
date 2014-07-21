<%@page import="com.empadmin.server.classes.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
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
	Dependant d = new Dependant(firstName,fatherName,grandFatherName,city,kefeleKetemaId,
			woreda,kebele,houseNumber,mobile,empRecId,relation);
	d.addDependant();
%>
<p class="msg done">New dependent saved successfully!</p>

