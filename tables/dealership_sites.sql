CREATE TABLE dealership_sites (
	site_id	NUMBER,
	NAME VARCHAR2(20) NOT NULL,
	mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);