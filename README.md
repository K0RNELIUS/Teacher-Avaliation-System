# Teacher-Avaliation-System
For my Database class we were required to develop a Teacher Avaliations System to allow students to review their teacher and see the reviews of other students. In this sense, it would create a helpful community when choosing classes.<br>

To run this project in your computer, it will be necessary to have MySQL, and Node installed locally. The following links might be of use for windows: <br>
https://nodejs.org/en/download <br>
https://dev.mysql.com/downloads/installer/ <br>

Having done this, let's move on to what else will be required. <br>

Since my system uses express and mysql2 to establish connection to database and send changes, we will need to install these dependencies.
In this sense, I will provide a simple instalation guide using VsCode. With the project cloned or forked, open a terminal in the project and execute the following command. 
This command will make the needed instalations. 

![Alt text](</images readme/instalacao bd.png>)

Perfect! Now you will need to make a small change to the server.js file which is inside the src directory in the project.<br>
To not share MySQL password, I have left the fields required blanck. So unless the following steps are met, the system will not work.<br>

To establish the connection from the system to a database, the server file will need the user, password, and database name from MySQL to establish a connection if the database exists or create a new database with the provided name. To do this, change fields indicated by the box or line with the comments instructions below:

![Alt text](</images readme/changes1.jpeg>)

![Alt text](</images readme/changes2.jpeg>)

Fantastic! To finish the project setup, all left is to know how to run the server and access the interface. <br>
To run the server make sure the terminal path is in the src file, and run the following command:

![Alt text](</images readme/run server.png>)

With this command, the server should be running, to confirm it will log some messages in the terminal saying it created tables, procedures, and views.
Furthermore, the url to access the interface will now be available.
Type the following url to your favorite browser to manipulate the DB with the interface. 
Note that the interface will only be available to interact if the server is running.

![Alt text](</images readme/result.png>)

Following these steps, you should be able to test the system with own SQL queries in MySQL or through the interface provided. <br>
If you encounter any problems in the setup or with the system, please contact me through my email (leandro.kornelius@gmail.com) for us to chat.<br>
Thank you!


