CREATE TABLE departments(
	department_id NUMBER,
	name VARCHAR2(20) NOT NULL,
	salary_min NUMBER NOT NULL,
	salary_max NUMBER NOT NULL,
	shift_starts_hour VARCHAR2(5) NOT NULL,
	shift_ends_hour VARCHAR2(5) NOT NULL,
	mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);