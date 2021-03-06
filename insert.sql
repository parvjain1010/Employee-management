INSERT INTO AllowedHolidays(Company_ID,Holiday_ID) VALUES(?,?)
INSERT INTO ApplicableAt(Holiday_ID,Region_ID) VALUES(?,?)
INSERT INTO Benefits(Type,Name) VALUES(?,?)
INSERT INTO BenefitsProvided(Company_ID,Benefit_ID) VALUES(?,?)
INSERT INTO CalendarHoliday(Name,EndDate,StartDate) VALUES(?,?,?)
INSERT INTO DepartmentsAvailable(Company_ID,Departments) VALUES(?,?)
INSERT INTO Eligibility(Name,Type,Constraints) VALUES(?,?,?)
INSERT INTO EmergencyColleagues(Employee,Colleague) VALUES(?,?)
INSERT INTO Employee(BaseSalary,Origin,FirstName,LastName,Nationality,DOB,Gender,MaritalStatus,HomeAddress,WorkEmail,WorkMobile,MailingAddress,EduLevel,TaxIdentification) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)
INSERT INTO Employment(WorkerType,JobTitle,HireDate,EndDate,StartDate,Employee_ID) VALUES(?,?,?,?,?,?)
INSERT INTO Leaves(Name,MaxDuration,MinDuration) VALUES(?,?,?)
INSERT INTO Office(Mailing_Address,Company,LocatedAt) VALUES(?,?,?)
INSERT INTO PersonalRelations(Name,Mobile,Email,MailingAddress) VALUES(?,?,?,?)
INSERT INTO Region(Name) VALUES(?)
INSERT INTO Shifts(Name,Timings,HoursPerWeek) VALUES(?,?,?)
INSERT INTO SubCompany(CompanyName,HeadOffice) VALUES(?,?)