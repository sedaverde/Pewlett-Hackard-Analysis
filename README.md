# Pewlett-Hackard-Analysis
## Overview
The purpose of this project was to determine the number and type of positions that would be vacated as employees of the company Pewlett-Hackard reached retirement age. This was achieved but filtering the employee date by the birthdates that fall between January 1, 1952 through December 31, 1955, determining the most current position of each employee and then aggregating each unique title to produce a table that returns the number of positions that would be open once these employees retire. Additionally, an analysis was performed on employees born in 1965 to determine how many people would be available to mentor the incoming hires.

## Results
Several observations can be made from the data;
  - Based off of the number of current employees (240,124 derived from the dept_emp.csv) 30.2% of the workforce will retire over the course of 5 years
  - Of those retiring (based off of calculations using the below table) 70.2% will be senior staff 
  
  ![image](https://user-images.githubusercontent.com/90329647/158808444-76195e2d-166e-4c7b-9b12-03b21ea13436.png)
  
  - By performing a count of each title of the employees for mentorship we can calculate the ratio of mentors to new employees
    - Assistant engineer:  ~ 1 per 25 new hires
    - Engineer: ~ 1 per 33 new hires
    - Senior Engineer: ~ 1 per 100 new hires
    - Senior Staff: ~ 1 per 100 new hires
    - Staff: ~ 1 per 20 hires
    - Technique Leader: ~ 1 per 50 hires
    - Manager: no mentors available based on given criteria filter criteria of birth year of 1965
  - Assuming that the number of retirees if spread equally across the 5 years and that there is no within company movement, the mentorship 
    - Assistant engineer:  ~ 1 per 5 new hires
    - Engineer: ~ 1 per 6 new hires
    - Senior Engineer: ~ 1 per 20 new hires
    - Senior Staff: ~ 1 per 20 new hires
    - Staff: ~ 1 per 4 hires
    - Technique Leader: ~ 1 per 10 hires
    - Manager: no mentors available based on given criteria filter criteria of birth year of 1965

## Summary
A total of 72,458 roles, over the course of 5 years, will need to be filled once the eligible employees retire. These include a high percentage of non-entry level roles, some of which may be filled by current employees. As this happens, the mentorship program will become overwhelmed due to the sheer number of new hires each mentor would assigned to them. The following additional analysis should be performed to gain more insight on how this situation will affect the company and strategies on how to handle it:
  - divide up the table of retiring employees based on birth year in order to gauge the number of employees would potentially leave each year over the coure of 5 years
  - expand the birth year included in the mentorship program to add additional mentors
  - create a query/table to identify potential employees who may move into the senior level position
  - create a query/table to identify potential employees who do not meet the age requirement forthe mentorship program but have been in their position for an appropriate amount of time so that they can also be considered for the mentorship
  - use the duplicate data entries due to the employee having mutliple roles to calculate the percentage of people who transition into other roles within the company
 
