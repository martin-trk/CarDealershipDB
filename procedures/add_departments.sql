CREATE OR REPLACE PROCEDURE add_departments(p_name              VARCHAR2
                                           ,p_salary_min        NUMBER
                                           ,p_salary_max        NUMBER
                                           ,p_shift_starts_hour VARCHAR2
                                           ,p_shift_ends_hour   VARCHAR2) IS
BEGIN
  INSERT INTO departments
    (NAME
    ,salary_min
    ,salary_max
    ,shift_starts_hour
    ,shift_ends_hour)
  VALUES
    (p_name
    ,p_salary_min
    ,p_salary_max
    ,p_shift_starts_hour
    ,p_shift_ends_hour);
END;
