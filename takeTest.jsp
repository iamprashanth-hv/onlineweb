<!DOCTYPE html>
<html>
<head>
  <title>Take Test</title>
  <script>
    let timeLeft = 60;
    function countdown() {
      if(timeLeft <= 0){
        document.getElementById("testForm").submit();
      } else {
        document.getElementById("timer").innerHTML = timeLeft + " seconds remaining";
        timeLeft--;
        setTimeout(countdown, 1000);
      }
    }
    window.onload = countdown;
  </script>
</head>
<body>
  <h2>Mock Test: <%= request.getParameter("subject") %></h2>
  <div id="timer" style="font-weight: bold; color: red;"></div>
  <form action="submitTest" method="post" id="testForm">
    <input type="hidden" name="subject" value="<%= request.getParameter("subject") %>">
    <p>Q1: 2 + 2 = ?</p>
    <input type="radio" name="q1" value="3">3<br>
    <input type="radio" name="q1" value="4">4<br>
    <input type="radio" name="q1" value="5">5<br>
    <button type="submit">Submit</button>
  </form>
</body>
</html>