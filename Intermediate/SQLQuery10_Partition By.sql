Select FirstName, LastName,	Gender, Salary,
COUNT(Gender) Over (Partition by Gender) As TotalGender

From SQLTutorial.dbo.EmployeeDemographics As Demo
Join SQLTutorial.dbo.EmployeeSalary As Sal
	On Demo.EmployeeID = Sal.EmployeeID

Select 	Gender, COUNT(Gender) As TotalGender

From SQLTutorial.dbo.EmployeeDemographics As Demo
Join SQLTutorial.dbo.EmployeeSalary As Sal
	On Demo.EmployeeID = Sal.EmployeeID
Group by Gender
