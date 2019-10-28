CREATE TABLE Leaves
(
  Name VARCHAR(30) NOT NULL,
  MaxDuration INT NOT NULL,
  MinDuration INT NOT NULL,
  Leave_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (Leave_ID)
);
#BCNF
CREATE TABLE Shifts
(
  Timings CHAR(10) NOT NULL,
  Name VARCHAR(30) NOT NULL,
  Shift_ID INT NOT NULL AUTO_INCREMENT,
  HoursPerWeek INT NOT NULL,
  PRIMARY KEY (Shift_ID)
);
#BCNF
CREATE TABLE CalendarHoliday
(
  Holiday_ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(15) NOT NULL,
  EndDate DATE NOT NULL,
  StartDate DATE NOT NULL,
  PRIMARY KEY (Holiday_ID)
);
#BCNF
CREATE TABLE Benefits
(
  Type VARCHAR(10) NOT NULL,
  Name VARCHAR(30) NOT NULL,
  Benefit_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (Benefit_ID)
);
#BCNF
CREATE TABLE PersonalRelations
(
  Name VARCHAR(60) NOT NULL,
  PR_ID INT NOT NULL AUTO_INCREMENT,
  Mobile VARCHAR(15) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  MailingAddress VARCHAR(256) NOT NULL,
  PRIMARY KEY (PR_ID)
);
#BCNF
CREATE TABLE Eligibility
(
  Name VARCHAR(30) NOT NULL,
  Eligibility_ID INT NOT NULL AUTO_INCREMENT,
  Type VARCHAR(30) NOT NULL,
  Constraints VARCHAR(30) NOT NULL,
  PRIMARY KEY (Eligibility_ID)
);
#BCNF
CREATE TABLE Shifts_DaysofWork
(
  DaysofWork INT NOT NULL,
  Shift_ID INT NOT NULL,
  PRIMARY KEY (DaysofWork, Shift_ID)
);
#BCNF
CREATE TABLE Office
(
  Mailing_Address VARCHAR(256) NOT NULL,
  Office_ID INT NOT NULL AUTO_INCREMENT,
  Company INT NOT NULL,
  LocatedAt INT NOT NULL,
  PRIMARY KEY (Office_ID)
);
#BCNF
CREATE TABLE Employment
(
  WorkerType VARCHAR(10) NOT NULL,
  JobTitle VARCHAR(20) NOT NULL,
  Department VARCHAR(20),
  Employment_ID INT NOT NULL AUTO_INCREMENT,
  HireDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  StartDate DATE NOT NULL,
  Employee_ID INT ,
  PRIMARY KEY (Employment_ID)
);
#BCNF
CREATE TABLE SubCompany
(
  CompanyName VARCHAR(30) NOT NULL,
  Company_ID INT NOT NULL  AUTO_INCREMENT,
  HeadOffice INT ,
  PRIMARY KEY (Company_ID)
);
#BCNF
CREATE TABLE Region
(
  Name VARCHAR(30) NOT NULL,
  Region_ID INT NOT NULL AUTO_INCREMENT,
  LocatedIn INT ,
  PRIMARY KEY (Region_ID)
);
#BCNFADD
CREATE TABLE Employee
(
  BaseSalary INT NOT NULL,
  Origin VARCHAR(20) NOT NULL,
  FirstName VARCHAR(20) NOT NULL,
  LastName VARCHAR(20) NOT NULL,
  Nationality VARCHAR(30) NOT NULL,
  DOB DATE NOT NULL,
  Gender VARCHAR(15) NOT NULL,
  MaritalStatus CHAR(1) NOT NULL,
  HomeAddress VARCHAR(256) NOT NULL,
  WorkEmail VARCHAR(50) NOT NULL,
  WorkMobile VARCHAR(15) NOT NULL,
  MailingAddress VARCHAR(256) NOT NULL,
  Employee_ID INT NOT NULL AUTO_INCREMENT,
  EduLevel VARCHAR(40) NOT NULL,
  TaxIdentification VARCHAR(20) NOT NULL,
  WorksFor INT ,
  ManagedBy INT ,
  Shift INT ,
  PRIMARY KEY (Employee_ID)
);
#BCNF
CREATE TABLE DepartmentsAvailable
(
  Departments VARCHAR(20) NOT NULL,
  Company_ID INT NOT NULL,
  PRIMARY KEY (Departments, Company_ID)
);
#BCNF
CREATE TABLE AllowedHolidays
(
  Company_ID INT NOT NULL,
  Holiday_ID INT NOT NULL,
  PRIMARY KEY (Company_ID, Holiday_ID)
);
#BCNF
CREATE TABLE BenefitsProvided
(
  Company_ID INT NOT NULL,
  Benefit_ID INT NOT NULL,
  PRIMARY KEY (Company_ID, Benefit_ID)
);
#BCNF
CREATE TABLE AllowedLeaves
(
  MaxAllowed INT NOT NULL,
  Company_ID INT NOT NULL,
  Leave_ID INT NOT NULL,
  Eligibility_ID INT NOT NULL,
  PRIMARY KEY (Company_ID, Leave_ID)
);
#BCNF
CREATE TABLE Compensations
(
  Amount INT NOT NULL,
  Benefit_ID INT NOT NULL,
  Employee_ID INT NOT NULL,
  PRIMARY KEY (Benefit_ID, Employee_ID)
);
#BCNF
CREATE TABLE LeavesLeft
(
  Remaining INT NOT NULL,
  Leave_ID INT NOT NULL,
  Employee_ID INT NOT NULL,
  PRIMARY KEY (Leave_ID, Employee_ID)
);
#BCNF
CREATE TABLE ApplicableAt
(
  Holiday_ID INT NOT NULL,
  Region_ID INT NOT NULL,
  PRIMARY KEY (Holiday_ID, Region_ID)
);
#BCNF
CREATE TABLE EmergencyColleagues
(
  Employee INT NOT NULL,
  Colleague INT NOT NULL,
  PRIMARY KEY (Employee, Colleague)
);
#BCNF
CREATE TABLE EmergencyContacts
(
  Dependant CHAR(1) NOT NULL,
  Employee_ID INT NOT NULL,
  PR_ID INT NOT NULL,
  PRIMARY KEY (Employee_ID, PR_ID)
);
#BCNF
CREATE TABLE User
(
  UserID INT NOT NULL AUTO_INCREMENT,
  Username VARCHAR(20) NOT NULL,
  Password VARCHAR(200) NOT NULL,
  PRIMARY KEY (UserID)
);
#BCNF
CREATE TABLE Role
(
  RoleID INT NOT NULL AUTO_INCREMENT,
  UserID INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (RoleID)
);
#BCNF
