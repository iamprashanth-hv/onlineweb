<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>Take Test</title>
</head>
<body>
  <h2>📝 Test: <%= request.getParameter("subject") %></h2>
  <form action="submitTest" method="post">
    <input type="hidden" name="subject" value="<%= request.getParameter("subject") %>">

    <p>Q1. What is Java?</p>
    <input type="radio" name="q1" value="a"> A programming language<br>
    <input type="radio" name="q1" value="b"> A fruit<br>
    <input type="radio" name="q1" value="c"> A drink<br><br>

    <p>Q2. JVM stands for?</p>
    <input type="radio" name="q2" value="a"> Java Virtual Machine<br>
    <input type="radio" name="q2" value="b"> Java Visual Model<br>
    <input type="radio" name="q2" value="c"> Just Verify Mode<br><br>

    <button type="submit">Submit Test</button>
  </form>
</body>
</html>
