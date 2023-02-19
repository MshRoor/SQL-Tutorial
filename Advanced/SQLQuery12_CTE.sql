With CTE_Employee As 
(
    Select 
        FirstName, 
        LastName, 
        Gender, 
        Salary,
        Count(Gender) Over (Partition by Gender) as TotalGender, 
        Avg(Salary) Over (Partition by Gender) as AvgSalary
    From SQLTutorial..EmployeeDemographics demo
    Join SQLTutorial..EmployeeSalary sal
        on demo.EmployeeID = sal.EmployeeID
    Where Salary > 45000
)
Select FirstName, AvgSalary
From CTE_Employee