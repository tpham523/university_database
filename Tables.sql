CREATE TABLE PROFESSOR(PSSN INT(9) PRIMARY KEY,
											 Pname VARCHAR(20),
											 Street_addr VARCHAR(50),
											 State VARCHAR(2),
											 Zip INT(5),
											 Area_code INT(3),
											 Digits INT(7),
											 Sex ENUM('M', 'F'),
											 Title ENUM('Mr.', 'Mrs.', 'Ms.', 'Dr.'),
											 Salary INT(6));

CREATE TABLE PROFESSOR_DEGREE(Pr_SSN INT(9),
															Degrees VARCHAR(50),
															PRIMARY KEY(Pr_SSN, Degrees),
															FOREIGN KEY(Pr_SSN) references PROFESSOR(PSSN));

CREATE TABLE DEPARTMENT(DNO INT(7) PRIMARY KEY,
												Dname VARCHAR(20) NOT NULL,
												Dphone VARCHAR(12),
												DLocation VARCHAR(20),
												Chair_SSN INT(9) NOT NULL,
												FOREIGN KEY(Chair_SSN) references PROFESSOR(PSSN));

CREATE TABLE COURSE(CNO VARCHAR(10) PRIMARY KEY,
										Ctitle VARCHAR(40) NOT NULL,
										Units INT(1) NOT NULL,
										Dept_no INT(7) NOT NULL,
										Ctextbook VARCHAR(50),
										FOREIGN KEY(Dept_no) references DEPARTMENT(DNO));

CREATE TABLE PREREQUISITE(courseNum VARCHAR(10),
													Prereq_courseNum VARCHAR(10),
													PRIMARY KEY(courseNum, Prereq_courseNum),
													FOREIGN KEY (courseNum) references COURSE(CNO));

CREATE TABLE SECTION(SNO INT(7),
										 Course_no VARCHAR(10),
										 Prof_SSN INT(9) NOT NULL,
										 Classroom CHAR(5) NOT NULL,
										 No_of_seats INT(3) NOT NULL,
										 Meeting_days VARCHAR(10) NOT NULL,
										 startTime VARCHAR(8) NOT NULL,
										 endTime VARCHAR(8) NOT NULL,
										 PRIMARY KEY(SNO, Course_no),
										 FOREIGN KEY (Course_no) references COURSE(CNO),
										 FOREIGN KEY (Prof_SSN) references PROFESSOR(PSSN));

	CREATE TABLE STUDENT(CWID INT(9) PRIMARY KEY,
											 Dnum INT(7) NOT NULL,
											 Fname VARCHAR(10) NOT NULL,
											 Lname VARCHAR(20) NOT NULL,
											 Stu_addr VARCHAR(30) NOT NULL,
											 Stu_phone VARCHAR(12) NOT NULL,
											 FOREIGN KEY (Dnum) references DEPARTMENT(DNO));

	CREATE TABLE ENROLLMENT(Stu_CWID INT(9),
												  Sec_no INT(7),
													C_num VARCHAR(10),
													Grade ENUM('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D', 'F'),
													PRIMARY KEY(Stu_CWID, Sec_no, C_num),
													FOREIGN KEY(Stu_CWID) references STUDENT(CWID),
													FOREIGN KEY(Sec_no) references SECTION(SNO),
													FOREIGN KEY(C_num) references COURSE(CNO) );

	CREATE TABLE MINOR(MStu_ID INT(9),
			   MDept_num INT(7),
			   PRIMARY KEY (MStu_ID, MDept_num),
										FOREIGN KEY (MStu_ID) references STUDENT(CWID),
										FOREIGN KEY (MDept_num) references DEPARTMENT(DNO) );
