<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
    <h2>An error occurred while processing your request.</h2>
    <p>We apologize for the inconvenience. Please try again later.</p>
    <p>Error Details:</p>
    <pre>${exception.message}</pre>
</body>
</html>

