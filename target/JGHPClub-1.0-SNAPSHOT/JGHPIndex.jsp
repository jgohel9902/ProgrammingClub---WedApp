<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - JGHP Club</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <jsp:include page="JGHPBanner.jsp" />

    
    <h2>Welcome to JGHP Computer Programming Club</h2>
    <p>Join our club to improve your coding skills, participate in hackathons, and collaborate with peers.</p>
    <p>Current Date and Time: <%= new java.util.Date() %></p>

    <ul>
        <li><a href="JGHPAddBook.jsp">Add a Book</a></li>
        <li><a href="JGHPDisplayBooks.jsp">View Books</a></li>
    </ul>
</body>
</html>
