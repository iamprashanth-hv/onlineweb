<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      display: flex;
      min-height: 100vh;
      background: linear-gradient(to right, #f0f4ff, #ffffff);
      color: #333;
    }

    .sidebar {
      width: 260px;
      background: linear-gradient(145deg, #2e2e2e, #1c1c1c);
      color: white;
      padding: 30px 20px;
      display: flex;
      flex-direction: column;
      box-shadow: 5px 0 15px rgba(0, 0, 0, 0.3);
    }

    .sidebar h2 {
      margin-bottom: 40px;
      text-align: center;
    }

    .sidebar a {
      text-decoration: none;
      color: white;
      margin: 16px 0;
      padding: 12px;
      text-align: center;
      background: #333;
      border-radius: 12px;
      transition: 0.3s ease-in-out;
    }

    .sidebar a:hover {
      background: #00bcd4;
      transform: scale(1.05);
    }

    .main-content {
      flex: 1;
      padding: 40px;
      display: flex;
      flex-direction: column;
      gap: 30px;
    }

    .welcome-card {
      background: white;
      border-radius: 16px;
      padding: 30px;
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
    }

    .student-select-card,
    .chart-card,
    .feedback-card,
    .actions-card {
      background: white;
      border-radius: 16px;
      padding: 30px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
    }

    .form-group {
      margin-bottom: 20px;
    }

    select, textarea, input[type="text"], button {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      margin-top: 6px;
      border: 1px solid #ccc;
      border-radius: 8px;
    }

    button {
      background-color: #00bcd4;
      color: white;
      font-weight: bold;
      cursor: pointer;
      border: none;
      transition: background-color 0.3s;
    }

    button:hover {
      background-color: #0097a7;
    }

    .button-row {
      display: flex;
      gap: 20px;
    }

    canvas {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div class="sidebar">
    <h2>Admin Panel</h2>
    <a href="#" onclick="showHome()">Home</a>
    <a href="#" onclick="showStudentSection()">Students</a>
    <a href="login.jsp">Logout</a>
  </div>

  <div class="main-content">
    <!-- Home -->
    <div class="welcome-card" id="homeSection">
      <h2>Welcome, Admin!</h2>
      <p>Select a section from the menu to get started.</p>
    </div>

    <!-- Student Dashboard Section -->
    <div id="studentSection" style="display: none; flex-direction: column; gap: 30px;">
      <div class="student-select-card">
        <h3>Select Student</h3>
        <div class="form-group">
          <label for="studentSelect">Choose a student:</label>
          <select id="studentSelect" onchange="updateChart()">
            <option value="Student 1">Student 1</option>
            <option value="Student 2">Student 2</option>
            <option value="Student 3">Student 3</option>
          </select>
        </div>
      </div>

      <div class="chart-card">
        <h3>Performance Chart</h3>
        <canvas id="scoreChart"></canvas>
      </div>

      <div class="feedback-card">
        <h3>Give Feedback</h3>
        <form action="AdminFeedbackServlet" method="post">
          <div class="form-group">
            <label for="feedback">Feedback:</label>
            <textarea name="feedback" rows="4" required></textarea>
          </div>
          <button type="submit">Submit Feedback</button>
        </form>
      </div>

      <div class="actions-card">
        <h3>Student Actions</h3>
        <form action="TestAssignmentServlet" method="post">
          <div class="form-group">
            <label for="subject">Assign Test (Subject):</label>
            <input type="text" name="subject" placeholder="Enter Subject">
          </div>
          <button type="submit">Assign Test</button>
        </form>
        <div class="button-row">
          <form action="BlockStudentServlet" method="post">
            <button type="submit" style="background:#e53935;">Block</button>
          </form>
          <form action="UnblockStudentServlet" method="post">
            <button type="submit" style="background:#43a047;">Unblock</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script>
    const chartData = {
      "Student 1": [90, 85, 78, 92],
      "Student 2": [70, 75, 88, 80],
      "Student 3": [95, 88, 82, 89]
    };

    const chartLabels = ['Math', 'Science', 'English', 'History'];

    const ctx = document.getElementById('scoreChart').getContext('2d');
    let scoreChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: chartLabels,
        datasets: [{
          label: 'Score (%)',
          data: chartData['John Doe'],
          backgroundColor: ['#66a6ff', '#ffa07a', '#90ee90', '#ffd700'],
          borderRadius: 5
        }]
      },
      options: {
        responsive: true,
        scales: {
          y: {
            beginAtZero: true,
            max: 100
          }
        }
      }
    });

    function updateChart() {
      const selected = document.getElementById('studentSelect').value;
      scoreChart.data.datasets[0].data = chartData[selected];
      scoreChart.update();
    }

    function showStudentSection() {
      document.getElementById('studentSection').style.display = 'flex';
      document.getElementById('homeSection').style.display = 'none';
    }

    function showHome() {
      document.getElementById('studentSection').style.display = 'none';
      document.getElementById('homeSection').style.display = 'block';
    }
  </script>
</body>
</html>
