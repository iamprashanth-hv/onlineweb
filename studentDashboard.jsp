<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Student Dashboard</title>
  <link rel="stylesheet" href="css/style.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: #f0f2f5;
      display: flex;
      height: 100vh;
    }

    .sidebar {
      width: 250px;
      background: linear-gradient(145deg, #5f5f5f, #3d3d3d);
      color: white;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 40px 20px;
      box-shadow: 5px 0 15px rgba(0, 0, 0, 0.2);
      transition: width 0.3s;
    }

    .sidebar h2 {
      margin-bottom: 40px;
      font-size: 22px;
    }

    .sidebar a {
      text-decoration: none;
      color: #fff;
      margin: 20px 0;
      padding: 12px 20px;
      background: #444;
      width: 100%;
      text-align: center;
      border-radius: 12px;
      transition: 0.3s;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .sidebar a:hover {
      background: #00bcd4;
      transform: scale(1.05);
    }

    .main-content {
      flex: 1;
      padding: 60px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background: linear-gradient(to right, #e0eafc, #cfdef3);
    }

    .main-card {
      background: white;
      padding: 40px;
      width: 80%;
      max-width: 700px;
      border-radius: 16px;
      box-shadow: 0 20px 30px rgba(0, 0, 0, 0.2);
      text-align: center;
      transform: perspective(1000px) rotateX(2deg);
      transition: all 0.3s ease-in-out;
    }

    .main-card:hover {
      transform: perspective(1000px) rotateX(0deg) scale(1.02);
    }

    .main-card h1 {
      margin-bottom: 20px;
      color: #333;
    }

    .main-card p {
      font-size: 18px;
      color: #666;
    }
  </style>
</head>
<body>

  <div class="sidebar">
    <h2>👤 Welcome, Student</h2>
    <a href="scheduleTest.jsp">📝 Join Scheduled Test</a>
    <a href="result.jsp">📊 View Results</a>
    <a href="feedback.jsp">💬 View Admin Feedback</a>
    <a href="login.jsp">🚪 Logout</a>
  </div>

  <div class="main-content">
    <div class="main-card">
      <h1>Welcome to Your Dashboard</h1>
      <p>Here you can join tests, view results, and check feedback from your admin. Use the menu to get started!</p>
    </div>
  </div>

</body>
</html>
