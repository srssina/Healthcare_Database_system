# Healthcare_Database_system
## This project was part of my final project for Database subject at srbiau,
### decided to deploy the ER diagram of the following paper to sql code.



<a href="https://www.researchgate.net/publication/324182359_Article_ID_IJCIET_09_01_090_Cite_this_Article_Ahmad_Muhsin_Djawoto_Priyo_Susilo_and_Muafi_Hospital_Performance_Improvement_Through_The_Hospital_Information_System_Design" target="_blank">Article ID: IJCIET_09_01_090 Cite this Article: Ahmad Muhsin, Djawoto, Priyo Susilo and Muafi, Hospital Performance Improvement Through The Hospital Information System Design</a>
![image](https://github.com/srssina/Healthcare_Database_system/assets/95973648/11a78666-9b73-49c4-b6c5-96ce887c12b3)


# Link to SQL Code
You can view the full SQL code [here]((https://github.com/srssina/Healthcare_Database_system/blob/main/HCDB.sql)).

```sql
-- Sample SQL code shown below
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

```
<h2>Also i decided to use this project as part as my <u>principles of sowftware design</u> course at srbiau;</h2>

### first we start our project as designing our needs and requiremets:

### 1. User Roles and Permissions
* Admin: Manages all users, assigns roles, handles system settings.
* Doctor: Accesses patient records, updates treatment plans, schedules appointments.
* Nurse: Views patient records, updates vitals, assists in treatment.
* Receptionist: Manages patient appointments, updates contact information.
* Patient: Views personal health records, schedules appointments.

### 2. Functional Requirements
* Patient Registration: New patients can register and existing patients can update their information.
* Appointment Scheduling: Doctors and patients can schedule, update, and cancel appointments.
* Electronic Health Records (EHR): Secure storage and retrieval of patient health data.
* Billing and Payments: Generates bills for services and processes payments.
* Pharmacy Management: Tracks inventory and manages medication dispensing.

### 3. Non-Functional Requirements
* Security: Ensure patient data is encrypted and access is role-based.
* Scalability: The system should handle a growing number of users and data.
* Usability: The interface should be intuitive for all user roles.
* Reliability: System uptime should be above 99.9%.

