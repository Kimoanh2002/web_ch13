<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thanks for Joining</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<div class="container">
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>
    <div class="info-display">
        <label>Email:</label> <span>${user.email}</span>
    </div>
    <div class="info-display">
        <label>First Name:</label> <span>${user.firstName}</span>
    </div>
    <div class="info-display">
        <label>Last Name:</label> <span>${user.lastName}</span>
    </div>
    <p>To enter another email address, click on the Return button.</p>
    <form action="/email/join" method="get" class="return-form">
        <input type="hidden" name="action" value="return">
        <button type="submit" class="return-btn">Return</button>
    </form>
</div>
</body>
</html>