PROMPT Creating user...

@./users/create_db_admin.sql

PROMPT Creating tables...

@./tables/car_engines.sql
@./tables/car_manufacturers.sql
@./tables/car_models.sql
@./tables/cars.sql
@./tables/dealership_sites.sql
@./tables/departments.sql
@./tables/employees.sql
@./tables/site_addresses.sql

PROMPT Creating history tables...

@./log_tables/car_engines_h.sql
@./log_tables/car_manufacturers_h.sql
@./log_tables/car_models_h.sql
@./log_tables/cars_h.sql
@./log_tables/dealership_sites_h.sql
@./log_tables/departments_h.sql
@./log_tables/employees_h.sql
@./log_tables/site_addresses_h.sql
@./log_tables/error_log.sql

PROMPT Creating sequences...

@./sequences/dealership_sites_id_seq.sql
@./sequences/site_addresses_id_seq.sql
@./sequences/departments_id_seq.sql
@./sequences/employees_id_seq.sql
@./sequences/car_engines_id_seq.sql
@./sequences/car_manufacturers_id_seq.sql
@./sequences/car_models_id_seq.sql
@./sequences/cars_id_seq.sql
@./sequences/error_log_seq.sql

PROMPT Creating types...

@./types/ty_car_models.sql
@./types/ty_employees.sql

PROMPT Creating procedures...

@./procedures/add_car_engines.sql
@./procedures/add_car_manufacturers.sql
@./procedures/add_car_models.sql
@./procedures/add_dealership_sites.sql
@./procedures/add_departments.sql
@./procedures/add_site_addresses.sql

PROMPT Creating packages...

@./package/err_log_pkg.pck
@./package/car_management_pkg.pck
@./package/employee_management_pkg.pck

PROMPT Creating functions...

@./functions/fn_car_datas_groupped.sql
@./functions/fn_employees_by_deps.sql

PROMPT Creating triggers...

@./triggers/car_engines_trg.sql
@./triggers/car_manufacturers_trg.sql
@./triggers/car_models_trg.sql
@./triggers/cars_trg.sql
@./triggers/dealership_sites_trg.sql
@./triggers/departments_trg.sql
@./triggers/employees_trg.sql
@./triggers/site_addresses_trg.sql

@./triggers/log_triggers/car_engines_h_trg.sql
@./triggers/log_triggers/car_manufacturers_h_trg.sql
@./triggers/log_triggers/car_models_h_trg.sql
@./triggers/log_triggers/cars_h_trg.sql
@./triggers/log_triggers/dealership_sites_h_trg.sql
@./triggers/log_triggers/departments_h_trg.sql
@./triggers/log_triggers/employees_h_trg.sql
@./triggers/log_triggers/site_addresses_h_trg.sql

PROMPT Creating constraints...

@./constraints/dealership_sites_const.sql
@./constraints/site_addresses_const.sql
@./constraints/departments_const.sql
@./constraints/employees_const.sql
@./constraints/car_engines_const.sql
@./constraints/car_manufacturers_const.sql
@./constraints/car_models_const.sql
@./constraints/cars_const.sql

PROMPT Filling tables with data...

@./data/db_data_fill.sql

PROMPT Creating views...

@./views/vw_available_cars.sql
@./views/vw_avarage_salaries.sql
@./views/vw_emps_in_all_dships.sql
@./views/vw_condition_and_mfact.sql