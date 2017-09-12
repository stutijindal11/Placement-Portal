# Placement-Portal

JSP - Servlets - JDBC - MySQL

### About
A web application to automate placement process. Placement is a crucial part of every educational institute with most of the work done manually. This website will help students as well as the placement cell to digitalize these activities with ease and less paper work.

Students can login in to the website and register for the companies arriving on campus for placements. The admin login can be managed by the placement cell to add companies and other company related data.

### Features
1. #### Student Facilities:
* Students can upload their resume.
* They can update their details on profile tab.
* They can view company details such as company name, minimum cpga criteria for application, ctc, stipend etc.
* They can view the company schedules, register for them and get notified incase of announcements. 
* They can seek for placement procedure guidelines.

2. #### Admin Facilities:
* Insert or update student details.
* Admins can add companies and their details on the portal.


### Database
We used MySQL for database connectivity with a database named `Portal` containing the following tables:

* `Student(regno varchar(10) primary key,name varchar(10),gender varchar(10),email varchar(10),dob date,phone varchar(10) ,resume text,cgpa varchar(10));`
* `Company(name varchar(10) primary key,branch varchar(10),dateproc date,branch varchar(10),offer varchar(10),cgpa varchar(10),ctc varchar(10),stipend varchar(10));`
* `Stud_comp(regno varchar(10) foreign key,company name varchar(10) foreign key);`
* `Admin(username varchar(10),password varchar(10));`

### 
