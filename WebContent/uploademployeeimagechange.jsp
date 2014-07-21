<%@page import="com.empadmin.server.classes.*" %>
<%@page import="org.apache.commons.io.FilenameUtils"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%	
	long employeeId = 0;	
	String description = "";
    FileItem fileItem = null;
    File fileToSend = null;
	FileInputStream fis = null;
	String fileName = "";
	String uniqueFileName = "";	
	
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
		while(itr.hasNext()){
			FileItem item = (FileItem) itr.next();
			if (item.isFormField()) {
				String name = item.getFieldName();				
				if(name.equals("hiddenemployeeid")){					
					employeeId = Long.parseLong(item.getString());					
				}
			}else{				
				try {
					if(item != null){
						fileName = item.getName();
					}
					System.out.println("filename is : "+fileName);
					if(fileName != null){//if the user added a new picture						
						EmployeePhoto employeePhoto = EmployeePhoto.getEmployeePhotoForEmployee(employeeId);						
						File savedFile = new File(config.getServletContext().getRealPath("/") + "/employee_photo/" + employeePhoto.getFileName());						
						item.write(savedFile);
						fis = new FileInputStream(savedFile);						
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			}			
		}//end while loop
		
		//now save the object to the database...
		Account account = (Account) session.getAttribute("account");
		int modifiedBy = account.getUserId();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		String currentDate = dateFormat.format(cal.getTime());
		Date modificationDate = Date.valueOf(currentDate);		
		EmployeePhoto employeePhoto = EmployeePhoto.getEmployeePhotoForEmployee(employeeId);
		employeePhoto.setEmployeeId(employeeId);
		employeePhoto.setModifiedBy(modifiedBy);
		employeePhoto.setModificationDate(modificationDate);
		EmployeePhoto.update(employeePhoto);			
	}//end else
%>
<p class="msg done">Employee photo updated successfully!</p>