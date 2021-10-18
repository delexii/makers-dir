# Makers Apprenticeship Week 6

## Makers Learning Objectives

- [x]  Diagram the data flow from user action to server resource and back again
- [x]  Explain the basics of how databases work, including:
    - What tables are and how they are structured
    - What structured query language (SQL) is used for
    - One to one relationships
    - One to many relationships
    - Many to many relationships
- [x]  Follow an effective debugging process for database-backed web applications
- [x]  Build a simple web app that can read from and write to a database
- [x]  Write feature tests using Capybara
- [x]  Test-drive a simple Sinatra app
- [x]  Follow an effective process to debug web applications
- [x]  Explain and diagram the HTTP request/response cycle
- [x]  Explain and diagram the MVC pattern

## Applied Learnings

- Use SQL: [Bookmark Manager](https://github.com/delexii/bookmarks-manager)
- Query a database using Ruby: [SQL](https://github.com/delexii/makers-sql-session)
- Build an app with a DB: [Chitter](https://github.com/delexii/chitter-challenge-apprenticeships)

## Personal Learning Objectives

- [x]  Create a database
- [x]  Build a complete full-stack feature
- [x]  Be able to explain what databases are and how we interact with them
- [x]  Be able to build a simple app and connect it with a database

## Things to celebrate

- [ ]  having more of a work life balance
- [ ]  being able to diagram MVC patterns easier
- [ ]  being able to setup a project from scratch without using documentation
- [ ]  being able to explain and create databases

## Emotions

This week I really enjoyed about databases and why we use them to store different types of data. Practicing different SQL commands was also a useful exercise on SQLZoo, which definitely shaped my understanding of the four main basic operations we can do with databases (CRUD). 

Although there was quite a lot of new knowledge to grasp this week, the workshops delivered by our coach Eddie, along with the pair programming sessions have helped clarify a few of my uncertainties this week.

## Progress and Learnings

> Intro to Databases

- a database is simply organised part of a filesystem. It's optimised for storing and retrieving data.
- databases are the storage shelves of the digital world
- every database has a database mgmt. system which structures how we organise and interact with data. A common database system for modern web development is called PostgreSQL.

```ruby
Create, Read, Update, Delete
```

There are three ways in which a table can be related to another table:

1. One-to-one: A record in one table is related to one record in another table.
2. One-to-many: A record in one table is related to many records in another table.
3. Many-to-many: Multiple records in one table are related to multiple records in another table.

> Relational Databases

- organised in tables made of columns and rows (categories/data entries)
- strict data types
- highly structured
- users interact with them using Structured Query Language (SQL)
- the pattern of how everything is organised inside a relational database is a schema
- related data is grouped together. I.e. The name, email and password of a single user are grouped together on the same row.

    This is called "table normalisation" and reduces or eliminates data redundancy, or the unnecessary repetition of the same data, which both clogs up the system with information that doesn't need to be repeated as well as making it difficult to maintain that data.

- migrations = files that change your database are kept together (historical track)
- columns = keys - attributes
- rows = collection of specific data points that correspond to a column (values)

    ![Database Concepts](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4fbe50b2-bad8-4d9c-a2fd-6382c4341229/Screenshot_2021-10-13_at_13.08.20.png)

> Non-relational Databases

- not strictly relational
- allows for more flexible systems
- could be displayed in the form of key/value pairs, graph or document databases
- they are good for easy setups since the schema is not required
- the most commonly used non-relational databases are key/value stores, document databases and graph data stores

![Database Management Services](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3b23a563-2936-4aee-bdac-60c209c33b3b/Untitled.png)

> Object Relational Mapping

Object Relational Mapping is a technique for storing, retrieving, updating and deleting from an object-oriented program in a relational database

![Object Relational Mapping](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6deb1147-ed1f-4cc0-b20e-317c0478d683/Screenshot_2021-10-15_at_10.40.01.png)

> MVC Pattern

![MVC Pattern](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3289ba85-ac74-433d-9635-bb89ab2ee551/Screenshot_2021-10-15_at_14.46.04.png)

> SQL

PostgreSQL provides a built-in interface, called psql. It's a command-line tool that allows you to interact with databases. You can think of it like IRB: it's a REPL. Where IRB gives you a Ruby interface, psql's interface uses a different language: 'Structured Query Language', or SQL.

```
SELECT attribute-list
   FROM table-name
   WHERE condition
```

- `attribute-list`
- This is usually a comma separated list of attributes (field names)Expressions involving these attributes may be used. The normal mathematical operators `+, -, *, /` may be used on numeric values. String values may be concatenated using `||`To select all attributes use *The attributes in this case are: `name`, `region`, `area`, `population` and `gdp`
- `table-name`
    - In these examples the table is always `bbc`.
- `condition`
- This is a boolean expression which each row must satisfy.Operators which may be used include `AND`, `OR`, `NOT`, >, >=, =, <, <=The `LIKE` operator permits strings to be compared using 'wild cards'. The symbols _ and % are used to represent a single character or a sequence of characters. Note that `MS Access SQL` uses `?` and `` instead of `_` and `%` .The `IN` operator allows an item to be tested against a list of values.There is a `BETWEEN` operator for checking ranges.

> General learning

- [ ]  User Management

    **Signup**

    - creating a new entry in users table

    ```ruby
    <form action= '/users/ methd = '/post'>
    	<input type ='text' name='email'>
    	<input type ='text' name='password'>
    	<input type ='submit' value='Submit'>
    </form>
    ```

    - controller

    ```ruby
    get '/users/new' do
    	erb :users/new
    end

    post '/users' do
    	user create (params[:email], params[:password]
    	redirect_to '/sessions/new' or '/signin'
    end
    ```

    **Signin**

    ```ruby
    <form action= '/sessions = '/post'>
    	<input type ='text' name='email'>
    	<input type ='text' name='password'>
    	<input type ='submit' value='Submit'>
    </form>
    ```

    - controller

    ```ruby

    post '/sessions' do
    #find a user with the email from the form
    #compare submitted password with the one in the database
    	if user.password == params[:password]
    		session[:user_id]=user.id
    	else
    		redirect_to '/sessions/new' or '/signin' 
    	end
    end

    get'/bookmarks' do
    	if session[:user_id]
    		erb : bookmarks/index
    	else
    		redirect_to '/sessions/new'
    	end
    en
    ```

- [ ]  Digital Root of a number
    - [https://brilliant.org/wiki/digital-root/](https://brilliant.org/wiki/digital-root/)
    - modulo is the math operation of finding the remainder when you divide two numbers together
    - 6 mod 9 where 6 == Dividend and 9 == Divisor 6/9 == 0.66 0 * 9 = 0 6- 0 = 6
    - 1 + (n -1) % 9
    - **Step 1** divide 6/9 = 90
    - **Step 2** take the quotient and multiply b the Divisor (whole part == 0) and multiply by Divisor
    - **Step 3** take the answer from step 2 and subtract from Dividend

- [ ]  Representational State Transfer

    REST is about

    **Nouns:** Resources (e.g. *restaurants)*

    **Verbs:** HTTP verbs (*POST, GET, PATCH, DELETE)*

    When you want to write a web app, you need a few more routes on top of the basic create, read, update and delete. You need:

    - A route for listing all the records for a certain resource (e.g. all the restaurants).
    - A route to show a web form for entering the details of a new record.
    - A route to show a web form for entering the new details of an existing record.

    Rails has a set of conventions for what URLs to use for these extra things:

    `Verb    URI Pattern            Controller#action
    ------  ---------------------  ------------------
    GET     /restaurants           restaurants#index
    POST    /restaurants           restaurants#create
    GET     /restaurants/new       restaurants#new
    GET     /restaurants/:id/edit  restaurants#edit
    GET     /restaurants/:id       restaurants#show
    PATCH   /restaurants/:id       restaurants#update
    PUT     /restaurants/:id       restaurants#update
    DELETE  /restaurants/:id       restaurants#destroy`

    ```ruby
    DELETE /bookmarks/1
    C - POST ‘/bookmarks’
    R - GET ‘/bookmarks'
    R - GET ‘/bookmarks/1’
    U - PUT ‘bookmarks/1’
    D - DELETE ‘/bookmarks/1’
    GET ‘/bookmarks/new’
    GET ‘/peeps/new'
    spaces/new
    Get all the tags associated with bookmark 1
    GET bookmarks/1/tags?
    ```

- [ ]  SQL injection exec_params
- [ ]  rebase commits before pushing

## Useful resources

[One-to-many vs many-to-many](https://blog.supportgroup.com/getting-started-with-relational-databases-one-to-one-and-many-to-many-relationships)

[MVC](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)

[Setup ruby project](https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md)

[Setup rubocop](https://github.com/makersacademy/scaffolint)

[SQL Cheat sheet](http://www.cheat-sheets.org/sites/sql.su/)

[PostgreSQL](https://www.postgresqltutorial.com/postgresql-cheat-sheet/)

[Object Relational Mapping](https://www.youtube.com/watch?v=dHQ-I7kr_SY)

[MVC Architecture](https://www.youtube.com/watch?v=DUg2SWWK18I)

[Require Method in Ruby](https://www.thoughtco.com/requre-method-2908199)

[Makers Intro to Databases](https://github.com/makersacademy/course/blob/main/pills/databases.md)

[SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial)

[Capybara](https://devhints.io/capybara)

[SQL Murder Mystery](https://mystery.knightlab.com/)

[Class Methods](https://hackmd.io/sOCjb8IcSIaPvT54SXBb3Q?view)

[Entity Relationship Diagrams](https://hackmd.io/ICgoC6o8QJOdosAKJ6fhhw)