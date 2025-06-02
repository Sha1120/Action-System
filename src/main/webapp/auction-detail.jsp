<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Auction Detail - Distributed Online Auction System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:700,400&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    <%@ include file="style.jspf" %>
  </style>
</head>
<body>

<%-- Set loggedUser as JSTL variable --%>
<c:set var="loggedUser" value="${sessionScope.loggedUser}" />

<section class="hero">
  <nav>
    <a href="home.jsp">Home</a>
    <a href="${pageContext.request.contextPath}/auctions">Auctions</a>
    <a href="contact.jsp">Contact</a>
    <c:if test="${not empty loggedUser}">
      <a href="LogoutServlet">Logout</a>
    </c:if>
  </nav>
  <h2>${auction.title}</h2>
  <p>Auction ends in: <span style="color:darkred;">${auction.timeRemaining}</span></p>
</section>

<div class="auction-detail">
  <img src="${pageContext.request.contextPath}/${auction.imageUrl}" alt="${auction.title}" style="max-width:300px;border-radius:8px;">
  <div>
    <h3>Description</h3>
    <p>${auction.description}</p>
    <h3 style="color:red;">Current Bid: $${auction.currentBid}</h3>
    <form action="PlaceBidServlet" method="post">
      <input type="hidden" name="auctionId" value="${auction.id}" />
      <input type="number" name="bidAmount"
             min="${auction.currentBid + 1}"
             placeholder="Your Bid"
             required
             <c:if test="${auction.timeRemaining == 'Auction ended'}">disabled</c:if>>
      <button type="submit" class="cta-btn"
              <c:if test="${auction.timeRemaining == 'Auction ended'}">disabled</c:if>>
        <c:choose>
          <c:when test="${auction.timeRemaining == 'Auction ended'}">Auction Ended</c:when>
          <c:otherwise>Place Bid</c:otherwise>
        </c:choose>
      </button>
    </form>
  </div>
</div>

<%@ include file="footer.jspf" %>
</body>
</html>
