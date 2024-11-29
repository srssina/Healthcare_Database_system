## This is the data dictionary which define terms used in our data flow diagram

given information = PatientName + PatientNationalCode + SubmissionRecord + MedicalHistory + MedicalRecords + AllergyInformation + BloodType

Patient's Identity = {PatientName} + {PatientNationalCode} + {SubmissionRecord}

Patient's Description = {MedicalHistory} + {AllergyInformation} + {BloodType}

Valid=[True|False|NotRecognizable]

Recognised Medical History = [{MedicalHistory} | if Valid=True]

All Records = MedicalHistory + MedicalRecords + AllergyInformation + BloodType

EMR = PatientName + PatientNationalCode + SubmissionRecord + MedicalHistory + MedicalRecords +
AllergyInformation + BloodType + LabTestsResults + Diagnosis + ProgressNotes + VitalSigns + AssignedDoctors + Drugs

Estimated Appointment = {PatientName} + Descrpited Predicted Service + AppointmentCruciality

Requested Appointment = {PatientName} + AppointmentCruciality + AppointmetDate 

Estimated Cost = {PatientName} + Descrpited Predicted Service

Bills = (ServicesCost) + AppointmentCost