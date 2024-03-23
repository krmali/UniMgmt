USE UNI;
GO

DELETE FROM DEPARTMENT;
GO

SET IDENTITY_INSERT DEPARTMENT ON;
GO

-- insert DATA to DEPARTMENT table
INSERT INTO DEPARTMENT
(ID, NAME, IS_MINOR)
VALUES
(1, 'Mathematical Statistics', 0),
(2, 'Demography & Biostatistics', 0),
(3, 'Applied statistics', 0),
(4, 'Computer Sciences', 0),
(5, 'Information Systems & Technology', 0),
(6,'Operations Research', 1);
GO

SET IDENTITY_INSERT DEPARTMENT ON;
GO
