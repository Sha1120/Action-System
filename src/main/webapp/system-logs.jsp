<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>System Logs - Distributed Online Auction System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:700,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        :root {
            --primary: #4F8A8B;
            --secondary: #FBD46D;
            --accent: #F47C7C;
            --bg: #f3f6fa;
            --text: #222831;
            --white: #fff;
            --card-shadow: 0 8px 24px rgba(0,0,0,0.12);
        }
        body {
            margin: 0;
            font-family: 'Montserrat', Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
            overflow-x: hidden;
        }
        .hero {
            text-align: center;
            padding: 2.5rem 1rem 2rem 1rem;
            background: linear-gradient(100deg, #93e1d8 0%, #fbd46d 100%);
            animation: fadeInDown 1s;
        }
        .hero h2 {
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 0.4rem;
            text-shadow: 1px 2px 12px #eee;
            letter-spacing: 1px;
            animation: slideInLeft 1s 0.1s backwards;
        }
        .hero p {
            font-size: 1.1rem;
            color: #333;
            opacity: 0.88;
            animation: fadeIn 1.3s 0.2s backwards;
        }
        .logs-container {
            max-width: 900px;
            margin: 2.5rem auto 0 auto;
            background: var(--white);
            border-radius: 22px;
            box-shadow: var(--card-shadow);
            padding: 2.5rem 2rem 2rem 2rem;
            animation: fadeInUp 1.1s;
            min-height: 300px;
        }
        .logs-container h3 {
            color: var(--primary);
            margin-bottom: 1.2rem;
            font-size: 1.3rem;
            text-align: center;
        }
        .log-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 1rem;
            background: transparent;
        }
        .log-table th, .log-table td {
            padding: 0.6rem 0.5rem;
            border-bottom: 1px solid #f0f0f0;
        }
        .log-table th {
            background: var(--bg);
            color: var(--primary);
            font-weight: 700;
            font-size: 1rem;
            text-shadow: 0 1px 6px #fff8;
        }
        .log-table tr:last-child td {
            border-bottom: none;
        }
        .log-level-info { color: var(--primary); }
        .log-level-warn { color: #f7b731; }
        .log-level-error { color: var(--accent); }
        footer {
            background: var(--primary);
            color: #fff;
            text-align: center;
            padding: 1rem 0;
            font-size: 1rem;
            margin-top: 2rem;
        }
        @media (max-width: 1100px) {
            .logs-container {
                padding: 1.2rem 0.7rem;
            }
        }
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-40px);}
            to { opacity: 1; transform: translateY(0);}
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px);}
            to { opacity: 1; transform: translateY(0);}
        }
        @keyframes fadeIn {
            from { opacity: 0;}
            to { opacity: 1;}
        }
        @keyframes slideInLeft {
            from { opacity: 0; transform: translateX(-60px);}
            to { opacity: 1; transform: translateX(0);}
        }
    </style>
</head>
<body>

<section class="hero">
    <h2>System Logs</h2>
    <p>Review recent system events and errors for monitoring and auditing.</p>
</section>
<div class="logs-container">
    <h3><i class="fas fa-file-alt"></i> Recent Events</h3>
    <table class="log-table">
        <tr>
            <th>Timestamp</th>
            <th>Level</th>
            <th>Message</th>
        </tr>
        <tr>
            <td>2025-05-31 08:45:19</td>
            <td class="log-level-info">INFO</td>
            <td>System started successfully.</td>
        </tr>
        <tr>
            <td>2025-05-31 09:03:11</td>
            <td class="log-level-warn">WARN</td>
            <td>User alice88 attempted login with wrong password.</td>
        </tr>
        <tr>
            <td>2025-05-31 09:15:45</td>
            <td class="log-level-error">ERROR</td>
            <td>Failed to process bid #5123: Insufficient balance.</td>
        </tr>
        <!-- More log rows from backend -->
    </table>
</div>
<%@ include file="footer.jspf" %>
</body>
</html>