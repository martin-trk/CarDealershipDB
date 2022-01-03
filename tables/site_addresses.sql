CREATE TABLE site_addresses(
	site_id NUMBER,
	zip_code NUMBER NOT NULL,
	city VARCHAR2(10) NOT NULL,
	street VARCHAR2(30) NOT NULL,
	house_number VARCHAR2(5) NOT NULL,
	mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
