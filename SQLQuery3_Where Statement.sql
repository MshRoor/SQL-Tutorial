/*
Where Statement
=, <>, <, >, <=, >=, And, Or, Like, Null, Not Null, In
*/

select *
from EmployeeDemographics
Where FirstName = 'Jim'

select *
from EmployeeDemographics
where FirstName <> 'Jim' -- '<>, stands for !=

select *
from EmployeeDemographics
where Age > 30

select *
from EmployeeDemographics
where Age <= 35 and Gender = 'Male'

select *
from EmployeeDemographics
where Age <= 35 or Gender = 'Male'

select *
from EmployeeDemographics
where LastName like 'S%' --Lastnames that start with S(not case sensitive)

select *
from EmployeeDemographics
where LastName like '%s%' --Lastnames that have an 's' in them

select *
from EmployeeDemographics
where LastName like '%n' --Lastnames that end with an 'n'

select *
from EmployeeDemographics
where FirstName is null --This won't return anything as there are no null values

select *
from EmployeeDemographics
where FirstName in ('Jim', 'Michael') --a condensed way to say = for multiple things
