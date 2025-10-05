<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Email Subscription</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<div class="container">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>
    <% if (request.getAttribute("message") != null) { %>
    <p class="error-message"><%= request.getAttribute("message") %></p>
    <% } %>
    <form action="/email/join" method="post" class="subscription-form">
        <input type="hidden" name="action" value="add">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>
        </div>
        <button type="submit" class="submit-btn">Join Now</button>
    </form>
</div>
</body>
</html>