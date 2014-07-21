<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isReadable()){
%>
<%	
	List<KefeleKetema> kefeleKetemaList = KefeleKetema.getAllKefeleKetemas();
	Iterator<KefeleKetema> kefeleKetemaItr = kefeleKetemaList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Kefele Ketemas</caption>");
	out.print("<th>Ser.No</th>");
	out.print("<th>Kefele Ketema</th>");
	int ctr = 1;
	while(kefeleKetemaItr.hasNext()){
		KefeleKetema k = kefeleKetemaItr.next();
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(k.getKefeleKetema());
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");	
%>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>
