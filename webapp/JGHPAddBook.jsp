<%@ page contentType ="text/html" pageEncoding ="UTF-8" %>
<%@ include file="JGHPBanner.jsp" %>

<html>
<head>
    <title>Add a Book</title>
</head>
<body>
    <h2>Add a New Book</h2>

    <form action="JGHPAddBook" method="post">
        Code: <input type="text" name="code"><br>
        Description: <input type="text" name="description"><br>
        Quantity: <input type="text" name="quantity"><br>
        <input type="submit" value="Save">
        <input type="submit" formaction="JGHPDisplayBooks" formmethod="get" value="Cancel">
    </form>
</body>

<%@ include file="JGHPFooter.jsp" %>
</html>

