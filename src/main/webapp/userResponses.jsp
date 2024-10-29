<%@ page import="academy.prog.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Responses</title>
  <link rel="stylesheet" type="text/css" href="./usersStyle.css" />
</head>
<body>
<div class="response-container">
  <h1>User Responses</h1>
  <ul class="users__list">
    <% ArrayList<User> users = (ArrayList<User>) session.getAttribute("users"); %>
    <% for (User user : users) { %>
    <li class="users__list-user">
      <div class="name">Name: <span><%= user.getName() %></span></div>
      <div class="lastname">Lastname: <span><%= user.getLastname() %></span></div>
      <div class="age">Age: <span><%= user.getAge() %></span></div>
      <div class="color">Favorite color: <span><%= user.getColor() %></span></div>
      <div class="country">Country: <span><%= user.getCountry() %></span></div>
    </li>
    <% } %>
  </ul>
  <a href="/index.jsp" class="home-button">Back to Home</a>
</div>
</body>
</html>
