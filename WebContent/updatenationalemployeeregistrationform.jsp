<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	String familyName = request.getParameter("familyName");
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String maidenName = request.getParameter("maidenName");
	Date dateOfBirth = Date.valueOf(request.getParameter("dateOfBirth"));
	String placeOfBirth = request.getParameter("placeOfBirth");
	String nationalityAtBirth = request.getParameter("nationalityAtBirth");
	String presentNationality = request.getParameter("presentNationality");
	String sex = request.getParameter("sex");
	String maritalStatus = request.getParameter("maritalStatus");
	String permanentAddress = request.getParameter("permanentAddress");
	String presentAddress = request.getParameter("presentAddress");
	String telephoneNumber = request.getParameter("telephoneNumber");
	String telephoneFaxNumber = request.getParameter("telephoneFaxNumber");
	String preferredFieldOfWork = request.getParameter("preferredFieldOfWork");	
	boolean objectionContactingPresentEmployer = false;
	String objectResult = request.getParameter("objectionContactingPresentEmployer");
	if(objectResult.equalsIgnoreCase("yes")){
		objectionContactingPresentEmployer = true;
	}
	boolean beenArrested = false;
	String strBeenArrested = request.getParameter("beenArrested"); 
	if(strBeenArrested.equalsIgnoreCase("yes")){
		beenArrested = true;
	}
	String professionalSocietiesActivities = request.getParameter("professionalSocietiesActivities");
	String significantPublications = request.getParameter("significantPublications");
	String employmentRecord = request.getParameter("employmentRecord");
	String presentPostFrom = request.getParameter("presentPostFrom");
	String presentPostTo = request.getParameter("presentPostTo");
	String presentPostStartingSalary = request.getParameter("presentPostStartingSalary");
	String presentPostFinalSalary = request.getParameter("presentPostFinalSalary");
	String presentPostExactTitleOfYourPost = request.getParameter("presentPostExactTitleOfYourPost");
	String presentPostNameOfEmployer = request.getParameter("presentPostNameOfEmployer");
	String presentPostTypeOfBusiness = request.getParameter("presentPostTypeOfBusiness");
	String presentPostAddressOfEmployer = request.getParameter("presentPostAddressOfEmployer");
	String presentPostNameOfSupervisor = request.getParameter("presentPostNameOfSupervisor");
	String presentPostReasonForLeaving = request.getParameter("presentPostReasonForLeaving");
	String pastPostFrom = request.getParameter("pastPostFrom");
	String pastPostTo = request.getParameter("pastPostTo");
	String pastPostStartingSalary = request.getParameter("pastPostStartingSalary");
	String pastPostFinalSalary = request.getParameter("pastPostFinalSalary");
	String pastPostExactTitleOfYourPost = request.getParameter("pastPostExactTitleOfYourPost");
	String pastPostNameOfEmployer = request.getParameter("pastPostNameOfEmployer");
	String pastPostTypeOfBusiness = request.getParameter("pastPostTypeOfBusiness");
	String pastPostAddressOfEmployer = request.getParameter("pastPostAddressOfEmployer");
	String pastPostNameOfSupervisor = request.getParameter("pastPostNameOfSupervisor");
	String pastPostReasonForLeaving = request.getParameter("pastPostReasonForLeaving");
	String employeeType = request.getParameter("employeeType");
	String employeeTypeByWorkPosition = request.getParameter("employeeTypeByWorkPosition");
	int educationGridRowVal = Integer.parseInt(request.getParameter("educationGridRowVal"));
	int schoolGridRowVal = Integer.parseInt(request.getParameter("schoolGridRowVal"));
	int dependentGridRowVal = Integer.parseInt(request.getParameter("dependentGridRowVal"));
	int workUnitId = Integer.parseInt(request.getParameter("workUnitId"));
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	String policyNumber = request.getParameter("policyNumber");
	int howManyPastPostForms = Integer.parseInt(request.getParameter("howManyPastPostForms"));	
	String[] eduNamePlaceCountry = new String[educationGridRowVal];
	String[] eduAttendedFrom = new String[educationGridRowVal];
	String[] eduAttendedTo = new String[educationGridRowVal];
	String[] eduDegrees = new String[educationGridRowVal];
	String[] eduMainCourseOfStudy = new String[educationGridRowVal];
	String[] schoolNamePlaceCountry = new String[schoolGridRowVal];
	String[] schoolType = new String[schoolGridRowVal];
	String[] schoolAttendedFrom = new String[schoolGridRowVal];
	String[] schoolAttendedTo = new String[schoolGridRowVal];
	String[] schoolCertificates = new String[schoolGridRowVal];
	String[] dependentName = new String[dependentGridRowVal];
	String[] dependentDateOfBirth = new String[dependentGridRowVal];
	String[] dependentRelationship = new String[dependentGridRowVal];
	String[] previousPostFrom = new String[howManyPastPostForms];
	String[] previousPostTo = new String[howManyPastPostForms];
	String[] previousPostStartingSalary = new String[howManyPastPostForms];
	String[] previousPostFinalSalary = new String[howManyPastPostForms];
	String[] previousPostExactTitleOfYourPost = new String[howManyPastPostForms];
	String[] previousPostNameOfEmployer = new String[howManyPastPostForms];
	String[] previousPostTypeOfBusiness = new String[howManyPastPostForms];
	String[] previousPostAddressOfEmployer = new String[howManyPastPostForms];
	String[] previousPostNameOfSupervisor = new String[howManyPastPostForms];
	String[] previousPostReasonForLeaving = new String[howManyPastPostForms];
	
	
	for (int i = 0; i < educationGridRowVal; i++) {
		String eduNamePlaceCountryName = "txteducationnameplacecountry" + (i+1);
		String eduAttendedFromName = "txteducationattendedfrom" + (i+1);
		String eduAttendedToName = "txteducationattendedto" + (i+1);
		String eduDegreesName = "txteducationdegreesacademic" + (i+1);
		String eduMainCourseOfStudyName = "txteducationmaincourseofstudy" + (i+1); 
		
		eduNamePlaceCountry[i] = request.getParameter(eduNamePlaceCountryName);
		eduAttendedFrom[i] = request.getParameter(eduAttendedFromName);
		eduAttendedTo[i] = request.getParameter(eduAttendedToName);
		eduDegrees[i] = request.getParameter(eduDegreesName);
		eduMainCourseOfStudy[i] = request.getParameter(eduMainCourseOfStudyName);
	}
	
	for(int i=0;i < dependentGridRowVal; i++){
		String dependentNameName = "txtdependentname" + (i+1);
		String dependentDateOfBirthName = "txtdependentdateofbirth" + (i+1);
		String dependentRelationshipName = "txtdependentrelationship" + (i+1);
		
		dependentName[i] = request.getParameter(dependentNameName);
		dependentDateOfBirth[i] = request.getParameter(dependentDateOfBirthName);
		dependentRelationship[i] = request.getParameter(dependentRelationshipName);
	}
	
	for(int i=0; i < schoolGridRowVal; i++){
		String schoolNamePlaceCountryName = "txtschoolnameplacecountry" + (i+1);
		String schoolTypeName = "txtschooltype" + (i+1);
		String schoolAttendedFromName = "txtschoolattendedfrom" + (i+1);
		String schoolAttendedToName = "txtschoolattendedto" + (i+1);
		String schoolCertificatesName = "txtschoolcertificatesordiplomasobtained" + (i+1);
		
		schoolNamePlaceCountry[i] = request.getParameter(schoolNamePlaceCountryName);
		schoolType[i] = request.getParameter(schoolTypeName);
		schoolAttendedFrom[i] = request.getParameter(schoolAttendedFromName);
		schoolAttendedTo[i] = request.getParameter(schoolAttendedToName);
		schoolCertificates[i] = request.getParameter(schoolCertificatesName);
	}
	
	for(int i=0;i < howManyPastPostForms; i++){
		String previousPostFromName = "txtfrommonthyear" + (i+2);
		String previousPostToName = "txttomonthyear" + (i+2);
		String previousPostStartingSalaryName = "txtstartingsalary" + (i+2);
		String previousPostFinalSalaryName = "txtfinalsalary" + (i+2);
		String previousPostExactTitleOfYourPostName = "textareaexacttitleofpost" + (i+2);
		String previousPostNameOfEmployerName = "txtnameofemployer" + (i+2);
		String previousPostTypeOfBusinessName = "txttypeofbusiness" + (i+2);
		String previousPostAddressOfEmployerName = "textareaaddressofemployer" + (i+2);
		String previousPostNameOfSupervisorName = "txtnameofsupervisor" + (i+2);
		String previousPostReasonForLeavingName = "textareareasonforleaving" + (i+2);
		
		previousPostFrom[i] = request.getParameter(previousPostFromName);
		previousPostTo[i] = request.getParameter(previousPostToName);
		previousPostStartingSalary[i] = request.getParameter(previousPostStartingSalaryName);
		previousPostFinalSalary[i] = request.getParameter(previousPostFinalSalaryName);
		previousPostExactTitleOfYourPost[i] = request.getParameter(previousPostExactTitleOfYourPostName);
		previousPostNameOfEmployer[i] = request.getParameter(previousPostNameOfEmployerName);
		previousPostTypeOfBusiness[i] = request.getParameter(previousPostTypeOfBusinessName);
		previousPostAddressOfEmployer[i] = request.getParameter(previousPostAddressOfEmployerName);
		previousPostNameOfSupervisor[i] = request.getParameter(previousPostNameOfSupervisorName);
		previousPostReasonForLeaving[i] = request.getParameter(previousPostReasonForLeavingName);
	}
	
	//fetch an employee obj, modify its values and update the database values...
	Employee employee = Employee.getEmployee(employeeId);
	employee.setLastName(familyName);
	employee.setFirstName(firstName);
	employee.setMiddleName(middleName);
	employee.setMaidenName(maidenName);
	employee.setDateOfBirth(dateOfBirth);
	employee.setPlaceOfBirth(placeOfBirth);
	employee.setNationalityAtBirth(nationalityAtBirth);
	employee.setPresentNationality(presentNationality);
	employee.setSex(sex);
	employee.setMaritalStatus(maritalStatus);
	employee.setPreferredFieldOfWork(preferredFieldOfWork);
	employee.setListOfProfessionalActivities(professionalSocietiesActivities);
	employee.setListOfPublications(significantPublications);
	employee.setEmploymentRecord(employmentRecord);
	employee.setObjectContactingPresentEmployer(objectionContactingPresentEmployer);
	employee.setBeen_arrested(beenArrested);
	employee.setEmployeeCategoryType("National");
	employee.setModifiedBy(modifiedBy);
	employee.setModificationDate(modificationDate);
	Employee.update(employee);
	
	Address address = Address.getAddressForEmployee(employeeId);
	address.setPermanentAddress(permanentAddress);
	address.setPresentAddress(presentAddress);
	address.setTelephoneNumber(telephoneNumber);
	address.setTelephoneFaxNumber(telephoneFaxNumber);
	address.setModifiedBy(modifiedBy);
	address.setModificationDate(modificationDate);
	Address.update(address);
	
	//clear all dependents of this employee and save'em again...
	Dependant.removeAllDependantsOfEmployee(employeeId);
	for(int i=0; i < dependentGridRowVal; i++){
		Dependant dependant = new Dependant(employeeId,dependentName[i],
				Date.valueOf(dependentDateOfBirth[i]),
				dependentRelationship[i],modifiedBy,modificationDate);	
		dependant.save();
	}
	
	//clear all education information of this employee and save'em again...
	EducationInformation.removeAllEducationInformationOfEmployee(employeeId);
	for(int i=0; i < educationGridRowVal; i++){		
		EducationInformation educationInformation = new EducationInformation(employeeId,
				eduNamePlaceCountry[i],eduAttendedFrom[i],eduAttendedTo[i],eduDegrees[i],
				eduMainCourseOfStudy[i],modifiedBy,modificationDate);
		educationInformation.save();
	}
	
	//clear all school information of this employee and save it again...
	SchoolFormalTrainings.removeAllSchoolFormalTrainingsOfEmployee(employeeId);
	for(int i=0; i < schoolGridRowVal; i++){		
		SchoolFormalTrainings schoolFormalTrainings = new SchoolFormalTrainings(employeeId,
				schoolNamePlaceCountry[i],schoolType[i],schoolAttendedFrom[i],schoolAttendedTo[i],
				schoolCertificates[i],modifiedBy,modificationDate);
		schoolFormalTrainings.save();
	}
	
	PresentPost presentPost = PresentPost.getPresentPostForEmployee(employeeId);
	presentPost.setPresentPostFrom(presentPostFrom);
	presentPost.setPresentPostTo(presentPostTo);
	presentPost.setStartingSalary(presentPostStartingSalary);
	presentPost.setFinalSalary(presentPostFinalSalary);
	presentPost.setExactTitleOfPost(presentPostExactTitleOfYourPost);
	presentPost.setNameOfEmployer(presentPostNameOfEmployer);
	presentPost.setTypeOfBusiness(presentPostTypeOfBusiness);
	presentPost.setAddressOfEmployer(presentPostAddressOfEmployer);
	presentPost.setNameOfSupervisor(presentPostNameOfSupervisor);
	presentPost.setReasonForLeaving(presentPostReasonForLeaving);
	presentPost.setModifiedBy(modifiedBy);
	presentPost.setModificationDate(modificationDate);
	PresentPost.update(presentPost);			
	
	if(pastPostFrom != null){
		PastPost.removeAllPastPostsOfEmployee(employeeId);
		PastPost pastPost = new PastPost(employeeId,pastPostFrom,pastPostTo,pastPostStartingSalary,
				pastPostFinalSalary,pastPostExactTitleOfYourPost,pastPostNameOfEmployer,
				pastPostTypeOfBusiness,pastPostAddressOfEmployer,pastPostNameOfSupervisor,
				pastPostReasonForLeaving,modifiedBy,modificationDate);
		pastPost.save();
	}
	
	for(int i=0; i < howManyPastPostForms; i++){
		PastPost pastPost = new PastPost(employeeId,previousPostFrom[i],previousPostTo[i],
				previousPostStartingSalary[i],previousPostFinalSalary[i],previousPostExactTitleOfYourPost[i],
				previousPostNameOfEmployer[i],previousPostTypeOfBusiness[i],previousPostAddressOfEmployer[i],
				previousPostNameOfSupervisor[i],	previousPostReasonForLeaving[i],modifiedBy,modificationDate);
		pastPost.save();
	}
	
	String referenceFullName = null;
	String referenceFullAddress = null;
	String referenceBusinessOrOccupation = null;
	
	//remove all references of this employee and save them back again...
	Reference.removeAllReferencesOfEmployee(employeeId);
	for(int i=1;i <= 3; i++){
		String referenceFullNameName = "reference"+i+"FullName";
		String referenceFullAddressName = "reference"+i+"FullAddress";
		String referenceBusinessOrOccupationName = "reference"+i+"BusinessOrOccupation";
		
		referenceFullName = request.getParameter(referenceFullNameName);
		referenceFullAddress = request.getParameter(referenceFullAddressName);
		referenceBusinessOrOccupation = request.getParameter(referenceBusinessOrOccupationName);
		
		Reference reference = new Reference(employeeId,referenceFullName,referenceFullAddress,
				referenceBusinessOrOccupation,modifiedBy,modificationDate);
		reference.save();
	}
	
	//now save the employee type information to the database...
	NationalEmployeeType nationalEmployeeType = NationalEmployeeType.getNationalEmployeeTypeForEmployee(employeeId);
	nationalEmployeeType.setEmploymentType(employeeType);
	nationalEmployeeType.setModifiedBy(modifiedBy);
	nationalEmployeeType.setModificationDate(modificationDate);
	NationalEmployeeType.update(nationalEmployeeType);
	
	NationalEmployeeWorkPosition nationalEmployeeWorkPosition = NationalEmployeeWorkPosition.getNationalEmployeeWorkPositionForEmployee(employeeId);
	nationalEmployeeWorkPosition.setWorkPosition(employeeTypeByWorkPosition);
	nationalEmployeeWorkPosition.setModifiedBy(modifiedBy);
	nationalEmployeeWorkPosition.setModificationDate(modificationDate);
	NationalEmployeeWorkPosition.update(nationalEmployeeWorkPosition);	
	
	//now update the work unit/department and job information for this particular employee...
	WorksAt worksAt = WorksAt.getWorksAtForEmployee(employeeId);
	Department department = Department.getDepartment(worksAt.getDepartmentId());
	FacultyInstituteSchool fis = FacultyInstituteSchool.getFacultyInstituteSchool(department.getFisId());
	College college = College.getCollege(fis.getCollegeId());
	worksAt.setDepartmentId(department.getId());
	worksAt.setFisId(fis.getId());
	worksAt.setCollegeId(college.getId());
	worksAt.setEmployeeId(employeeId);
	worksAt.setModifiedBy(modifiedBy);
	worksAt.setModificationDate(modificationDate);
	WorksAt.update(worksAt);
	
	EmployeeJob employeeJob = EmployeeJob.getEmployeeJobForThisEmployee(employeeId);
	if(employeeJob != null){
		employeeJob.setJobId(jobId);
		employeeJob.setEmployeeId(employeeId);
		employeeJob.setModifiedBy(modifiedBy);
		employeeJob.setModificationDate(modificationDate);
		EmployeeJob.update(employeeJob);
	}else{
		EmployeeJob empJob = new EmployeeJob(employeeId,jobId,modifiedBy,modificationDate);
		empJob.save();
	}
	
	EmployeeInsurance employeeInsurance = EmployeeInsurance.getEmployeeInsuranceForEmployee(employeeId);
	if(employeeInsurance != null){
		employeeInsurance.setEmployeeId(employeeId);
		employeeInsurance.setInsurancePolicyNumber(policyNumber);
		EmployeeInsurance.update(employeeInsurance);
	}else{
		EmployeeInsurance empInsurance = new EmployeeInsurance(employeeId,policyNumber);
		empInsurance.save();
	}
%>
<p class="msg done">National Employee Updated Successfully!</p>