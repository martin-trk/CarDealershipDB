CREATE TABLE departments_h(
	department_id NUMBER,
	name VARCHAR2(10),
	salary_min NUMBER,
	salary_max NUMBER,
	shift_starts_hour NUMBER,
	shift_ends_hour NUMBER,
	mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);