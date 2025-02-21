<%@ page contentType ="text/html" pageEncoding ="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="JGHPBanner.jsp" %>

<html>
<head>
    <title>Book List</title>
</head>
<body>
    <h2>Book List</h2>

    <table border="1">
        <tr>
            <th>Code</th>
            <th>Description</th>
            <th>Quantity</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.code}</td>
                <td>${book.description}</td>
                <td>${book.quantity}</td>
            </tr>
        </c:forEach>
    </table>

    <form action="JGHPAddBook.jsp">
        <input type="submit" value="Add Book">
    </form>
</body>

<%@ include file="JGHPFooter.jsp" %>
</html>

