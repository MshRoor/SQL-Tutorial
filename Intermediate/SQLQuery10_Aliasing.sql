--Select FirstName as Fname
--From SQLTutorial.dbo.EmployeeDemographics

Select FirstName + ' ' + Lastname As Full_Name
From SQLTutorial.dbo.EmployeeDemographics

Select Demo.EmployeeID, Sal.Salary
From SQLTutorial.dbo.EmployeeDemographics As Demo
Join SQLTutorial.dbo.EmployeeSalary As Sal
	On Demo.EmployeeID = Sal.EmployeeID

Select Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
From SQLTutorial.dbo.EmployeeDemographics As Demo
Left Join SQLTutorial.dbo.EmployeeSalary As Sal
	On Demo.EmployeeID = Sal.EmployeeID
Left Join SQLTutorial.dbo.WareHouseEmployeeDemographics As Ware
	On Demo.EmployeeID = Ware.EmployeeID
