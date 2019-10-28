SELECT Company_ID,CompanyName, CASE WHEN HeadOffice IS NULL THEN 0 ELSE HeadOffice END AS HeadOffice FROM SubCompany WHERE CompanyName=?
SELECT * FROM SubCompany WHERE CompanyName=? AND HeadOffice=?
SELECT Company_ID,CompanyName, CASE WHEN HeadOffice IS NULL THEN 0 ELSE HeadOffice END AS HeadOffice FROM SubCompany WHERE Company_ID=?
SELECT COUNT(*) FROM SubCompany WHERE SubCompany_ID=?
SELECT COUNT(*) FROM SubCompany WHERE CompanyName=? AND HeadOffice=?
SELECT COUNT(*) FROM SubCompany WHERE CompanyName=?