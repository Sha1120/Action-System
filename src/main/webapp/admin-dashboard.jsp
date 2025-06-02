<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard - Distributed Online Auction System</title>
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
    section.hero {
      text-align: center;
      padding: 2.5rem 1rem 2rem 1rem;
      background: linear-gradient(100deg, #93e1d8 0%, #fbd46d 100%);
      animation: fadeInDown 1s;
    }
    section.hero h2 {
      font-size: 2.4rem;
      font-weight: 700;
      margin-bottom: 0.5rem;
      text-shadow: 1px 2px 12px #eee;
      letter-spacing: 1px;
      animation: slideInLeft 1s 0.1s backwards;
    }
    section.hero p {
      font-size: 1.2rem;
      color: #333;
      opacity: 0.88;
      animation: fadeIn 1.3s 0.2s backwards;
    }

    .dashboard-container {
      max-width: 1200px;
      margin: 2.5rem auto 0 auto;
      display: flex;
      gap: 2.5rem;
      flex-wrap: wrap;
      justify-content: center;
      animation: fadeInUp 1.1s;
    }
    .stats-panel {
      background: var(--white);
      border-radius: 22px;
      box-shadow: var(--card-shadow);
      padding: 2.1rem 1.7rem;
      flex: 1 1 310px;
      min-width: 260px;
      text-align: center;
      position: relative;
      overflow: hidden;
      animation: cardPopIn 0.9s;
    }
    .stats-panel::before {
      content: "";
      position: absolute;
      right: -70px; top: -50px;
      width: 160px; height: 160px;
      background: rgba(79,138,139,0.07);
      border-radius: 50%;
      z-index: 0;
    }
    .stats-panel h2 {
      font-size: 1.55rem;
      color: var(--primary);
      z-index: 2;
      position: relative;
      letter-spacing: 1px;
    }
    .stats-grid {
      display: flex;
      justify-content: space-between;
      gap: 1.5rem;
      margin-top: 1.5rem;
      z-index: 2;
      position: relative;
    }
    .stat-box {
      background: linear-gradient(135deg, #fbd46d 60%, #fffbe6 100%);
      color: var(--primary);
      border-radius: 14px;
      padding: 1.1rem 0.8rem;
      flex: 1 1 120px;
      min-width: 110px;
      margin: 0 0.3rem;
      box-shadow: 0 2px 12px rgba(251, 212, 109, 0.08);
      animation: bounceIn 1.1s;
      transition: transform 0.18s;
    }
    .stat-box:hover {
      transform: scale(1.06) translateY(-5px) rotate(-1deg);
      box-shadow: 0 8px 28px rgba(251, 212, 109, 0.20);
      background: linear-gradient(120deg, #fffbe6 30%, #fbd46d 100%);
    }
    .stat-box .stat-value {
      font-size: 2.3rem;
      font-weight: bold;
      margin-bottom: 0.2rem;
      letter-spacing: 1px;
      animation: fadeInScale 1.1s;
    }
    .stat-box div {
      font-size: 1.02rem;
      font-weight: 500;
      letter-spacing: 0.2px;
      text-shadow: 0 1px 6px #fff8;
      opacity: 0.9;
    }

    .quick-actions {
      background: var(--white);
      border-radius: 22px;
      box-shadow: var(--card-shadow);
      padding: 2rem 1.5rem;
      margin-top: 2rem;
      min-width: 260px;
      animation: cardPopIn 1.1s;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .quick-actions::after {
      content: "";
      position: absolute;
      left: -70px; bottom: -70px;
      width: 140px; height: 140px;
      background: rgba(244,124,124,0.07);
      border-radius: 50%;
      z-index: 0;
    }
    .quick-actions h3 {
      color: var(--primary);
      margin-bottom: 1.2rem;
      font-size: 1.2rem;
      z-index: 2;
      position: relative;
    }
    .quick-actions a {
      display: inline-block;
      margin: 0.4rem 0.5rem 0.4rem 0;
      padding: 0.75rem 1.45rem;
      background: var(--primary);
      color: #fff;
      border-radius: 35px;
      text-decoration: none;
      font-weight: 700;
      font-size: 1.05rem;
      box-shadow: 0 1px 10px #93e1d888;
      transition: background 0.2s, transform 0.18s;
      z-index: 2;
      position: relative;
      border: none;
      outline: none;
      cursor: pointer;
    }
    .quick-actions a:hover {
      background: var(--accent);
      transform: scale(1.08);
      box-shadow: 0 4px 20px #F47C7C44;
    }

    .management-section {
      background: var(--white);
      border-radius: 22px;
      box-shadow: var(--card-shadow);
      padding: 2rem 1.5rem;
      margin-top: 2rem;
      min-width: 260px;
      animation: fadeInUp 1.1s;
      transition: box-shadow 0.18s;
      position: relative;
      overflow: hidden;
    }
    .management-section:hover {
      box-shadow: 0 12px 36px rgba(79,138,139,0.13);
    }
    .management-section h3 {
      color: var(--primary);
      margin-bottom: 1.1rem;
      font-size: 1.18rem;
      position: relative;
      z-index: 2;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1rem;
      background: transparent;
      z-index: 2;
      position: relative;
      font-size: 1rem;
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
      margin-right: 0.5rem;
      font-size: 0.99rem;
      font-weight: 600;
      box-shadow: 0 1px 6px #4F8A8B44;
      transition: background 0.17s, transform 0.14s;
      outline: none;
    }
    .action-btn.delete {
      background: var(--accent);
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
    @media (max-width: 1100px) {
      .dashboard-container {
        flex-direction: column;
        gap: 1.5rem;
      }
    }
    @media (max-width: 700px) {
      .stats-grid {
        flex-direction: column;
        gap: 1rem;
      }
      .dashboard-container {
        padding: 0 0.6rem;
      }
      .stats-panel, .quick-actions, .management-section {
        min-width: unset;
        padding: 1.2rem 0.7rem;
      }
    }

    footer {
      background: var(--primary);
      color: #fff;
      text-align: center;
      padding: 1rem 0;
      font-size: 1rem;
      margin-top: 2rem;
    }

    /* --- Animations --- */
    @keyframes fadeInDown {
      from { opacity: 0; transform: translateY(-40px);}
      to { opacity: 1; transform: translateY(0);}
    }
    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(40px);}
      to { opacity: 1; transform: translateY(0);}
    }
    @keyframes fadeInScale {
      from { opacity: 0; transform: scale(0.8);}
      to { opacity: 1; transform: scale(1);}
    }
    @keyframes fadeIn {
      from { opacity: 0;}
      to { opacity: 1;}
    }
    @keyframes slideInLeft {
      from { opacity: 0; transform: translateX(-60px);}
      to { opacity: 1; transform: translateX(0);}
    }
    @keyframes cardPopIn {
      from { opacity: 0; transform: scale(0.95) translateY(30px);}
      to { opacity: 1; transform: scale(1) translateY(0);}
    }
    @keyframes bounceIn {
      0% {transform: scale(0.92);}
      60% {transform: scale(1.08);}
      100% {transform: scale(1);}
    }
    <%@ include file="footer.jspf" %>
  </style>
</head>
<body>

<section class="hero">
  <h2>Admin Dashboard</h2>
  <p>Monitor system activity, manage users and auctions, and keep the platform running smoothly.</p>
</section>

<div class="dashboard-container">
  <!-- Stats Panel -->
  <div class="stats-panel">
    <h2>Platform Stats</h2>
    <div class="stats-grid">
      <div class="stat-box">
        <div class="stat-value">128</div>
        <div>Active Auctions</div>
      </div>
      <div class="stat-box">
        <div class="stat-value">4,230</div>
        <div>Registered Users</div>
      </div>
      <div class="stat-box">
        <div class="stat-value">1,023</div>
        <div>Live Bids</div>
      </div>
    </div>
  </div>
  <!-- Quick Actions Panel -->
  <div class="quick-actions">
    <h3>Quick Actions</h3>
    <a href="create-action.jsp"><i class="fas fa-plus"></i> Create Auction</a>
    <a href="manage-users.jsp"><i class="fas fa-users"></i> Manage Users</a>
    <a href="system-logs.jsp"><i class="fas fa-file-alt"></i> View Logs</a>
  </div>
</div>

<div class="dashboard-container">
  <!-- User Management Section -->
  <div class="management-section" style="flex:2;">
    <h3>Recent Users</h3>
    <table>
      <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Joined</th>
        <th>Actions</th>
      </tr>
      <tr>
        <td>john_doe</td>
        <td>john@example.com</td>
        <td>2025-05-15</td>
        <td>
          <button class="action-btn">Edit</button>
          <button class="action-btn delete">Delete</button>
        </td>
      </tr>
      <tr>
        <td>alice88</td>
        <td>alice@example.com</td>
        <td>2025-05-28</td>
        <td>
          <button class="action-btn">Edit</button>
          <button class="action-btn delete">Delete</button>
        </td>
      </tr>
      <!-- More rows from backend -->
    </table>
  </div>
  <!-- Auction Management Section -->
  <div class="management-section" style="flex:1;">
    <h3>Recent Auctions</h3>
    <table>
      <tr>
        <th>Item</th>
        <th>Status</th>
        <th>Actions</th>
      </tr>
      <tr>
        <td>Antique Vase</td>
        <td>Active</td>
        <td>
          <button class="action-btn" style="margin-bottom: 5px;">Edit</button>
          <button class="action-btn delete mt-5">End</button>
        </td>
      </tr>
      <tr>
        <td>Vintage Watch</td>
        <td>Completed</td>
        <td>
          <button class="action-btn">View</button>
        </td>
      </tr>
      <!-- More rows from backend -->
    </table>
  </div>
</div>

<%@ include file="footer.jspf" %>
</body>
</html>