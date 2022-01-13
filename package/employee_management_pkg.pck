CREATE OR REPLACE PACKAGE employee_management_pkg IS

  PROCEDURE add_employees(p_dealership_site_id NUMBER
                         ,p_department_id      NUMBER
                         ,p_first_name         VARCHAR2
                         ,p_last_name          VARCHAR2
                         ,p_birth_date         DATE
                         ,p_gender             VARCHAR2
                         ,p_hire_date          DATE
                         ,p_zip_code           NUMBER
                         ,p_city               VARCHAR2
                         ,p_street             VARCHAR2
                         ,p_house_number       NUMBER
                         ,p_salary             NUMBER);

  PROCEDURE del_employees(p_employee_id NUMBER);

  PROCEDURE mod_employees(p_employee_id        NUMBER
                        ,p_dealership_site_id NUMBER
                        ,p_department_id      NUMBER
                        ,p_first_name         VARCHAR2
                        ,p_last_name          VARCHAR2
                        ,p_birth_date         DATE
                        ,p_gender             VARCHAR2
                        ,p_hire_date          DATE
                        ,p_zip_code           NUMBER
                        ,p_city               VARCHAR2
                        ,p_street             VARCHAR2
                        ,p_house_number       NUMBER
                        ,p_salary             NUMBER);


END;
/
CREATE OR REPLACE PACKAGE BODY employee_management_pkg IS

  PROCEDURE add_employees(p_dealership_site_id NUMBER
                         ,p_department_id      NUMBER
                         ,p_first_name         VARCHAR2
                         ,p_last_name          VARCHAR2
                         ,p_birth_date         DATE
                         ,p_gender             VARCHAR2
                         ,p_hire_date          DATE
                         ,p_zip_code           NUMBER
                         ,p_city               VARCHAR2
                         ,p_street             VARCHAR2
                         ,p_house_number       NUMBER
                         ,p_salary             NUMBER) IS
  BEGIN
    INSERT INTO employees
      (dealership_site_id
      ,department_id
      ,first_name
      ,last_name
      ,birth_date
      ,gender
      ,hire_date
      ,zip_code
      ,city
      ,street
      ,house_number
      ,salary)
    VALUES
      (p_dealership_site_id
      ,p_department_id
      ,p_first_name
      ,p_last_name
      ,p_birth_date
      ,p_gender
      ,p_hire_date
      ,p_zip_code
      ,p_city
      ,p_street
      ,p_house_number
      ,p_salary);
  END;

  PROCEDURE del_employees(p_employee_id NUMBER) IS
  BEGIN
    DELETE FROM employees e WHERE e.employee_id = p_employee_id;
  END;

  PROCEDURE mod_employees(p_employee_id        NUMBER
                         ,p_dealership_site_id NUMBER
                         ,p_department_id      NUMBER
                         ,p_first_name         VARCHAR2
                         ,p_last_name          VARCHAR2
                         ,p_birth_date         DATE
                         ,p_gender             VARCHAR2
                         ,p_hire_date          DATE
                         ,p_zip_code           NUMBER
                         ,p_city               VARCHAR2
                         ,p_street             VARCHAR2
                         ,p_house_number       NUMBER
                         ,p_salary             NUMBER) IS
  
  BEGIN
    UPDATE employees e
       SET e.dealership_site_id = p_dealership_site_id
          ,e.department_id      = p_department_id
          ,e.first_name         = p_first_name
          ,e.last_name          = p_last_name
          ,e.birth_date         = p_birth_date
          ,e.gender             = p_gender
          ,e.hire_date          = p_hire_date
          ,e.zip_code           = p_zip_code
          ,e.city               = p_city
          ,e.street             = p_street
          ,e.house_number       = p_house_number
          ,e.salary             = p_salary
     WHERE e.employee_id = p_employee_id;
  END;


END;
/