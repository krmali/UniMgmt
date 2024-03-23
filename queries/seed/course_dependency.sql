USE UNI;
GO

DELETE FROM COURSE_DEPENDENCY;
GO

-- insert DATA to COURSE_DEPENDENCY table
INSERT INTO COURSE_DEPENDENCY
(COURSE_ID, DEPENDENT_COURSE_ID)
VALUES
--(1, 0),
--(2, 0),
--(3, 0),
--(4, 0),
--(5, 0),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 8),
(11, 1),
(12, 8),
(13, 9),
(14,13),
--(15, 0),
(16, 15),
(17, 2),
(18,14),
(19, 22),
(20, 2),
(21, 8),
(22, 9),
(23, 12),
(24, 1),
(25, 12),
(26, 10),
(27, 6),
(28, 6),
(29, 6),
--(30, 0),
--(31, 0),
--(32, 0),
--(33, 0),
(34, 2),
(35, 31),
(36, 0),
(37, 3),
--(38,  0),
(39, 35),
--(40, 0),
--(41, 0),
(42, 35),
--(43,0),
--(44, 0),
(45, 36),
--(46, 0),
(47, 4),
(48, 46),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
--(54, 0),
(55, 46),
(56,  4),
(57, 47),
(58, 54),
(59, 46),
(60, 4),
(61, 46),
--(62,  0),
(63, 46),
--(64, 0),
--(65, 0),
(66, 46),
--(67, 0),
(68, 50),
(69, 4),
(70, 46),
--(71, 0),
--(72, 0),
--(73, 0),
--(74, 0),
--(75, 0),
--(76, 0),
(77, 74),
--(78, 0),
--(79, 0),
--(80, 0),
--(81, 0),
--(81, 0),
--(82, 0),
--(83, 0),
--(84, 0),
--(85, 0),
--(86, 0),
(87, 50),
--(88, 0),
(89, 5),
--(90, 0),
--(91, 0),
--(92, 0),
--(93, 0),
--(94, 0),
--(95, 0),
--(96, 0),
--(97, 0),
--(98, 0),
(99, 90);
--(100, 0);
GO