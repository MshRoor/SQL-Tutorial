--select FirstName, LastName, Age,
--Case
--	When Age > 30 Then 'Old'
--	When Age Between 27 And 30 Then 'Young'
--	Else 'Baby'
--End
--from SQLTutorial.dbo.EmployeeDemographics
--where Age Is Not Null
--order by Age

Select FirstName, LastName, JobTitle, Salary,

Case
	When Jobtitle = 'Salesman' Then Salary + (Salary * .10)
	When Jobtitle = 'Accountant' then Salary + (Salary * .05)
	When Jobtitle = 'HR' Then Salary + (Salary * 0.000001)
	Else Salary + (Salary * 0.03)
End As SalaryAfterRaise

from SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID