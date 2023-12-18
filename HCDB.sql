CREATE DATABASE Hospital;

-- patient table
Create table patient(
  PatientId int is Not null,
  Name varchar(128),
  Gender varchar(16),
  Age smallint,
  MRID int,
  primary key (patientID)
  foreign key (MRID) REFERENCES medicalrecord(MRID)
);

--medical record of each patient
create table medicalrecord(
  MRID is not null,
  date DATETIME,
  diagnosis varchar(2048),
  drugs varchar(2048),
  reference varchar(128), 
  primary key (MRID)
  );

--doctors
create table doctor(
  doctorid int is not null,
  Name varchar(128),
  Gender varchar(16),
  Age smallint(128),
  specialist varchar(128),
  primary key(doctorid)
  );

--registeration
create table registeration(
  MRID int,
  regdate datetime,
  -- avoided poly column name because of reserved keywords
  Poly varchar(128),
  assurance varchar(256),
  foreign key (MRID) REFERENCES medicalrecord(MRID)
  );

--Administration
create table Administration(
  letterno varchar(128),
  inputid varchar(128),
  endorsm varchar(128),
  );



