<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - Distributed Online Auction System</title>
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
        .welcome {
            padding: 3rem 1rem 2rem 1rem;
            text-align: center;
            background: linear-gradient(120deg, #93e1d8 0%, #fbd46d 100%);
        }
        .welcome h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
        .welcome p {
            font-size: 1.1rem;
            margin-bottom: 2rem;
        }
        .system-details {
            max-width: 900px;
            margin: 2rem auto;
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            justify-content: center;
        }
        .detail-card {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            flex: 1 1 260px;
            max-width: 320px;
            min-width: 250px;
            padding: 2rem 1.5rem;
            text-align: center;
        }
        .detail-card i {
            font-size: 2.5rem;
            color: var(--secondary);
            margin-bottom: 1rem;
        }
        .detail-card h3 {
            color: var(--primary);
            margin-bottom: 0.7rem;
        }
        .detail-card p {
            font-size: 1rem;
            color: #444;
        }
        .technologies {
            background: #fff;
            border-radius: 15px;
            margin: 2rem auto;
            max-width: 700px;
            padding: 2rem;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            text-align: center;
        }
        .technologies h3 {
            color: var(--primary);
            margin-bottom: 1rem;
        }
        .technologies ul {
            list-style-type: none;
            padding: 0;
            margin: 0 auto;
            display: inline-block;
            text-align: left;
        }
        .technologies li {
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
            padding-left: 1.6em;
            position: relative;
        }
        .technologies li:before {
            content: '✔';
            color: var(--secondary);
            position: absolute;
            left: 0;
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
            .system-details {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body>

<header>
    <h1>Distributed Online Auction System</h1>
    <p>Real-Time. Scalable. Reliable.</p>
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
</header>

<section class="welcome">
    <h2>Welcome to the Future of Online Auctions</h2>
    <p>
        Participate in live auctions and place your bids in real-time, no matter where you are. <br>
        Our distributed system ensures that your bids are processed instantly and fairly, keeping you at the heart of the action!
    </p>
</section>

<section class="system-details">
    <div class="detail-card">
        <i class="fas fa-network-wired"></i>
        <h3>Distributed Architecture</h3>
        <p>
            Built with scalable EJB modules and JMS messaging for fast, reliable, and synchronized live auctions across the globe.
        </p>
    </div>
    <div class="detail-card">
        <i class="fas fa-bolt"></i>
        <h3>Real-Time Updates</h3>
        <p>
            All bids and auction status are updated in real-time using asynchronous messaging, so you never miss a moment!
        </p>
    </div>
    <div class="detail-card">
        <i class="fas fa-shield-alt"></i>
        <h3>Robust Business Logic</h3>
        <p>
            Advanced EJB-driven business logic ensures valid bidding, accurate timing, and automatic bid increments.
        </p>
    </div>
</section>

<section class="technologies">
    <h3>Powered By</h3>
    <ul>
        <li>Enterprise JavaBeans (EJB) for modular business logic</li>
        <li>Java Message Service (JMS) for asynchronous, distributed communication</li>
        <li>Modern Java EE Application Server (e.g., Payara, GlassFish)</li>
        <li>Responsive Web Interface for seamless user experience</li>
    </ul>
</section>

<footer>
    &copy; 2025 Distributed Online Auction System. All rights reserved.
</footer>

</body>
</html>
