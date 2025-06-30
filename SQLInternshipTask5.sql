USE EyeHospitalDB;

-- INNER JOIN: Find doctors and their appointments
SELECT D.Name, A.AppointmentDate
FROM Doctors D
INNER JOIN Appointments A
ON D.DoctorID = A.DoctorID;

-- LEFT JOIN: Find all doctors and their appointments (if any)
SELECT D.Name, A.AppointmentDate
FROM Doctors D
LEFT JOIN Appointments A
ON D.DoctorID = A.DoctorID;

-- RIGHT JOIN: Find all appointments and their corresponding doctors (if any)
SELECT D.Name, A.AppointmentDate
FROM Doctors D
RIGHT JOIN Appointments A
ON D.DoctorID = A.DoctorID;

-- FULL OUTER JOIN (SQLite does not support FULL OUTER JOIN directly)
-- Find all doctors and all appointments
SELECT D.Name, A.AppointmentDate
FROM Doctors D
LEFT JOIN Appointments A
ON D.DoctorID = A.DoctorID
UNION
SELECT D.Name, A.AppointmentDate
FROM Doctors D
RIGHT JOIN Appointments A
ON D.DoctorID = A.DoctorID;

-- Joining more than 2 tables: Find patients, doctors, and appointments
SELECT P.Name, D.Name, A.AppointmentDate
FROM Patients P
INNER JOIN Appointments A
ON P.PatientID = A.PatientID
INNER JOIN Doctors D
ON A.DoctorID = D.DoctorID;

