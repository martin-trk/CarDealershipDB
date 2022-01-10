CREATE OR REPLACE VIEW vw_average_salaries AS
SELECT dep.name
      ,AVG(salary) average_salary
      ,dep.salary_min minimum_salary_of_department
      ,dep.salary_max maximum_salary_of_department
  FROM employees emp
  JOIN departments dep
    ON emp.department_id = dep.department_id
 GROUP BY dep.name
         ,dep.salary_min
         ,dep.salary_max;