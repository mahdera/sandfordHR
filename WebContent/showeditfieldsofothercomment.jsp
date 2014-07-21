<%@page import="com.empadmin.server.classes.*" %>
<%
	long commentId = Long.parseLong(request.getParameter("commentId"));
	OtherComment oComment = OtherComment.getOtherComment(commentId);
%>
<form>
	<fieldset>
		<legend>8. Edit Other Comments</legend>
		<table border="1" width="100%">
			<tr>
				<td><textarea name="textareaeditothercomment"
						id="textareaeditothercomment" cols="100%" rows="3" style="width: 99%"><%=oComment.getComment() %></textarea>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="Update" class="input-submit"
					onclick="updateOtherComment(<%=commentId%>,document.getElementById('textareaeditothercomment').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>