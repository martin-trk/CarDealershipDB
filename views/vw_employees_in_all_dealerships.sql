CREATE OR REPLACE VIEW employees_in_all_dealerships AS
SELECT emp.first_name || ' ' || emp.last_name full_name
      ,dep.name department_name
      ,ds.name dealership_name
      ,sd.zip_code || ' ' || sd.city || ', ' || sd.street || ' ' ||
       sd.house_number dealership_address
  FROM employees emp
  JOIN dealership_sites ds
    ON emp.dealership_site_id = ds.site_id
  JOIN site_addresses sd
    ON ds.site_id = sd.site_id
  JOIN departments dep
    ON emp.department_id = dep.department_id;