# OnlineBookstore
This web-based application uses SQL database combined with PHP to let users browse a collection of books that are available in the bookstore. A user can search the bookstore by book name, author name, ISBN, genre, etc..

# Installation environment
unzip MOVAMP (movamp.zip) on your local drive, you will find the following: 
-	**mnt** folder
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

## Step 2: DB creation and import of the DB Schema on phpMyAdmin
1. Create a new database named **bookstore** (choose utf8_unicode_ci)
1. Go to the tab _Import_ and choose a file that contains the database DDL and click on the button (Go) (**Sql/DDL.sql**). 
1. Go to the tab _Import_ and choose a file that contains the database data and click on the button (Go) ( **Sql/Data.sql**).

- Now we have 15 tables installed on the MySQL server.
![](Images/sql_schema_tables.PNG)

## Step 3: Make sure that your application is uploaded on the movamp folder
1. go to **movamp\mnt\var\www** folder. Check the bookstore folder. It should have all php files (generated by the phpGenerator application).
2. Open the file **phpgen_settings.php**
3. Go to the line 21 and configure a database parameters as follows:
```php
function GetGlobalConnectionOptions()
{
    return
        array(
          'server' => 'localhost',
          'port' => '3306',
          'username' => 'root',
          'database' => 'bookstore',
          'client_encoding' => 'utf8'
        );
}

```
# Running the Online Bookstrore application
Now after installation of the database and the web application on the server, the next step is running the application on the web  browser with the URL : **http://localhost/bookstore**

To access to the application login with the username and password. We have 3 roles:
1. Admin: (uid: _admin_;  pwd:_admin_)
2. Owner: (uid: _ownwe_;  pwd:_owner_)
3. User:  (uid: _user1_;  pwd:_user1_)

### Login dialog 
The following Login dialog is shown: (enter your credentials as listed above)

![](Images/login_dialog.png)

### Creation of a new account: 
The following Registration dialog is shown when you click on _"Register Here"_ (on the above dialog for new accounts):

![](Images/registration_dialog.png)

### Password Recovery:
If you would like recover the password you must click on the link below the login form.

![](Images/password_recovery.png)

## Managing the Bookstore through the _OWNER_ account

If you log in with the owner user id and password, you will be able to manage the bookstore, books, users, accounts, etc.

![](Images/owner_page.png)

## Performing Operations on the _OWNER_ account

Some actions can be performed on list of items as adding a new record, refresh the list, export the list, print a report, or deleting the selected items you must go to the top right position on the list.

The following screenshots show some examples.

### Examples of Operations

![](Images/onwer_operation.png)

### List the available books
The figure below shows an extract of the books list.

![](Images/books_lists.PNG)

### Add a new book
![](Images/add_new_book.png)

### Edit an existing book
![](Images/edit_book.png)

### Order History on books
![](Images/book_history.png)

### Genres of books
![](Images/genres_list.png)

### List of Authors
![](Images/authors_list.png)

### List of Books with Authors
![](Images/book_authors.png)

### List of Publishers
![](Images/publishers_list.PNG)

## Bonus Operations: Search and Filter
The following screenshot shows how to perform a filter on some specific data (Title of a book).

![](Images/filter_title.PNG)

The following shows the results after applying the filter.

![](Images/books_lists_filter.PNG)

The following screenshot shows how to perform the search on a certain criteria.

![](Images/owner_search.png)


The following screenshot shows the results after searching for a specific name of publisher.

![](Images/publisher_after_search.PNG)



