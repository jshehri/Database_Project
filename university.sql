-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 12:19 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `BID` varchar(5) NOT NULL,
  `BName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `BID` varchar(5) NOT NULL,
  `CRNum` int(3) NOT NULL,
  `CRName` varchar(10) NOT NULL,
  `Floor` int(2) NOT NULL,
  `CRType` varchar(10) NOT NULL,
  `Capacity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `ColgID` int(2) NOT NULL,
  `ColgName` varchar(50) NOT NULL,
  `ColgDesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`ColgID`, `ColgName`, `ColgDesc`) VALUES
(1, 'College of Art and Sciences', 'The College of Arts & Sciences at Saint Joseph’s University offers programs in the humanities, natural sciences and social sciences for students pursuing bachelor''s degrees, master''s degrees, professional certificates and certifications, and interdisciplinary doctorates in Education Leadership. The College also provides the liberal arts foundation that is the heart of every student’s education at Saint Joseph’s, whatever your major or level.'),
(2, 'School of Business', 'The Erivan K. Haub School of Business is an international AACSB-accredited institution in business and accounting offering programs at the bachelor''s, master''s and executive master''s levels. U.S.News & World Report has ranked the school''s part-time MBA, risk-management and insurance, marketing, management, and finance programs among the top in the nation. The Haub School was recently named one of the nation''s top business schools in the Princeton Review''s "The Best 294 Business Schools," and the undergraduate program was recently recognized by Bloomberg''s Businessweek.');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` varchar(6) NOT NULL,
  `CName` varchar(70) NOT NULL,
  `NoOfCredits` int(1) NOT NULL,
  `CDesc` text NOT NULL,
  `ProgID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `CName`, `NoOfCredits`, `CDesc`, `ProgID`) VALUES
('CSC120', 'Computer Science I', 4, 'Computer programming for beginners. Very little prior knowledge regarding how computers work is assumed. Learn how to write understandable computer programs in a programming language widely used on the Internet. Go beyond the routine skills of a computer user and learn the programming fundamentals: data, variables, selection, loops, arrays, input/output, methods and parameter passing, object and classes, abstraction. Take what is learned and write programs for use on the Internet. One hour per week of the course is a required laboratory', 1),
('CSC121', 'Computer Science II', 4, 'The course covers intermediate programming techniques emphasizing advanced object oriented techniques including inheritance, polymorphism, and interfaces. Other topics include recursion, exception handling, design patterns, simple GUI programming, and dynamic containers such as linked lists, stacks, queues, and trees.', 1),
('CSC202', 'Computer Architecture', 3, 'Overview of computer system organization, hardware, and communications. Introduction to combinational and sequential logic, arithmetic, CPU, memory, microprocessors, and interfaces. CISC vs. RISC processors. Assembly language programming, microarchitecture, and microprogramming on a variety of processors.\r\nPrerequisite:\r\nCSC 121 Computer Science II', 1),
('CSC240', 'Discrete Structures I', 3, 'Topics include: finite probability space, conditional probability, Bayes’ theorem, permutations and combinations, statistics and sampling distributions, the Central Limit Theorem, hypothesis testing, correlation, regression analysis, data encoding, channel capacity, the Shannon coding theorem. Data analysis projects using an appropriate statistical package will be assigned. \r\nPrerequisite:CSC 121 Computer Science II, or permission of instructor', 1),
('CSC241', 'Discrete Structures II', 3, 'Topics include: functions, relations, propositional and first order predicate logic, set theory, proofs and their construction. The course will use a declarative language as a tool to support concrete implementations of the mathematical ideas.     \r\nPrerequisite:\r\nCSC 240 Discrete Structures I', 1),
('CSC261', 'Principles of Programming Languages', 3, 'The general principles underlying programming languages, including such topics as syntax and its specification, data types, data control, flow control, storage management and support for design patterns. Examples drawn from a variety of programming languages, including functional, object-oriented and procedural languages, will be presented.\r\nPrerequisite:\r\nCSC 201 Data Structures or permission of instructor', 1),
('CSC281', 'Design and Analysis of Algorithms', 3, 'This course presents fundamental techniques for designing efficient computer algorithms and analyzing their running times. Topics include asymptotics, solving summations and recurrences, sorting and selection, graph algorithms (depth-first and breadth-first search, minimum spanning trees, and shortest paths), algorithm design techniques (divide-and-conquer, dynamic programming, and greedy algorithms), and introduction to NP-completeness.     \r\nPrerequisite:\r\nCSC 201 Data Structures or permission of instructor', 1),
('CSC310', 'Computer Systems', 3, 'An overview of operating systems and the software required to integrate computer hardware into a functional system. Topics include operating systems structure, interrupt driven systems, concurrency, memory management, file systems and security, and system calls.  \r\nPrerequisite:\r\nCSC 281 Design and Analysis of Algorithms or permission of instructor.', 1),
('CSC315', 'Software Engineering', 3, 'Principles of designing large programs, including issues of specification, documentation, design strategies, coding, testing and maintenance. Students work in small groups to design and implement a major software project.     \r\nPrerequisite:\r\nCSC 281 Design and Analysis of Algorithms or permission of instructor', 1),
('CSC495', 'Computer Science Project', 3, 'Students will work on a substantial application based upon their prior knowledge.     \r\nPrerequisite:\r\nCSC 315 Software Engineering or permission of instructor', 1),
('CSC500', 'Discrete Structures', 3, 'Mathematics needed for Computer Science. Topics covered include: functions, relations, propositional and first order predicate logic, set theory, proofs and their construction, counting and elementary probability. The course will use a declarative language as a tool to support concrete implementations of the mathematical ideas.', 2),
('CSC501', 'Introductory and Intermediate Computer Programming 1', 3, 'This is an intensive, one-semester two-course sequence intended to provide students with the necessary background in programming for the graduate program. The use of the computer to solve problems. Students will learn general principles of program design at first by using libraries of predefined program units, and later by constructing complete programs. Emphasis is on developing techniques for program design that lead to correct, readable and maintainable programs. Intermediate programming techniques including the use of recursion. An introduction to encapsulated data structures. Lists and list sorting will be used to introduce a discussion of algorithm efficiency.', 2),
('CSC502', 'Introductory and Intermediate Computer Programming 2', 3, 'This is an intensive, one-semester two-course sequence intended to provide students with the necessary background in programming for the graduate program. The use of the computer to solve problems. Students will learn general principles of program design at first by using libraries of predefined program units, and later by constructing complete programs. Emphasis is on developing techniques for program design that lead to correct, readable and maintainable programs. Intermediate programming techniques including the use of recursion. An introduction to encapsulated data structures. Lists and list sorting will be used to introduce a discussion of algorithm efficiency.', 2),
('CSC550', 'Object Oriented Design and Data Structures', 3, 'The course combines a strong emphasis on Object-Oriented Design principles and design patterns with the study of data structures. Fundamental Abstract Data Types, their implementations and techniques for analyzing their efficiency will be covered. Students will design, build, test, debug and analyze medium-size software systems and learn to use relevant tools. \r\nStudent must earn a grade of B or better\r\nPrerequisite:\r\nCSC 502 Intermediate Computer Programming or permission of the Graduate Director.', 2),
('CSC551', 'Design and Analysis of Algorithms', 3, 'Concepts of program complexity; basic approaches to complexity reduction: data structures and techniques; worst cases and expected complexity. Topics to be covered may include sorting, set manipulation, graph algorithms, matrix multiplication, and finite Fourier transforms, polynomial arithmetic, and pattern matching. \r\nPrerequisite:\r\nCSC 550 Object Oriented Design and Data Structures', 2),
('CSC552', 'Computer Architecture', 3, 'Overview of computer system organization, hardware components, and communications. Introduction to boolean algebra, combinational and sequential logic, arithmetic, the CPU, memory, microprocessors, and interfaces. CISC vs. RISC processors. Practical assembly language programming will be the emphasis with an introduction to micro architecture and micro-programming on a variety of processors.', 2),
('CSC553', 'Computer Systems', 3, 'An overview of the software required to integrate computer hardware into a functional system. The following topics are covered. Operating systems a resource managers and as virtual machines. System calls, in particular those required for process and file management; interrupt driven systems; concurrency; memory management; file systems and security. \r\nPrerequisite:\r\nCSC 550 Object Oriented Design and Data Structures or permission of the Graduate Director', 2),
('CSC554', 'Theory of Computation', 3, 'Formal languages, formal grammars, abstract machines; models of computation (e.g. Turing machines); computational complexity (NP completeness); undecideability and uncomputability. \r\nPrerequisite:\r\nCSC 500 Discrete Structures', 2),
('CSC610', 'Software Engineering', 3, 'The purpose of this class is to teach the process of developing software. It combines a study of methods, tools, and techniques for creating and evolving software products, with the practical skills needed to deliver high-quality software products on schedule. The methods that are studied include requirements, specification, design, implementation, testing, and maintenance. The course includes a substantial group project. \r\nPrerequisite: \r\nCSC 550 Object Oriented Design and Data Structures', 2),
('CSC621', 'Database Systems', 3, 'This course covers the concepts and structures necessary to design and implement a database management system. Topics to be covered: data models (entity-relationship and relational), SQL, normalization, storage structures, enterprise applications and database integrity. \r\nPrerequisite:\r\nCSC 550 Object Oriented Design and Data Structures', 2),
('CSC627', 'Introduction to Security', 3, 'Topics include fundamental concepts in confidentiality, integrity, and availability, access control methods, cryptographic concepts, physical security, malware, computer viruses, privacy-invasive software, malware detection, network security, web security, security models, software vulnerability assessment.', 2),
('CSC680', 'Artificial Intelligence', 3, 'The course covers fundamental concepts such as role of logic in reasoning, deductive proofs, and blind and informed search techniques. Additional topics may include inductive learning, genetic algorithms, decision trees, planning, natural language processing, game trees and perceptron learning. Course includes programming projects in a suitable language. \r\nPrerequisite: \r\nCSC 500 Discrete Structures', 2),
('CSC681', 'Programming Paradigms', 3, 'An exploration of the relationships between computational paradigms and the computer languages that support them. The Lambda calculus and functional programming, resolution and logic based languages, machine based models and imperative languages. The impact of the computational model on program structure and language design. Mid-sized programming project will be used to illustrate the concepts. \r\nPrerequisite:\r\nCSC 550 Object Oriented Design and Data Structures', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DeptID` int(3) NOT NULL,
  `DeptName` varchar(50) NOT NULL,
  `ColgID` int(2) NOT NULL,
  `BID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DeptID`, `DeptName`, `ColgID`, `BID`) VALUES
(11, 'Computer Science', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` varchar(6) NOT NULL,
  `EmpFName` varchar(30) NOT NULL,
  `EmpLName` varchar(30) NOT NULL,
  `JobTitle` varchar(30) NOT NULL,
  `EmpPhone` int(10) NOT NULL,
  `EmpEmail` varchar(30) NOT NULL,
  `DeptID` int(3) NOT NULL,
  `UName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FID` varchar(6) NOT NULL,
  `FFName` varchar(30) NOT NULL,
  `FLName` varchar(30) NOT NULL,
  `FTitle` varchar(30) NOT NULL,
  `FMajor` varchar(30) NOT NULL,
  `FPhone` int(10) NOT NULL,
  `FEmail` varchar(30) NOT NULL,
  `FPicture` blob,
  `DeptID` int(3) NOT NULL,
  `UName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UName` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `UType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgID` int(2) NOT NULL,
  `ProgName` varchar(50) NOT NULL,
  `ProgType` varchar(4) NOT NULL,
  `SATMinScore` int(4) DEFAULT NULL,
  `GREMinScore` int(3) DEFAULT NULL,
  `MinGPA` decimal(4,2) DEFAULT NULL,
  `DeptID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`ProgID`, `ProgName`, `ProgType`, `SATMinScore`, `GREMinScore`, `MinGPA`, `DeptID`) VALUES
(1, 'BS.Computer Science', 'BS', 1080, NULL, '3.27', 11),
(2, 'MS.Computer Science', 'MS', NULL, NULL, '3.00', 11);

-- --------------------------------------------------------

--
-- Table structure for table `runs`
--

CREATE TABLE `runs` (
  `CID` varchar(6) NOT NULL,
  `SID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `BID` varchar(5) NOT NULL,
  `CRNum` int(3) NOT NULL,
  `CID` varchar(6) NOT NULL,
  `Time` time NOT NULL,
  `Day` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SID` int(5) NOT NULL,
  `SName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SID`, `SName`) VALUES
(1, 'Spring15'),
(2, 'Summer15'),
(3, 'Fall15'),
(4, 'Spring16'),
(5, 'Summer16'),
(6, 'Fall16'),
(7, 'Fall16'),
(8, 'Spring17');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StdID` varchar(10) NOT NULL,
  `StdFName` varchar(30) NOT NULL,
  `StdLName` varchar(30) NOT NULL,
  `StdPhone` int(10) NOT NULL,
  `StdEmail` varchar(30) NOT NULL,
  `StdAddress` varchar(100) NOT NULL,
  `StdPicture` int(11) DEFAULT NULL,
  `ProgID` int(2) NOT NULL,
  `UName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`BID`,`CRNum`),
  ADD KEY `CRNum` (`CRNum`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`ColgID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CID`),
  ADD KEY `ProgID` (`ProgID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeptID`),
  ADD KEY `ColgID` (`ColgID`),
  ADD KEY `BID` (`BID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `UName` (`UName`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `UName` (`UName`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UName`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`ProgID`),
  ADD KEY `DeptID` (`DeptID`);

--
-- Indexes for table `runs`
--
ALTER TABLE `runs`
  ADD PRIMARY KEY (`CID`,`SID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`BID`,`CRNum`,`CID`),
  ADD KEY `CID` (`CID`),
  ADD KEY `CRNum` (`CRNum`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StdID`),
  ADD KEY `ProgID` (`ProgID`),
  ADD KEY `UName` (`UName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `ColgID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DeptID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `ProgID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `building` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`ProgID`) REFERENCES `program` (`ProgID`) ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`ColgID`) REFERENCES `college` (`ColgID`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`UName`) REFERENCES `login` (`UName`) ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`UName`) REFERENCES `login` (`UName`) ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `departmentID` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`) ON UPDATE CASCADE;

--
-- Constraints for table `runs`
--
ALTER TABLE `runs`
  ADD CONSTRAINT `runs_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `runs_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `semester` (`SID`) ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `building` (`BID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`CRNum`) REFERENCES `classroom` (`CRNum`) ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`ProgID`) REFERENCES `program` (`ProgID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`UName`) REFERENCES `login` (`UName`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
