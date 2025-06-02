<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact - Distributed Online Auction System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:700,400&display=swap" rel="stylesheet">
  <style>
    <%@ include file="style.jspf" %>
  </style>
</head>
<body>
<nav>
  <a href="home.jsp">Home</a>
  <a href="${pageContext.request.contextPath}/auctions">Auctions</a>
  <a href="contact.jsp">Contact</a>
  <%-- only user logged in  --%>
  <%
    String loggedUser = (String) session.getAttribute("loggedUser");
    if (loggedUser != null) {
  %>
  <a href="LogoutServlet">Logout</a>
  <%
    }
  %>

</nav>
<section class="form-section">
  <h2>Contact Us</h2>
  <form action="ContactServlet" method="post">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="email" placeholder="Your Email" required>
    <textarea name="message" placeholder="Your Message" required style="min-height:100px"></textarea>
    <button type="submit" class="cta-btn">Send Message</button>
  </form>
</section>
<%@ include file="footer.jspf" %>
</body>
</html>