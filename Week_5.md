# Makers Apprenticeship Week 5

## Makers Learning Objectives

- [x]  Write feature tests using Capybara
- [x]  Test-drive a simple Sinatra app
- [x]  Follow an effective process to debug web applications
- [x]  Explain and diagram the HTTP request/response cycle
- [x]  Explain and diagram the MVC pattern
- [x]  Define process modelling as a tool to describe and understand a process.
- [x]  Use process modelling to further your understanding of HTTP requests and responses.

## Applied Learnings

- TDD: [Learn Capybara](https://github.com/delexii/makers-dir/tree/main/the-web/capybara)
- Servers/clients: [Battle Game](https://github.com/delexii/battle-game)
- Build a simple app: [Rock Paper Scissors](https://github.com/delexii/rps-challenge-apprenticeships)

![Rock Paper Scissors Diagram](https://github.com/delexii/makers-dir/blob/33f40fd8c6ada0e6e04a91bcd122cce7f1bb4197/images/Rock%20Paper%20Scissors%20Diagram.png)

## Personal Learning Objectives

- [x]  tightening the loop across the whole web stack: from the browser, to a template, to a controller, to a Ruby object, to a test.
- [x]  using error messages and `p` to get visibility in templates, controllers, Ruby objects and tests
- [x]  complete the pair programming and individual challenges

## Things to celebrate

- [x]  achieved level 6 kyu on Codewars
- [x]  getting faster at understanding stuff
- [x]  finding a bug in a code line I could not solve during my first week by applying a more methodical approach
- [x]  built my first web app, although that took quite a long time

## Emotions   

As a person who is dominant on the visual side, working with code and getting to see the implementation in real time was an amazing learning experience. I've enjoyed working with http, seeing how browsers interact with servers and understanding the essential tools for building a simple web app.

I've also enjoyed learning about Capybara and Sinatra. Feature testing using capybara felt like quite a natural progression from irb. 

The workshop on debugging was particularly helpful this week.

## Progress and Learnings

> WWW

- HTTP: Hypertext Transfer Protocol is an application protocol that defines a language for clients and servers to speak to each other. A protocol is a system of rules that define how data is exchanged within or between computers.
- internet developed in the 70s and the web around the 90s
- browser - send requests using URL to servers and display response

    request response to browser - not all source code is being sent as some are private server side documents

    ![World Wide Web explained](https://github.com/delexii/makers-dir/blob/33f40fd8c6ada0e6e04a91bcd122cce7f1bb4197/images/World%20Wide%20Web%20explained.png)

- server = piece of software that runs on a computer
- server - listen to requests and send back files

    ![Client Server Diagram](https://github.com/delexii/makers-dir/blob/33f40fd8c6ada0e6e04a91bcd122cce7f1bb4197/images/Client%20Server%20Diagram.png)

- web tools - used to inspect elements of the files received by the browser. You can edit them on your view of the content

> Process Modelling

- Time to first byte = download time of files
- Request time depends on where the files are hosted (like us vs uk).Some companies host copies of their files in many places around the world (duplicate servers)
- HTTPStatus Codes:

    1xx Information

    2xx Success

    3xx Redirections

    4xx User/client error

    5xx Server error

- Process Modelling practical

    [HTTP Modelling](https://www.notion.so/HTTP-Modelling-704d25f166584db7b8d1601e43d08c78)

> Debugging web applications

*How do we identify a bug?*

- Code doesn't work a expected | Unintended behaviour | Errors
- Error types

    Syntax

    Runtime errors | NoMethodError

    HTTP status code or error | 404 | 500

    What's on the page is wrong

*How do we get visibility of bugs?*

- p/puts
- debugger on code editor
- network tab of dev tools
- capybara save_and_open_page

> Web frameworks

**Sinatra vs. Rails**

small framework for writing web applications

Sinatra is like a bike, less features, whereas rails is like a car with a lot of functionality in place already. Rack would be a pair of shoes. Sinatra and Rails both use Rack under the hood.

Sinatra is great for learning the basics of HTTP and routing.

The problem domain that Sinatra lives in is building web applications. And web applications which “speak” HTTP with browsers.

It therefor has methods like, for example, `get`, `post`, `put`, and `delete`. You can use these methods in order to describe how your application responds to HTTP requests.

The code uses language specific to the domain of HTTP

In Sinatra calls to methods like get, post, put, and delete are called routes. They take a path, and a block that handles a request.

**Capybara**

Capybara is a web-based automation framework used for creating functional tests that simulate how users would interact with your application.

Replaces the traditional irb feature testing

Capybara is a library/gem built to be used on top of an underlying web-based driver. 

When the page is loaded using the DSL (and underlying web driver i.e. rack, selenium), Capybara will try to locate the relevant element in the DOM (Document Object Model) and execute the action, such as click button, link, etc.

Web drivers supported by Capybara:

1. Rack

    Rack is the underlying technology behind all the web frameworks in the Ruby World

    rackup utility to run the servers in ruby

    an architecture that has three characteristicsRack provides a minimal, modular, and adaptable interface for developing web applications in Ruby

2. Selenium Web driver

> Pairing Challenge Learnings

1. Learn how to use HTTPie syntax to interact with HTTP servers
    - GET request - request to view a data source from a server

        ```ruby
        http -v [http://makersipsum.herokuapp.com](http://makersipsum.herokuapp.com/)
        ```

    - POST request - request to create a new resource

        ```ruby
        http -f -v POST [https://getpostworkout.herokuapp.com/](https://getpostworkout.herokuapp.com/) name=Joe
        ```

    - PUT request - request to update an existing resource

        ```ruby
        http -f -v PUT [https://getpostworkout.herokuapp.com/](https://getpostworkout.herokuapp.com/) name=Joe
        ```

    - DELETE request - request to delete an existing resource

        ```ruby
        http -f DELETE [https://getpostworkout.herokuapp.com/](https://getpostworkout.herokuapp.com/) name=Joe
        ```

2. Read and understand HTTP Headers

![HTTP Headers](https://github.com/delexii/makers-dir/blob/33f40fd8c6ada0e6e04a91bcd122cce7f1bb4197/images/HTTP%20headers.png)

3. HTTP requests can contain parameters, embedded into the URL as a query string.

![Path Diagram](https://github.com/delexii/makers-dir/blob/33f40fd8c6ada0e6e04a91bcd122cce7f1bb4197/images/Path%20Diagram.png)

4. Set up a basic Sinatra app and use Sinatra Reloader
5. Create routes and make them return html elements/forms
6. Separation of concerns between controlling (app file) and presentation concerns (views)

    ```ruby
    |     Incoming     |
          request
             v
    ____________________
    |    Controller    |
    ---------------------
    |      Model       |
    ____________________
    ```

7. Understand how to set query strings params and URL path params 
8. Implement feature tests using capybara
9. Hide params using POST/redirect/GET pattern
10. Use test helpers (helpers class) to DRY up code
11. General

    *What do sessions do?*

    - a session stores data about browser
    - session ID =  session id goes into the cookies on the browser where the data gets stored

    ![Session Diagram](https://github.com/delexii/makers-dir/blob/33f40fd8c6ada0e6e04a91bcd122cce7f1bb4197/images/Session%20Diagram.jpeg)

    *Feature tests Capybara*

    - separate files for each feature = diff scenarios for each feature on the same file

    *Global variables*

    - lose control of ability to decide when it could be changed
    - use RSpec or Sinatra - name clash if the library already has a global variable with a similar name
    - Global variables are generally avoided because they threaten “encapsulation”
    - [https://medium.com/@ashnashahgrover777/a-good-use-of-a-global-variable-f3e596c8070c](https://medium.com/@ashnashahgrover777/a-good-use-of-a-global-variable-f3e596c8070c)

## Useful resources

[How the Web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)

[IP Checker](https://ipinfo.info/html/ip_checker.php)

[History of the Web](https://webfoundation.org/about/vision/history-of-the-web/?gclid=Cj0KCQjw59n8BRD2ARIsAAmgPmJcknSPKlT1ckzH7grP8DX_Mxr1be9qlqv13OEC9aI7pYe0CJoAVKQaAikrEALw_wcB)

[Intro to HTTP](https://code.tutsplus.com/tutorials/http-headers-for-dummies--net-8039)

[HTTP Status Codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

[HTTP Protocol Explained](https://code.tutsplus.com/tutorials/http-the-protocol-every-web-developer-must-know-part-1--net-31177)

[Webapps for beginners](http://webapps-for-beginners.rubymonstas.org/index.html)

[Sinatra Reloader](http://sinatrarb.com/contrib/reloader)

[Sintra Intro](http://sinatrarb.com/intro.html)

[Params](https://github.com/makersacademy/course/blob/main/pills/params.md)

[Capybara Cheat Sheet](https://codecabulary.launchacademy.com/learn-test-driven-development/rspec/capybara-cheat-sheet)

[HTTPie Cheat Sheet](https://devhints.io/httpie)

[Sandi Metz Rules for devs](https://thoughtbot.com/blog/sandi-metz-rules-for-developers)

[HTML Cheatsheet](https://web.stanford.edu/group/csp/cs21/htmlcheatsheet.pdf)

[Class variables](http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/113-class-variables)

[Bootstrap](https://getbootstrap.com/docs/5.1/getting-started/introduction/#box-sizing)

[HTTP made easy](https://www.jmarshall.com/easy/http/#postmethod)
