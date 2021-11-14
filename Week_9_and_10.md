# Makers Apprenticeship Weeks 9 and 10

## Makers Learning Objectives

**Maven**

- [x]  I can explain what pom.xml is for
- [x]  I can start the app using Maven

**Thymeleaf**

- [x]  I can explain the code in `posts/index.html`
- [x]  I can plan a new template that could be used for editing a post

**Flyway**

- [x]  I can explain what a migration is
- [x]  I can explain when migrations are run
- [x]  I can explain the code in the two migration files in this directory `/db/migration/`
- [x]  I can explain the naming convention for flyway migration files

**Selenium**

- [x]  I can explain the code in `SignUpTest.java`
- [x]  I can write a new feature test for unsuccessful sign up

**Faker**

- [x]  I can explain what Faker does
- [x]  I can explain why it's useful

**JUnit4**

- [x]  I can explain the code in `PostTest.java`
- [x]  I could add more test cases to `PostTest.java`

**The repository pattern**

- [x]  I can explain the repository pattern

**SpringBoot**

- [x]  I can diagram how this SpringBoot application handles `GET "/posts"`

**Spring Security**

- [x]  I can explain how this app is secured

## Applied Learnings

- Acebook Java Cakes: [Java Cakes](https://github.com/delexii/acebook-JavaCakes)

## Personal Learning Objectives

- [x]  understand getters and setters for Java
- [x]  understand and explain what SpringBoot is used for
- [x]  familiarise myself with repository pattern
- [x]  learn how to apply HTML and CSS properties
- [x]  create a web app mockup
- [x]  learn how to modify and query databases using springboot

## Things to celebrate

- [x]  working well with a new team
- [x]  delivering a final project with completed mvp and extra functionality
- [x]  learned how to work with springboot and psql
- [x]  learned how to implement front end for java applications
- [x]  learned how to implement feature tests
- [x]  learned how heroku works and successfully deploy an app
- [x]  used a set process for deploying new code
- [x]  git branching and merging successfully

## Emotions 

I have really enjoyed delivering a great team project and taking my knowledge of java to a whole new level. From working with a new team of devs to implementing solutions to various problems and debugging on a daily basis, the past two weeks have challenged me to stay creative, focus on the bigger picture and be able to adapt quickly to new ideas. I am really proud of the contribution I was able to bring to the table and that we all worked well as a team to make the final project presentation successful.

Our main blockers as a team were firstly understanding how to query the database and retrieve various objects, and secondly establishing relationships between tables. Once we've started to figure out how spring boot works under the hood, we were able to divide and conquer many of the other MVP related tickets. All in all, it was a very steep learning curve which will be really beneficial once we all start our full time work in a couple of weeks.

Considering the complexity of the legacy code inherited two weeks ago and the many different new tools and frameworks we've had to quickly pick up, I am very happy with my learning and progress so far.

## Progress and Learnings

> Maven


**POM** is an acronym for **Project Object Model**. The pom.xml file contains information of project and configuration information for the maven to build the project such as dependencies, build directory, source directory, test source directory, plugin, goals etc.

Maven reads the pom.xml file, then executes the goal.

Maven's primary goal is a project management tool for Java.

IDE = integrated development environment

A java project structure

- source code
- test code
- project structure(directories, resources, assets)
- libraries or dependencies
- configuration thats specified how certain files work
- task running - build, test, run
- reporting (test coverage, number of classes etc)

> DISC
> 
- D (Direct, Decisive, Doer)

Leader, success, empathy, tend to focus on tasks rather than people

Prefer honesty, conciseness and directness in feedback

- I (Interactive, Interesting, Inspiring)

Ideas people, banter, creative, dynamic, energetic, innovative

Gentle feedback, genuine and praise for their work

- S (Sincere, Steady, Supportive)

Community, team, stability, sense of harmony and great listeners, loyal

Assume positive intent and encourage rather than criticise them, be authentic with them

- C (Careful, conscientious, cautious)

Safety, knowledge, meticulous, rich inner world, like to work on their own

Ask before giving feedback, let them know they are appreciated

Ways of expressing

- healthy
- average
- unhealthy

How to succeed in a team?

- [ ]  How to succeed in a team?
- [ ]  Rotate leadership
- [ ]  EQ check-ins
- [ ]  Feedback
- [ ]  Make time for socialising
- [ ]  Values - Team Goals
- [ ]  Agree on working styles
- [ ]  Make sure everyone is in the loop
- [ ]  Talk about nightmare and dream teams in the beginning
- [ ]  Set what your needs are

> Repository
> 

Repository pattern - special JavaScript object responsible for interacting with the database. Separates business logic(MVC) from logic that interacts with database

Post Repository inherits everything from CRUDRepository and knows what table to use based on the <parameters> parsed in

> Springboot Security
> 

SpringBoot Security - application framework that supports app level security

- login and logout functionality
- allow/block access to URLs to logged in users
- allow/block access to URLs to logged in users and with certain roles

Five Core Concepts:

**Authentication**

- knowledge based authentication =  proof of who you are - user id/ password, pin code, answer to a secret question
- possession based authentication = when app sends you a text message or phone call, key cards or badges, access token
- some apps use a multi factor authentication

**Authorisation**

- can this user do this?

**Principal**

- person you have identified through authentication
- currently logged in user
- app remembers the user across sessions
- but there is only one user per request (one user can have multiple IDs)

**Granted authority**

- fine grained permission

**Role or authorities**

- group of authorities assigned together
- store clerk assigned a role and automatically get all the authorities for that role

> Thymeleaf
> 

[Thymeleaf](http://www.thymeleaf.org/) is a Java template engine for processing and creating HTML, XML, JavaScript, CSS, and text.

*Spring Boot* provides auto-configuration for *Thymeleaf* by adding the *[spring-boot-starter-thymeleaf](https://search.maven.org/classic/#search%7Cga%7C1%7Ca%3A%22spring-boot-starter-thymeleaf%22)* dependency:

No explicit configuration is necessary. By default, HTML files should be placed in the *resources/templates* location.

Model Attribute

The *th:text=”${attributename}”* tag attribute can be used to display the value of model attributes. Let's add a model attribute with the name *serverTime* in the controller class:

If the model attribute is a collection of objects, the *th:each* tag attribute can be used to iterate over it. Let's define a *Student* model class with two fields, *id*, and *name*:

Finally, we can use Thymeleaf template code to iterate over the list of students and display all field values:

```
<tbody>
    <tr th:each="student: ${students}">
        <td th:text="${student.id}" />
        <td th:text="${student.name}" />
    </tr>
</tbody>
```

Thymeleaf comes with many useful utility classes that will help you in formatting and manipulating content on the templates. The engine provides methods for formatting string, parsing URI/URL, aggregating items in collections and processing common Java objects like Maps, Lists or Booleans.

> Git branching
> 
- Git branch <name> - to make a new branch
- Git branch - shows you all the branches available
- Git checkout <name> - to go to the branch
- Any changes now will be on the branch you are on (<name>)
- Git status check that you are on the right branch
- Git add .
- Git commit -m “”
- Now we are one commit ahead the main branch
- You can then do git push and copy what the terminal is saying and run that code
- If you are typing on the wrong branch, if you keep the window open, go to the branch you should have been working on, and then save your code, and it will save on the branch you were supposed to be working on
- On GitHub you can see the branches, and you can pull request them

## Useful resources

[SpringSecurity](https://www.youtube.com/watch?v=sm-8qfMWEV8&list=PLqq-6Pq4lTTYTEooakHchTGglSvkZAjnE&ab_channel=JavaBrains)

[Five Spring Security Concepts](https://www.youtube.com/watch?v=I0poT4UxFxE&ab_channel=JavaBrains)

[Frontbackend](https://frontbackend.com/)

[Query methods](https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.query-methods.sorting)

[Handling feature tests with selenium](https://www.guru99.com/alert-popup-handling-selenium.html#2)[Selenium contains() explained](https://www.guru99.com/using-contains-sbiling-ancestor-to-find-element-in-selenium.html#:~:text=contains%20%28%29%20in%20Selenium%20is%20a%20function%20within,ability%20to%20find%20the%20element%20with%20partial%20text)

[Static sorting](https://attacomsian.com/blog/spring-data-jpa-sorting#sort-query-results-using-static-sorting)

[Bootstrap collapse](https://getbootstrap.com/docs/4.0/components/collapse/)

[Snake game Java](https://www.youtube.com/watch?v=bI6e6qjJ8JQ&ab_channel=BroCode)

[Learn Spring Boot in 100 steps](https://relxlearning.udemy.com/course/spring-boot-tutorial-for-beginners/)

[Request Mapping Spring](https://dzone.com/articles/using-the-spring-requestmapping-annotation)

[Springboot introduction](https://www.tutorialspoint.com/spring_boot/spring_boot_introduction.htm)

Date format thymeleaf:

[Thymeleaf tutorial](https://frontbackend.com/thymeleaf/thymeleaf-tutorial)

[Working with dates in thymeleaf](https://springhow.com/handling-date-objects-in-thymeleaf/)

[Dates in Thymeleaf](https://frontbackend.com/thymeleaf/working-with-dates-in-thymeleaf)

Time format thymeleaf:

[https://www.ocpsoft.org/prettytime/](https://www.ocpsoft.org/prettytime/)

[github.com/makersacademy/course/blob/main/apprenticeship_module_outlines.md](http://github.com/makersacademy/course/blob/main/apprenticeship_module_outlines.md)

[https://www.ocpsoft.org/prettytime/](https://www.ocpsoft.org/prettytime/)