CREATE TABLE Customer (
    Code VARCHAR2(8) NOT NULL PRIMARY KEY,  -- Example: CUXXXXXX
    FName VARCHAR2(30) NOT NULL,
    LName VARCHAR2(30),
    Address VARCHAR2(200),
    Arrearage INTEGER CHECK (Arrearage >= 0) NOT NULL,
    Office_Staff_Code VARCHAR2(8) NOT NULL
);
