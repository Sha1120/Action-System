<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Auction System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:700,400&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #4F8A8B;
            --secondary: #FBD46D;
            --accent: #F47C7C;
            --bg: #f3f6fa;
            --text: #222831;
        }
        body {
            margin: 0;
            font-family: 'Montserrat', Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
        }
        header {
            background: var(--primary);
            color: #fff;
            padding: 2rem 0 1rem 0;
            text-align: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }
        header h1 {
            margin: 0;
            font-size: 2.5rem;
            letter-spacing: 2px;
        }
        header p {
            margin-top: 0.6rem;
            font-size: 1.2rem;
            font-weight: 400;
        }
        nav {
            margin-top: 1rem;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 1rem;
            font-size: 1rem;
            font-weight: 700;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            transition: background 0.2s;
        }
        nav a:hover {
            background: var(--secondary);
            color: var(--primary);
        }
        .hero {
            padding: 3rem 1rem;
            text-align: center;
            background: linear-gradient(120deg, #93e1d8 0%, #fbd46d 100%);
        }
        .hero h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
        .hero p {
            font-size: 1.1rem;
            margin-bottom: 2rem;
        }
        .cta-btn {
            background: var(--primary);
            color: #fff;
            padding: 1rem 2rem;
            font-size: 1.1rem;
            font-weight: 700;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            transition: background 0.2s;
        }
        .cta-btn:hover {
            background: var(--accent);
        }
        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            margin: 3rem 0;
            padding: 0 2rem;
        }
        .feature-card {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            flex: 1 1 260px;
            max-width: 320px;
            min-width: 250px;
            padding: 2rem 1.5rem;
            text-align: center;
            transition: transform 0.2s;
        }
        .feature-card:hover {
            transform: translateY(-10px) scale(1.03);
            box-shadow: 0 8px 32px rgba(0,0,0,0.13);
        }
        .feature-card i {
            font-size: 2.5rem;
            color: var(--secondary);
            margin-bottom: 1rem;
        }
        .feature-card h3 {
            margin-bottom: 0.7rem;
            font-size: 1.3rem;
            color: var(--primary);
        }
        .feature-card p {
            font-size: 1rem;
            color: #444;
        }
        footer {
            background: var(--primary);
            color: #fff;
            text-align: center;
            padding: 1rem 0;
            font-size: 1rem;
            margin-top: 2rem;
        }
        @media (max-width: 900px) {
            .features {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
    <!-- For icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body>

<header>
    <h1>Online Auction System</h1>
    <p>Bid, win, and experience the thrill of online auctions!</p>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="${pageContext.request.contextPath}/auctions">Auctions</a>
        <a href="register.jsp">Register</a>
        <a href="contact.jsp">Contact</a>
    </nav>
</header>

<section class="hero">
    <h2>Welcome to the Future of Auctions</h2>
    <p>Discover exclusive items, place your bids, and win amazing deals—all from the comfort of your home.</p>
    <%
        String loggedUser = (String) session.getAttribute("loggedUser");
        String redirectURL;
        if (loggedUser != null) {
            redirectURL = request.getContextPath() + "/auctions";
        } else {
            redirectURL = "login.jsp";
        }
    %>
    <button class="cta-btn" onclick="window.location.href='<%= redirectURL %>'">Start Bidding Now</button>
</section>

<section class="features">
    <div class="feature-card">
        <i class="fas fa-gavel"></i>
        <h3>Live Bidding</h3>
        <p>Experience real-time competitive bidding and never miss an opportunity to win your favorite items.</p>
    </div>
    <div class="feature-card">
        <i class="fas fa-shield-alt"></i>
        <h3>Secure Transactions</h3>
        <p>Your payments and personal data are protected with advanced security measures.</p>
    </div>
    <div class="feature-card">
        <i class="fas fa-clock"></i>
        <h3>24/7 Auctions</h3>
        <p>Bid anytime, anywhere—our platform is always open for you.</p>
    </div>
    <div class="feature-card">
        <i class="fas fa-users"></i>
        <h3>User Community</h3>
        <p>Join a vibrant and growing community of buyers and sellers.</p>
    </div>
</section>

<footer>
    &copy; 2025 Online Auction System. All rights reserved.
</footer>

</body>
</html>