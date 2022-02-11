# Library-Application-using-Azure

This is an assignment of University of Washing Tacoma TCSS545 Database System Design couse. (Mar 2021)

I worked on the project with my teammate, James M Northup.

-------------------------------

Name: James M Northup,Jin Young Park 

Web app URL: https://libraryappgroup8.azurewebsites.net

We implemented Library Application. This app uses azure for both the DB, server, and web app. And backend development used Azure and Microsoft SQL Server Management Service, and the query language used was MSSQL. Also frontend development used Visual Studio 2019, and the language used was C# and html. This application is that searches book information and rents and returns the book that the user wants.

=======Usage=======
<When connecting with the web app>

1. Connect to the following URL on the Internet:
	https://libraryappgroup8.azurewebsites.net

2. If you want to search for information on a book, click the 'SEARCH' button in the header and search for the title or author of the book. 

3. If you want to borrow a book, log in and click the'RENT' button in the header. Then, on the page that appears, enter the ISBN of the book you want to borrow. However, if the book has not been returned or if there is a book that the user has not returned, it is impossible to rent it.

4.If you want to return the book, log in and click the'RETURN' button in the header. If there is a book to be returned by the user, a 'return' button appears along with the rental information of the book. When you click the 'return' button that appears, return is completed. However, if the user has no book to return, the return button does not appear.

5. If you want to check whether a book is available for rental, click the AVAILABLE button in the header and enter the ISBN of the book you want to check.
----------------------------------------------
<When running a application with Visual Studio>
Here are some instructions on how to compile and run the backend and frontend on Windows OS:

1. Install the microsoft SQL Server Management Studio

2. Open the SQL script and run it in the microsoft SQL Server Management Studio.

3. Install Visual Studio 2019 so you can run .NET.

4. Unzip the LibraryApplicationGroup8.zip file

5. Open the LibraryApplicationGroup8.sln in the unzipped file in Visual Studio 2019.

6. Open the Web.config file in the the LibraryApplicationGroup8.sln

7. The connectionString will be connected to the our Azure server and DB. If you want to connect to your server and DB, change this connectionString to the connectionString that connects to your DB.

ex)
<connectionStrings>
    <add name="DataBaseConnectionString" connectionString="Data Source=[Your_server_name];Initial Catalog=[Your_DB_name];uid=[LoginID];pwd=[Password];Timeout=60;Max Pool Size=5000" providerName="System.Data.SQLClient"/>
  </connectionStrings>

8. Click Run button
