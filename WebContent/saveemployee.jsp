<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%
	int educationRowVal = Integer.parseInt(request.getParameter("educationRowVal"));
	int experienceRowVal = Integer.parseInt(request.getParameter("experienceRowVal"));
	int trainingRowVal = Integer.parseInt(request.getParameter("trainingRowVal"));

	String firstName = request.getParameter("firstName");
	String fatherName = request.getParameter("fatherName");
	String grandFatherName = request.getParameter("grandFatherName");
	String sex = request.getParameter("sex");
	Date dateOfBirth = Date.valueOf(request.getParameter("dateOfBirth"));
	String idNumber = request.getParameter("idNumber");
	String pensionNumber = request.getParameter("pensionNumber");
	Date employementDate = Date.valueOf(request.getParameter("employementDate"));
	int religionId = Integer.parseInt(request.getParameter("religionId"));
	String nationality = request.getParameter("nationality");
	int maritalStatusId = Integer.parseInt(request.getParameter("maritalStatusId"));
	String spouseFullName = request.getParameter("spouseFullName");
	float basicSalary = Float.parseFloat(request.getParameter("basicSalary"));
	int employeeTypeId = Integer.parseInt(request.getParameter("employeeTypeId"));
	String employeePosition = request.getParameter("employeePosition");
	int fStudyId = Integer.parseInt(request.getParameter("fStudyId"));
	int budgetCenter = Integer.parseInt(request.getParameter("budgetCenter"));
	int employementTypeId = Integer.parseInt(request.getParameter("employementTypeId"));
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));	
	
	int kefeleKetemaId = Integer.parseInt(request.getParameter("kefeleKetemaId"));
	String woreda = request.getParameter("woreda");
	String kebele = request.getParameter("kebele");
	String houseNumber = request.getParameter("houseNumber");
	String telephoneHouse = request.getParameter("telephoneHouse");
	String telephoneMobile = request.getParameter("telephoneMobile");
	String email = request.getParameter("email");
	//check if the values are passed accordingly...
	/*out.print(firstName+":"+fatherName+":"+grandFatherName+":"+sex+":"+dateOfBirth+":"+idNumber+":"+pensionNumber+":"+employementDate+":"+
			religionId+":"+nationality+":"+maritalStatusId+":"+spouseFullName+":"+basicSalary+":"+employeeTypeId+":"+employeePosition+":"+
			fStudyId+":"+budgetCenter+":"+employementTypeId+":"+collegeId+":"+fisId+":"+departmentId+":"+
			+evaluationResult+":"+actionTaken+":"+dateOfAction+":"+description+":"+otherComment+":"+kefeleKetemaId+":"+
			woreda+":"+kebele+":"+houseNumber+":"+telephoneHouse+":"+telephoneMobile+":"+email);*/
	//now mahder...you can save the employee obj into the database
	Employee empObj = new Employee(firstName, fatherName,
			 grandFatherName,  sex,  dateOfBirth,
			 idNumber,  pensionNumber,  employementDate,
			 employementTypeId,  religionId,  nationality,
			 maritalStatusId,  spouseFullName,  basicSalary,
			 employeeTypeId,  employeePosition,  budgetCenter,fStudyId);
	empObj.addEmployee();
	Employee employee = Employee.getEmployeeWithIdNumber(idNumber);
	//now save the works at information...
	WorksAt worksAt = new WorksAt(employee.getId(),collegeId,fisId,departmentId,employementDate);
	worksAt.addWorksAt();
	//now save the address for this employee....
	Address addressObj = new Address( kefeleKetemaId,  woreda,  kebele,
			 houseNumber,  telephoneHouse,  telephoneMobile,
			 email,  employee.getId());
	addressObj.addAddress();
	
	
	String[] nameOfInstitution = new String[educationRowVal];
	String[] institutionFieldOfStudyId = new String[educationRowVal];
	String[] educationLevel = new String[educationRowVal];
	Date[] dateOfAward = new Date[educationRowVal];
	String[] jobId = new String[experienceRowVal];
	String[] startingFrom = new String[experienceRowVal];
	String[] upTo = new String[experienceRowVal];
	String[] placeOfWork = new String[experienceRowVal];
	String[] trainingTaken = new String[trainingRowVal];
	String[] placeOfTraining = new String[trainingRowVal];
	String[] duration = new String[trainingRowVal];
	String[] yearOfTraining = new String[trainingRowVal];
	
	EducationInformation educationInformation = null;
	Experience experience = null;
	TrainingInformation trainingInformation = null;
	
	
	for(int i=0;i<educationRowVal;i++){
		String nameOfInstitutionStr = "txtnameofinstitution"+(i+1);
		String institutionFieldOfStudyIdStr = "slctfieldofstudy"+ (i+1);		
		String nameOfEducationLevelStr = "txteducationlevel"+(i+1);
		String nameOfDateOfAwardStr = "txtdateofaward"+(i+1);
		 
		//now get the values
		nameOfInstitution[i] = request.getParameter(nameOfInstitutionStr);
		institutionFieldOfStudyId[i] = request.getParameter(institutionFieldOfStudyIdStr);
		educationLevel[i] = request.getParameter(nameOfEducationLevelStr);
		dateOfAward[i] = Date.valueOf(request.getParameter(nameOfDateOfAwardStr));
		//display for check up
		//out.print(nameOfInstitution[i]+":"+institutionFieldOfStudyId[i]+"<br/>");
		//now try to save this information to the database
		educationInformation = new EducationInformation(nameOfInstitution[i], Integer.parseInt(institutionFieldOfStudyId[i]),
				educationLevel[i],dateOfAward[i],employee.getId());
		educationInformation.addEducationInformation();		 
	}
	
	for(int j=0;j<experienceRowVal;j++){
		String jobStr = "slctjob"+(j+1);
		String startingFromStr = "txtstartingfrom"+(j+1);
		String upToStr = "txtupto"+(j+1);
		String placeOfWorkStr = "txtplaceofwork"+(j+1);
		
		//now get the values
		jobId[j] = request.getParameter(jobStr);
		startingFrom[j] = request.getParameter(startingFromStr);
		upTo[j] = request.getParameter(upToStr);
		placeOfWork[j] = request.getParameter(placeOfWorkStr);
		//display value for check up
		//out.print(jobId[j]+":"+startingFrom[j]+":"+upTo[j]+"<br/>");
		//now try to save the information to the database...
		experience = new Experience(placeOfWork[j], Date.valueOf(startingFrom[j]), Date.valueOf(upTo[j]),
				jobId[j], employee.getId());
		experience.addExperience();
	}
	
	for(int k=0;k<trainingRowVal;k++){
		String trainingTakenStr = "txttrainingtaken"+(k+1);
		String placeOfTrainingStr = "txtplaceoftraining"+(k+1);
		String durationStr = "txtduration"+(k+1);
		String yearOfTrainingStr = "txtyearoftraining"+(k+1);
		//now get the value
		trainingTaken[k] = request.getParameter(trainingTakenStr);
		placeOfTraining[k] = request.getParameter(placeOfTrainingStr);
		duration[k] = request.getParameter(durationStr);
		yearOfTraining[k] = request.getParameter(yearOfTrainingStr);
		
		//display the value for checking...
		//out.print(trainingTaken[k]+"<br/>");
		//now save the information to the database...
		trainingInformation = new TrainingInformation(trainingTaken[k], placeOfTraining[k],duration[k],yearOfTraining[k],employee.getId());
		trainingInformation.addTrainingInformation();
	}
%>
<%@include file="showemployeeregistrationform.jsp"%>