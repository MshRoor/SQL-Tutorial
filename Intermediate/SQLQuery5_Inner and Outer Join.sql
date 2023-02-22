--select *
--from SQLTutorial..EmployeeDemographics

--select *
--from SQLTutorial..EmployeeSalary

--select *
--from SQLTutorial..EmployeeDemographics
--inner join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID

--select *
--from SQLTutorial..EmployeeDemographics
--full outer join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID

--select *
--from SQLTutorial..EmployeeDemographics
--left outer join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID

--select *
--from SQLTutorial..EmployeeDemographics
--right outer join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID

--select SQLTutorial..EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--from SQLTutorial..EmployeeDemographics
--left outer join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID

--select SQLTutorial..EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--from SQLTutorial..EmployeeDemographics
--right outer join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID

--select SQLTutorial..EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--from SQLTutorial..EmployeeDemographics
--inner join SQLTutorial..EmployeeSalary
--	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID
--where FirstName <> 'Michael'
--order by salary desc

select JobTitle, Avg(Salary) as AvgSalesmanSalary
from SQLTutorial..EmployeeDemographics
inner join SQLTutorial..EmployeeSalary
	on SQLTutorial..EmployeeDemographics.EmployeeID = SQLTutorial..EmployeeSalary.EmployeeID
where JobTitle = 'Salesman'
group by JobTitle


