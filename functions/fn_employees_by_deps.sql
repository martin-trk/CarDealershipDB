CREATE OR REPLACE FUNCTION fn_employees_by_deps(p_department VARCHAR2)
  RETURN ty_employees_list IS
  v_employees ty_employees_list;
BEGIN
  SELECT ty_employees(department_name => dep.name,
                      city            => emp.city,
                      employee_id     => emp.employee_id,
                      employee_name   => emp.last_name || ' ' ||
                                         emp.first_name,
                      dealership_name => sd.name,
                      hire_date       => emp.hire_date)
  
    BULK COLLECT
    INTO v_employees
    FROM employees emp
    JOIN departments dep
      ON emp.department_id = dep.department_id
    JOIN dealership_sites sd
      ON emp.dealership_site_id = sd.site_id
   WHERE dep.name LIKE '%' || p_department || '%';

  FOR i IN 1 .. v_employees.count
  LOOP
    dbms_output.put_line(v_employees(i).employee_name);
  END LOOP;

  RETURN v_employees;

EXCEPTION
  WHEN OTHERS THEN
    pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'p_department: ' || p_department,
                        p_api         => 'fn_employees_by_deps');
END;
