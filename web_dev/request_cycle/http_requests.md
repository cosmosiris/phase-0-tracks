What are some common HTTP status codes?
  The requests table on the network tab displays multiple columns including name, status, type, and initiatior. HTTP status codes are standard response codes given by web site servers on the internet. The codes can help to identify the cause of a problem when a page or resource does not load properly. Status codes are sometimes called browser error codes or internet error codes.

  The first digit of the status code specifies one of five standard classes of responses.
      1xx: Information
      2xx: Successful
      3xx: Redirection
      4xx: Client Error:  the request for a web page or other resource contains bad syntax or cannot be filled for some other reason, presumable by fault of the client (the web surfer)
      5xx: Server Error: includes those where the request for a web page or other resource is understood by the website's server but is incapable of filling it for some reason.

  Some common status codes are
      ---400(Bad Request): Whenever the client sends a request the server is unable to understand, the 400 Bad Request error page shows up. It usually happens when the data sent by the browser doesn’t respect the rules of the HTTP protocol, so the web server is clueless about how to process a request containing a malformed syntax.
      ---401(Authorization Required): password-protected web page behind the client's request
      ---403(Forbidden): You can encounter the 403 Forbidden error page when the server understands the client’s request clearly, but for some reasons refuses to fulfil it. This is neither a malformation nor an authorization problem.The most common reason is that the website owner doesn’t permit visitors to browse the file directory structure of the site. When this kind of protection is enabled you can’t access folders directly on the website.
      ---404(Not Found): Most people are bound to recognize this one. A 404 error happens when you try to access a resource on a web server (usually a web page) that doesn’t exist. Some reasons for this happening can for example be a broken link, a mistyped URL, or that the webmaster has moved the requested page somewhere else (or deleted it).
      ---500(Internal Server Error): The server encountered an unexpected condition which prevented it from fulfilling the request.
      ---502(Bad Gateway)
      ---503(Service Unavailable): Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:
        server crash
        server maintenance
        server overload
        server maliciously being attacked
        a website has used up its allotted bandwidth
        server may be forbidden to return the requested document
      This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem.


  Here is a link to a full list of status codes: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

What is the difference between a GET request and a POST request? When might each be used?
  HTTP enables communications between clients(browser) and servers(an application on a computer). It is a request-response protocol between a client and server. For example, a client submits an HTTP request to the server and the server returns a response to the client.

  The two methods used for request and response are GET and POST. GET requests fata from a specified resource and POST submits data to be processed to a specified resource. When form data is being submitted to a server, forms can use either a post method or get method (method="POST" or method="GET") in the <form> element.

  link to more info: http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  An HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.When you enter a website using cookies, you may be asked to fill out a form providing personal information; like your name, e-mail address, and interests. This information is packaged into a cookie and sent to your Web browser, which then stores the information for later use.  The next time you go to the same Web site, your browser will send the cookie to the Web server. The message is sent back to the server each time the browser requests a page from the server.

  more information: http://www.webopedia.com/DidYouKnow/Internet/all_about_cookies.asp

  http://computer.howstuffworks.com/internet/basics/question82.htm