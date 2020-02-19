INSERT INTO PROFESSOR (PSSN, Pname, Street_addr, State, Zip, Area_code, Digits, Sex, Title, Salary)
						VALUES (123456789, "Charles Xavier", "123 Whispering Pine Cir", "CA", 92703, 714, 1562389, 'M', "Dr.", 100230),
									 (456239870, "David Cage", "278 Squirrel St.", "CA", 92780, 909, 1234889, 'M', "Mr.", 70293),
									 (562839702, "Martha Stewart", "281 Puppy Blvd.", "CA", 92739, 328, 2837328, 'F', "Dr.", 129000);
									 
									 
INSERT INTO PROFESSOR_DEGREE(Pr_SSN, Degrees)
						VALUES (123456789, "PhD in Mathematics"),
									 (456239870, "MS in Computer Science"),
									 (562839702, "PhD in Biology");

INSERT INTO DEPARTMENT(DNO, Dname, Dphone, Dlocation, Chair_SSN)
						VALUES (001, "Mathematics", "700-811-911", "800 College Blvd.", 123456789),
									 (002, "Computer Science", "700-822-922", "801 College Blvd.", 456239870),
									 (003, "Biology", "700-833-933", "802 College Blvd.", 562839702);

INSERT INTO COURSE(CNO, Ctitle, Units, Dept_no, Ctextbook)
	    VALUES ("MATH-115", "Introduction to Algebra", 3, 001, "Algebra is easy"),
									 ("CPSC-131", "Data Structures", 3, 002, "Data Structures with C++"),
									 ("BIOL-301", "Human Anatomy", 4, 003, "The Human Body"),
									 ("CPSC-440", "Computer Architecture", 3, 002, "Computer Organization and Architecture"),
									 ("MATH-270", "Linear Algebra", 3, 001, "Introduction to Linear Algebra"),
									 ("BIOL-401", "Microbiology", 4, 003, "Introduction to Microbiology");
									 
INSERT INTO PREREQUISITE(courseNum, Prereq_courseNum)
						VALUES("CPSC-440", "CPSC-110");
									 
INSERT INTO SECTION(SNO, Course_no, Prof_SSN, Classroom, No_of_seats, Meeting_days, startTime, endTime)
						VALUES (789123, "MATH-115", 123456789, "MH709", 32, "MW", "8:00AM", "9:45AM"),
									 (123789, "BIOL-401", 562839702, "MH101", 50, "TTH", "10:00AM", "1:30PM"),
									 (123678, "BIOL-301", 562839702, "MH201", 40, "TTH", "3:00PM", "5:30PM"),
									 (789234, "MATH-270", 123456789, "MH402", 40, "MW", "11:00AM", "12:45PM"),
									 (567890, "CPSC-131", 456239870, "CS115", 35, "MW", "2:30PM", "3:45PM"),
									 (567891, "CPSC-440", 456239870, "CS301", 45, "TTH", "7:00PM", "9:45PM");

INSERT INTO STUDENT(CWID, Fname, Lname, Stu_addr, Stu_phone, Dnum)
						VALUES (800123456, "Brad", "Pitt", "123 Sunset Blvd.", "400-123-456", 001),
									 (800456789, "Leonardo", "Di Caprio", "234 Sunset Blvd.", "400-233-133", 002),
									 (800678345, "Sandra", "Bullock", "789 Rising Star Ave.", "210-233-123", 003),
									 (800234123, "Jennifer", "Aniston", "890 Rising Star Ave.", "210-234-456", 002),
									 (800234678, "Tony", "Stark", "3000 Iron Man St.", "540-522-111", 002),
									 (800445632, "David", "Banner", "999 Green Giant Blvd.", "500-533-222", 003),
									 (800345232, "Stephen", "Strange", "456 Sparkling Circle Cir.", "134-343-222", 002),
									 (800678231, "Carol", "Danvers", "555 Mars Colony Ave.", "234-232-111", 001);
									 
INSERT INTO MINOR(MStu_ID, MDept_num)
						VALUES(800123456, 002),
									(800445632, 001),
									(800234678, 001),
									(800678231, 003);
									
INSERT INTO ENROLLMENT(Stu_CWID, Sec_no, C_num, Grade)
						VALUES(800123456, 789123, "MATH-115", "A"),
									(800123456, 789234, "MATH-270", "B-"),
									(800123456, 567890, "CPSC-131", "A-"),
									(800123456, 123678, "BIOL-301", "C"),
									
									(800234678, 789123, "MATH-115", "A+"),
									(800234678, 789234, "MATH-270", "A+"),
									(800234678, 567891, "CPSC-440", "A+"),
									(800234678, 123789, "BIOL-401", "A"),
									
									(800678231, 789234, "MATH-270", "A"),
									(800678231, 567890, "CPSC-131", "A+"),
									
									(800456789, 789123, "MATH-115", "C"),
									(800456789, 567890, "CPSC-131", "B"),
									(800456789, 123678, "BIOL-301", "D"),
									
									(800345232, 789123, "MATH-115", "A"),
									(800345232, 123789, "BIOL-401", "A+"),
									(800345232, 123678, "BIOL-301", "A+"),
									
									(800678345, 789123, "MATH-115", "C+"),
									(800678345, 789234, "MATH-270", "F"),
									
									(800234123, 567890, "CPSC-131", "B-"),
									(800234123, 789234, "MATH-270", "B+"),
									
									(800445632, 123678, "BIOL-301", "A+"),
									(800445632, 123789, "BIOL-401", "A+");
									
									
									
									
								
									 