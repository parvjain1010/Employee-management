Alter Table Shifts_DaysofWork ADD FOREIGN KEY (Shift_ID) REFERENCES Shifts(Shift_ID);

Alter Table Office ADD FOREIGN KEY (Company) REFERENCES SubCompany(Company_ID);
Alter Table Office ADD FOREIGN KEY (LocatedAt) REFERENCES Region(Region_ID);

Alter Table Employment ADD FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID);

Alter Table SubCompany ADD FOREIGN KEY (HeadOffice) REFERENCES Office(Office_ID);

Alter Table Region ADD FOREIGN KEY (LocatedIn) REFERENCES Region(Region_ID);

Alter Table Employee ADD FOREIGN KEY (WorksFor) REFERENCES Office(Office_ID);
Alter Table Employee ADD FOREIGN KEY (ManagedBy) REFERENCES Employee(Employee_ID);
Alter Table Employee ADD FOREIGN KEY (Shift) REFERENCES Shifts(Shift_ID);

Alter Table DepartmentsAvailable ADD FOREIGN KEY (Company_ID) REFERENCES SubCompany(Company_ID);

Alter Table AllowedHolidays ADD FOREIGN KEY (Company_ID) REFERENCES SubCompany(Company_ID);
Alter Table AllowedHolidays ADD FOREIGN KEY (Holiday_ID) REFERENCES CalendarHoliday(Holiday_ID);

Alter Table BenefitsProvided ADD FOREIGN KEY (Company_ID) REFERENCES SubCompany(Company_ID);
Alter Table BenefitsProvided ADD FOREIGN KEY (Benefit_ID) REFERENCES Benefits(Benefit_ID);

Alter Table AllowedLeaves ADD FOREIGN KEY (Company_ID) REFERENCES SubCompany(Company_ID);
Alter Table AllowedLeaves ADD FOREIGN KEY (Leave_ID) REFERENCES Leaves(Leave_ID);
Alter Table AllowedLeaves ADD FOREIGN KEY (Eligibility_ID) REFERENCES Eligibility(Eligibility_ID);

Alter Table Compensations ADD FOREIGN KEY (Benefit_ID) REFERENCES Benefits(Benefit_ID);
Alter Table Compensations ADD FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID);

Alter Table LeavesLeft ADD FOREIGN KEY (Leave_ID) REFERENCES Leaves(Leave_ID);
Alter Table LeavesLeft ADD FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID);

Alter Table ApplicableAt ADD FOREIGN KEY (Holiday_ID) REFERENCES CalendarHoliday(Holiday_ID);
Alter Table ApplicableAt ADD FOREIGN KEY (Region_ID) REFERENCES Region(Region_ID);

Alter Table EmergencyColleagues ADD FOREIGN KEY (Employee) REFERENCES Employee(Employee_ID);
Alter Table EmergencyColleagues ADD FOREIGN KEY (Colleague) REFERENCES Employee(Employee_ID);

Alter Table EmergencyContacts ADD FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID);
Alter Table EmergencyContacts ADD FOREIGN KEY (PR_ID) REFERENCES PersonalRelations(PR_ID);
