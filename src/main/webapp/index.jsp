```jsp
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOy4d0l6T4n9z8tQp6s7LQYw6i8h9v1w0pKxKf5Yv6L4jX2wM1q2v3Z4" crossorigin="anonymous">

    <title>Hello DevOps Students of RMIT Vietnam!! Test scm!</title>
  </head>

  <body>

<%-- Add this logging code --%>
<%@ page import="java.io.*, java.util.Date, java.text.SimpleDateFormat" %>

<%
try {
    // Define the path for the log file inside the container
    String logDirPath = "/usr/local/tomcat/logs";
    String logFilePath = logDirPath + "/app.log";

    // Ensure the log directory exists
    File logDir = new File(logDirPath);
    if (!logDir.exists()) {
        logDir.mkdirs();
    }

    // Open the log file in append mode
    PrintWriter outLog = new PrintWriter(new FileWriter(logFilePath, true));

    // Create a timestamp
    String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());

    // Write the log entry
    outLog.println(timestamp + " - Page accessed by a user.");

    // Close the writer
    outLog.close();

} catch (IOException e) {
    e.printStackTrace();
}
%>

<p style="color: green;">
    <b>A new log entry was just added to /usr/local/tomcat/logs/app.log!</b>
</p>

<!-- The content of the website starts here now! -->

<div class="jumbotron">
  <h1 class="display-4">Hello DevOps Students of RMIT Vietnam!github webhook!</h1>

  <p class="lead">
    This is a very simple website template that uses bootstrap CSS framework!
    This is a new code to push for the github SCM poll!
  </p>

  <p class="lead">
    This website is build automatically by Jenkins!!! Yeahhhh!!! New Test
  </p>

  <hr class="my-4">

  <p>
    You can visit the website of School of Science, Engineering and Technology (SSET)
    of RMIT Vietnam by clicking to the button below!
  </p>

  <p>
    This is the new change that involves Jenkins, Maven, Ansible, Docker, ...
    in the pipeline! Woohoo!
  </p>

  <a class="btn btn-primary btn-lg"
     href="https://www.rmit.edu.vn/about-us/schools-and-centres/school-of-science-engineering-and-technology"
     role="button">
     Learn more about SSET
  </a>

  <a class="btn btn-success btn-lg"
     href="https://getbootstrap.com/docs/4.3/getting-started/introduction/"
     role="button">
     Learn more about Bootstrap CSS Framework
  </a>

</div>

<!-- The content of the website ends here! -->


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0i2T9J4mRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous">
</script>

  </body>
</html>
```
