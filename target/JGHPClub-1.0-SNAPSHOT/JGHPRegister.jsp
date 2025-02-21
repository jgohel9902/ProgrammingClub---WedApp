<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JGHP Club - Register</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <jsp:include page="JGHPBanner.jsp" />

    <section>
        <h2>Register for JGHP Club</h2>
        <form action="JGHPDisplayMember.jsp" method="post">
            <label>Full Name:</label>
            <input type="text" name="fullname" required style="width:300px;"><br>

            <label>Email:</label>
            <input type="email" name="email" required style="width:300px;"><br>

            <label>IT Program:</label>
            <select name="program" style="width:200px;">
                <option value="CAS">CAS</option>
                <option value="SQATE">SQATE</option>
                <option value="CPA">CPA</option>
                <option value="CP">CP</option>
                <option value="ITID">ITID</option>
                <option value="CAD">CAD</option>
                <option value="ITSS">ITSS</option>
            </select><br>

            <label>Year:</label>
            <select name="year" style="width:100px;">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select><br>

            <input type="submit" value="Register Now!">
            <input type="reset" value="Reset">
        </form>
    </section>

    <jsp:include page="JGHPFooter.jsp" />
</body>
</html>

