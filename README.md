# College-Management-System-With-Database-Security
Website for the Student Portal is designed for suiting the needs of the student and the admin in an institute, college, school etc. It is a multi-page website having two panels, i.e., one for teacher and other for the student. The admin panel contains the ‗login ‘section in which unique user id and password is provided to admin. It further redirects the admin to admin panel if the user id and password provided is correct. Admin panel provides the ease to add new student details and generate user id and password for the student. It also has the facility to upload the marks, assignment and study material for the student so that student can access the uploaded content with the help of unique user id and password provided to them. 
 
Student Panel consists of a ‗home ‘section, ‗about us ‘section, ‗view details ‘section, ‗contact us ‘section and ‗feedback ‘section which provides the facility of viewing the uploaded assignments and view their marks. Feedback section provides the facility to students to ask the queries and doubts by submitting their requests using their email id and the admin will receive the doubts via mail. 
 
In website, HTML and CSS builds the basic structure and design of the website whereas JavaScript adds interactivity to it. Spring MVC is used to send and receive form data. JDBC is used to connect the website to database. Spring mail API is used to send mail. 
Thing To do Before Running 
1) In src/main/webapp/WEB-INF/spring-servlet.xml change value="Your Email ID" in line 21 and Enter value="Your Email Id password" in line 22 for feedback page.
2) For this project to run first time it needs internet connection to download all jar file present in pom.xml(No need to download extra jar files)
