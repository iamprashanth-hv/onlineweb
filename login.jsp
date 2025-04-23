<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container" id="form-box">
  <h1>Online Exam</h1>
    <h2 id="form-title">Login</h2>
    <div class="toggle-role">
      <button id="adminBtn" class="active">Admin</button>
      <button id="userBtn">User</button>
    </div>
    <form action="login" method="post">
      <input type="text" name="email" placeholder="Email/Username" required>
      <input type="password" name="password" placeholder="Password" required>
      <input type="text" name="username" id="usernameField" placeholder="Full Name" style="display:none;">
      <button type="submit" class="submit-btn" id="submitBtn">Login</button>
    </form>
    <div class="register-link" id="registerToggle">New user? Click here to Register</div>
  </div>
  <script src="js/script.js"></script>
</body>
</html>
