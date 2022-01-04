CREATE TABLE site_addresses_h(
	site_id NUMBER,
	zip_code NUMBER,
	city VARCHAR2(10),
	street VARCHAR2(30),
	house_number VARCHAR2(5),
	mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);
