<!DOCTYPE html>
<html>
<head>
  <title>Schedule Test</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container">
    <h2>Select Subject to Start Test</h2>
    <form action="takeTest.jsp" method="get">
      <label>Select Subject:</label>
      <select name="subject">
        <option value="Math">Math</option>
        <option value="Science">Science</option>
        <option value="English">English</option>
      </select>
      <button type="submit" class="submit-btn">Start Test</button>
    </form>
  </div>
</body>
</html>