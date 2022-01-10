CREATE OR REPLACE TYPE ty_car_models IS OBJECT
(
  car_id               NUMBER,
  car_manufacturer     VARCHAR2(30),
  car_model            VARCHAR2(30),
  car_engine           VARCHAR2(30),
  number_of_doors      NUMBER,
  number_of_passangers NUMBER
)
;
/

CREATE OR REPLACE TYPE ty_car_models_list IS TABLE OF ty_car_models;
/
