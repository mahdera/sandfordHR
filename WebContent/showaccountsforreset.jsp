<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	
	if(account.getMemberType().equals("Administrator")){
%>
<%
	List<Account> accountList = Account.getAllAccounts();
	Iterator<Account> accountItr = accountList.iterator();
	out.print("<table width='100%'>");
		out.print("<tr>");
			out.print("<th>Ser.No</th>");
			out.print("<th>User Fullname</th>");
			out.print("<th>Account created on</th>");
			out.print("<th>Member Type</th>");
			out.print("<th>Username</th>");
			out.print("<th>Reset</th>");
		out.print("</tr>");
		int ctr = 1;
		while(accountItr.hasNext()){
			Account acct = accountItr.next();
			out.print("<tr>");
				out.print("<td>");
					out.print(ctr);
				out.print("</td>");
				out.print("<td>");
					User userObj = User.getUser(acct.getUserId());
					//Employee empObj = Employee.getEmployee(acct.getEmpId());
					out.print(userObj.getFullName());
				out.print("</td>");
				out.print("<td>");
					out.print(acct.getAccountCreationDate());
				out.print("</td>");
				out.print("<td>");
					out.print(acct.getMemberType());
				out.print("</td>");
				out.print("<td>");
					out.print(acct.getUsername());
				out.print("</td>");
				out.print("<td>");
					%>
						<a href="#.jsp" onclick="showResetFormForThisAccount(<%=acct.getAccountId()%>);"><img src="design/reset.gif" border="0"/></a>
					<%
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
<div id="accountResetDiv"></div>