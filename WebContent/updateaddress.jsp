<%@page import="com.empadmin.server.classes.*"%>
<%
	int addressId = Integer.parseInt(request.getParameter("addressId"));
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	String woreda = request.getParameter("woreda");
	String kebele = request.getParameter("kebele");
	String houseNumber = request.getParameter("houseNumber");
	String telephoneHouse = request.getParameter("telephoneHouse");
	String mobile = request.getParameter("mobile");
	String email = request.getParameter("email");
	Address.updateAddress(addressId,kefeleKetemaId,woreda,kebele,houseNumber,
			telephoneHouse,mobile,email);
%>
<p class="msg done">Address updated successfully!</p>