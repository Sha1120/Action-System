<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Users - Distributed Online Auction System</title>
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
        .users-container {
            max-width: 1000px;
            margin: 2.5rem auto 0 auto;
            background: var(--white);
            border-radius: 22px;
            box-shadow: var(--card-shadow);
            padding: 2.5rem 2rem 2rem 2rem;
            animation: fadeInUp 1.1s;
            min-height: 300px;
        }
        .users-container h3 {
            color: var(--primary);
            margin-bottom: 1.2rem;
            font-size: 1.3rem;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 1rem;
            background: transparent;
            margin-bottom: 1.5rem;
        }
        th, td {
            padding: 0.65rem 0.6rem;
            text-align: left;
            border-bottom: 1px solid #f0f0f0;
            background: transparent;
        }
        th {
            background: var(--bg);
            color: var(--primary);
            font-weight: 700;
            border-radius: 8px 8px 0 0;
            font-size: 1rem;
            text-shadow: 0 1px 6px #fff8;
        }
        tr:last-child td {
            border-bottom: none;
        }
        .action-btn {
            padding: 0.35rem 1.1rem;
            border-radius: 9px;
            border: none;
            cursor: pointer;
            color: #fff;
            background: var(--primary);
            margin-right: 8px;
            font-size: 0.99rem;
            font-weight: 600;
            box-shadow: 0 1px 6px #4F8A8B44;
            transition: background 0.17s, transform 0.14s;
            outline: none;
        }
        .action-btn.delete {
            background: var(--accent);
        }
        .action-btn:last-child {
            margin-right: 0;
        }
        .action-btn:hover {
            background: var(--secondary);
            color: var(--primary);
            transform: scale(1.07);
        }
        .action-btn.delete:hover {
            background: #cb2c2c;
            color: #fff;
        }
        footer {
            background: var(--primary);
            color: #fff;
            text-align: center;
            padding: 1rem 0;
            font-size: 1rem;
            margin-top: 2rem;
        }
        @media (max-width: 1100px) {
            .users-container {
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
    <h2>Manage Users</h2>
    <p>View, edit, or remove registered users from the auction system.</p>
</section>
<div class="users-container">
    <h3><i class="fas fa-users"></i> User List</h3>
    <table>
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Status</th>
            <th>Joined</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td>john_doe</td>
            <td>john@example.com</td>
            <td>Active</td>
            <td>2025-05-15</td>
            <td>
                <button class="action-btn">Edit</button>
                <button class="action-btn delete">Delete</button>
            </td>
        </tr>
        <tr>
            <td>alice88</td>
            <td>alice@example.com</td>
            <td>Suspended</td>
            <td>2025-05-28</td>
            <td>
                <button class="action-btn">Edit</button>
                <button class="action-btn delete">Delete</button>
            </td>
        </tr>
        <!-- More rows from backend -->
    </table>
</div>
<%@ include file="footer.jspf" %>
</body>
</html>