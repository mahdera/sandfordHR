<%@page import="com.empadmin.server.classes.*"%>
<%@page import="org.apache.commons.io.FilenameUtils"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.Blob" %>
<%@page import="javax.sql.rowset.serial.SerialBlob" %>
<%
	long empId = 0;
	FileItem fileItem = null;
	String itemName = null;
	FileInputStream fis = null;

	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    
	if (!isMultipart){
		out.print("Form is not multipart!");		
	} else {
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List items = null;
		try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		Iterator itr = items.iterator();
		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			if (item.isFormField()) {
				String name = item.getFieldName();
				
				if(name.equals("hiddenempid")){
					empId = Long.parseLong(item.getString());
				}				
			} else {
				try {
					itemName = item.getName();
					if(itemName != ""){//if the user added a new picture					
						File savedFile = new File(config.getServletContext().getRealPath("/")
								+ "/employee_profile_photo/" + itemName);						
						item.write(savedFile);
						fis = new FileInputStream(savedFile);
						System.out.println(fis);
						System.out.println("location is : "+savedFile.getAbsolutePath());
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		}//end while loop
			long patientPhotoId = 0;
			if(itemName != ""){
				EmployeePhoto employeePhoto = new EmployeePhoto(fis,empId);
				employeePhoto.addEmployeePhoto();				
			}
	}//end big else condition
%>
<%@include file="userhome.jsp"%>