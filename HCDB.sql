CREATE DATABASE Hospital;

-- patient table
Create table patient(
  PatientId is Not null,
  Name varchar(128),
  Gender varchar(16),
  Age smallint(128),
  RecordID
  primary key (patientID)
  foreign key (MRID) REFERENCES medicalrecord(MRID)
);

--medical record of each patient
create table medicalrecord(
  MRID is not null,
  date datetime,
  diagnosis,
  drugs,
  reference varchar(128) 
  primary key (MRID)
  );

--doctors
create table doctor(
  doctorid int is not null,
  Name varchar(128),
  Gender varchar(16),
  Age smallint(128),
  specialist varchar(128)
  primary key(doctorid)
  );

--registeration
create table registeration(
  MRID,
  regdate datetime,
  poly,
  assurance,
  foreign key (MRID) REFERENCES medicalrecord(MRID)
  );

