CREATE TABLE departments_h(
	department_id NUMBER,
	name VARCHAR2(20),
	salary_min NUMBER,
	salary_max NUMBER,
	shift_starts_hour VARCHAR2(5),
	shift_ends_hour VARCHAR2(5),
	mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);