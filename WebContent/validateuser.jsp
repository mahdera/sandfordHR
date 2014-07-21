<%@page import="com.empadmin.server.classes.Account"%>

<%
            String username = request.getParameter("txtusername");
            String password = request.getParameter("txtpassword");
                        
            System.out.println("inside validateuser.jsp");
            Account account = Account.getAccount(username, password);
            
            
            if (account != null){            	
                session.setMaxInactiveInterval(3600);                               
                session.setAttribute("account",account);  
                session.setAttribute("langId",0);                
                %>
                		<script type="text/javascript">
	                		document.location.href = "userhome.jsp";
	                </script>
                <%
            }else{
%>
                <jsp:forward page="index.jsp">
                    <jsp:param name="msg" value="<font color='red'><strong>Wrong username or password!<br/>Try again...</strong></font>"/>
                </jsp:forward>
<%
            }
%>