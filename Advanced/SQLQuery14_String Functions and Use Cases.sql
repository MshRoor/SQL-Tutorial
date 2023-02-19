/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;

Drop Table If Exists EmployeeErrors
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTrim, RTrim

Select EmployeeID, Trim(EmployeeID) as IDTrim
From EmployeeErrors

Select EmployeeID, LTrim(EmployeeID) as IDTrim
From EmployeeErrors

Select EmployeeID, RTrim(EmployeeID) as IDTrim
From EmployeeErrors

-- Using Replace

Select LastName, REPLACE(LastName, '- Fired','') as LastNameFixed
From EmployeeErrors

--Using Substring
Select SUBSTRING(FirstName, 1,3)
From EmployeeErrors

Select Err.FirstName, Substring(Err.FirstName, 1,3), Dem.FirstName, substring(Dem.FirstName,1,3)
From EmployeeErrors as Err
Join SQLTutorial..EmployeeDemographics as Dem
	On Substring(Err.FirstName, 1,3) = substring(Dem.FirstName,1,3)

--Using Upper and Lower

Select FirstName, Lower(FirstName)
From EmployeeErrors

Select FirstName, Upper(FirstName)
From EmployeeErrors
