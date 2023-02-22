--select FirstName, LastName, Age,
--Case
--	When Age > 30 Then 'Old'
--	When Age Between 27 And 30 Then 'Young'
--	Else 'Baby'
--End
--from SQLTutorial.dbo.EmployeeDemographics
--where Age Is Not Null
--order by Age

SELECT FirstName, LastName, JobTitle, Salary,
       CAST(CASE
                WHEN Jobtitle = 'Salesman' THEN Salary + (Salary * .10)
                WHEN Jobtitle = 'Accountant' THEN Salary + (Salary * .05)
                WHEN Jobtitle = 'HR' THEN Salary + (Salary * 0.000001)
                ELSE Salary + (Salary * 0.03)
            END AS decimal(10, 2)) AS SalaryAfterRaise
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID