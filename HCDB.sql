CREATE DATABASE Hospital;

Create table patient(
  MRId is Not null,
  Name varchar(128),
  Gender varchar(16),
  Age smallint(128),
  RecordID
  primary key (MRId)
  foreign key (RecordID) REFERENCES record(RecordID)
);

create table record(
  recordID is not null,


  primary key (RecordID)
  );
