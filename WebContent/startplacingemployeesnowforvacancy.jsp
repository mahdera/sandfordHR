<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	boolean isEducationLevelOk = false;
	boolean isFieldOfStudyOk = false;
	boolean isExperienceYearOk = false;
	//Date placementDate = null;
	
	float pointObtainedFromEducationLevelCriteria=0.0f;
	float pointObtainedFromFieldOfStudyCriteria=0.0f;
	float pointObtainedFromExperienceCriteria=0.0f;
	
	List<Employee> employeeList = Employee.getAllEmployees();
	Iterator<Employee> employeeItr = employeeList.iterator();
	
	
	
	//now loop thru all employees saved in the database
	while(employeeItr.hasNext()){
		List<EducationLevelCriteriaValueList> educationLevelCriteriaValueList = EducationLevelCriteriaValueList.getAllEducationLevelCriteriaListForVacancy(vacancyId);
		List<FieldOfStudyCriteriaValueList> fieldOfStudyCriteriaValueList = FieldOfStudyCriteriaValueList.getAllFieldOfStudyCriteriaForVacancy(vacancyId);
		List<ExperienceCriteriaValueList> experienceCriteriaValueList = ExperienceCriteriaValueList.getAllExperienceCriteriaListForVacancy(vacancyId);
		
		Iterator<EducationLevelCriteriaValueList> educationLevelCriteriaValueItr = educationLevelCriteriaValueList.iterator();
		Iterator<FieldOfStudyCriteriaValueList> fieldOfStudyCriteriaValueItr = fieldOfStudyCriteriaValueList.iterator();
		Iterator<ExperienceCriteriaValueList> experienceCriteriaValueItr = experienceCriteriaValueList.iterator();
		
		
		
		isEducationLevelOk = false;
		isFieldOfStudyOk = false;
		isExperienceYearOk = false;
		
		Employee emp = employeeItr.next();
		//now compute the exp, education level and other details of the employee...
		int employeeExperienceYear = Employee.getTotalNumberOfYearOfExperienceForEmployee(emp.getId());
		EducationLevel employeeEducationLevel = EducationLevel.getEducationLevel(emp.getEducationLevelId());
		List<EducationInformation> employeeFieldOfStudy = EducationInformation.getAllEducationInformationForEmployee(emp.getId());
			
		while(educationLevelCriteriaValueItr.hasNext()){
			EducationLevelCriteriaValueList ed = educationLevelCriteriaValueItr.next();
			if(employeeEducationLevel.getId() == ed.getEducationLevelId()){
				pointObtainedFromEducationLevelCriteria = ed.getPoint();
				isEducationLevelOk = true;				
				System.out.println("inside educationlevelcriteria : "+isEducationLevelOk+" : emp : "+emp.getFirstName());
			}
		}//end education level criteria while loop
		
		if(isEducationLevelOk){		
			System.out.println("size of field of study criteria is : "+fieldOfStudyCriteriaValueList.size());
			for(int i=0;i<fieldOfStudyCriteriaValueList.size();i++){
				System.out.println("i : "+i);
				for(int j=0;j<employeeFieldOfStudy.size();j++){
					System.out.println("j : "+j);
					FieldOfStudyCriteriaValueList fCriteria = fieldOfStudyCriteriaValueList.get(i);
					EducationInformation eduInfo = employeeFieldOfStudy.get(j); 
					if(fCriteria.getFieldOfStudyId() == eduInfo.getFieldOfStudyId()){
						isFieldOfStudyOk = true;
						pointObtainedFromFieldOfStudyCriteria = fCriteria.getPoint();
						System.out.println("inside field of study criteria for emp : "+isFieldOfStudyOk+" : "+emp.getFirstName());
					}
				}
			}
		}//end if
		
		while(experienceCriteriaValueItr.hasNext() && isFieldOfStudyOk){			
			ExperienceCriteriaValueList ex = experienceCriteriaValueItr.next();
			System.out.println("get mini year : "+ex.getMinimumExperienceYear());
			System.out.println("emp exp year : "+employeeExperienceYear);
			System.out.println(employeeExperienceYear +" >= "+ex.getMinimumExperienceYear());
			if(employeeExperienceYear >= ex.getMinimumExperienceYear()){
				pointObtainedFromExperienceCriteria = ex.getPoint();
				isExperienceYearOk = true;
				System.out.println("inside experience criteria : "+isExperienceYearOk+" for emp : "+emp.getFirstName());
			}
		}//end while loop
		
		//now save this critical information to the database cus i will need it later...
		if(isExperienceYearOk){
			java.util.Date d = new java.util.Date();
	        int y = d.getYear();
	        int m = d.getMonth();
	        int k = d.getDate();
	        y+=1900;
	        m++;
	        String currentDate = y+"-"+m+"-"+k;
	        java.sql.Date placementDate = java.sql.Date.valueOf(currentDate);
			EmployeePlacement ePlacement = new EmployeePlacement(vacancyId,emp.getId(),
					pointObtainedFromEducationLevelCriteria,pointObtainedFromFieldOfStudyCriteria,
					pointObtainedFromExperienceCriteria,placementDate);
			ePlacement.addEmployeePlacement();			
		}//end if...
	}//end while loop for all employees
	
	//now change the status of the selected vacancy obj to "set"
	Vacancy.changeVacancyStatusTo(vacancyId,"set");
	//now show the list of placed employees accordingly....
%>
<p class="msg done">Employee placement saved successfully!</p>