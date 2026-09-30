Create user vra IDENTIFIED BY Changeme0;

Grant create session to vra;
Grant create table, create view to vra;

ALTER USER vra QUOTA UNLIMITED ON users;

Alter session set current_schema = vra;

DROP TABLE clinic_staff;
DROP TABLE role;


CREATE TABLE role (
    role_id   INT GENERATED ALWAYS AS IDENTITY CONSTRAINT role_pk PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

CREATE TABLE clinic_staff (
    user_id  INT GENERATED ALWAYS AS IDENTITY CONSTRAINT clinic_staff_pk PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role_id  INT,
    CONSTRAINT fk_clinic_staff_role FOREIGN KEY (role_id) REFERENCES role(role_id)
);

describe role;
