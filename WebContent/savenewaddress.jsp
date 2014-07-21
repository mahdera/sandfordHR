<%@page import="com.empadmin.server.classes.*"%>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	String woreda = request.getParameter("woreda");
	String kebele = request.getParameter("kebele");
	String houseNumber = request.getParameter("houseNumber");
	String telephoneHouse = request.getParameter("telephoneHouse");
	String mobile = request.getParameter("mobile");
	String email = request.getParameter("email");
	Address addObj = new Address(kefeleKetemaId,woreda,kebele,houseNumber,telephoneHouse,
			mobile,email,empRecId);
	addObj.addAddress();
%>
<p class="msg done">New address saved successfully!</p>

