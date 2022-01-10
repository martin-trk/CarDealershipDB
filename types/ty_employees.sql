CREATE OR REPLACE TYPE ty_employees IS OBJECT
(
  department_name VARCHAR2(20),
  city            VARCHAR2(30),
  employee_id     NUMBER,
  employee_name   VARCHAR2(50),
  dealership_name VARCHAR2(20),
  hire_date       DATE
)
;

/ 
CREATE OR REPLACE TYPE ty_employees_list IS TABLE OF ty_employees;
/
