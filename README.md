# OnlineBookstore
This application lets users browse a collection of books that are available in the bookstore. A user can search the bookstore by book name, author name, ISBN, genre, etc..

# Installation environment
unzip MOVAMP (movamp.zip), you will find the following: 
-	mnt folder
-	movamp application ![](Images/movamp_logo.PNG) (double click once on the icon)

You will see two screens, one for the Apache HTTP server and one for the SQL server (as follows). Click on “Allow Access” for both.

### Click on "Allow Access" on the Apache HTTP Server Dialog
![](Images/ApacheServer_Access.png)

### Click on "Allow Access" on the mysql Server Dialog
![](Images/SqlServer_Access.png)

# Database Creation on phpMyAdmin

## Step 1: Running phpMyAdmin
1.	Open a web browser such as Chrome
1.	Type the URL: http://localhost/phpmyadmin to open the PHPMYADMIN application:
1.  Use the following credentials and then click on GO
-	Username: root
-	Password: (empty)
-
## Step 1: DB creation and import of the DB Schema on phpMyAdmin
1. Create a new database named **bookstore** (choose utf8_unicode_ci)
1. Go to the tab _Import_ and choose a file that contains the database DDL and click on the button (Go) (**DDL.sql**). 
1. Go to the tab _Import_ and choose a file that contains the database data and click on the button (Go) ( **Data.sql**).


