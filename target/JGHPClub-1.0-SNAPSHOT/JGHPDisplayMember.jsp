<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JGHP Club - Member Info</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <jsp:include page="JGHPBanner.jsp" />

    <section>
        <h2>Member Details</h2>
        <p><strong>Full Name:</strong> ${param.fullname}</p>
        <p><strong>Email:</strong> ${param.email}</p>
        <p><strong>IT Program:</strong> ${param.program}</p>
        <p><strong>Year:</strong> ${param.year}</p>

        <form action="JGHPRegister.jsp">
            <input type="submit" value="Return">
        </form>
    </section>

    <jsp:include page="JGHPFooter.jsp" />
</body>
</html>