ALTER TABLE employees
ADD CONSTRAINT employees_id_pk PRIMARY KEY (employee_id);
ALTER TABLE employees
ADD CONSTRAINT employees_fk0 FOREIGN KEY (dealership_site_id) REFERENCES dealership_sites(site_id);
ALTER TABLE employees
ADD CONSTRAINT employees_fk1 FOREIGN KEY (department_id) REFERENCES departments(department_id);