CREATE TABLE error_log(
       err_id number,
       err_time timestamp default sysdate,
       err_message varchar2(4000),
       err_value varchar2(4000),
       api varchar2(100)
);