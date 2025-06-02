<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Auction - Distributed Online Auction System</title>
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
        .form-container {
            max-width: 520px;
            margin: 2.5rem auto 0 auto;
            background: var(--white);
            border-radius: 22px;
            box-shadow: var(--card-shadow);
            padding: 2.5rem 2rem 2rem 2rem;
            animation: fadeInUp 1.1s;
        }
        .form-container h3 {
            color: var(--primary);
            margin-bottom: 1.2rem;
            font-size: 1.3rem;
            text-align: center;
        }
        form label {
            display: block;
            margin-bottom: 0.3rem;
            font-weight: 600;
            color: var(--primary);
            margin-top: 1.1rem;
        }
        form input, form textarea, form select {
            width: 100%;
            padding: 0.8rem 0.8rem;
            margin-bottom: 0.6rem;
            border: 1px solid #ccc;
            border-radius: 9px;
            font-size: 1rem;
            background: #fafafa;
            transition: border-color 0.2s;
            font-family: 'Montserrat', Arial, sans-serif;
        }
        form input:focus, form textarea:focus, form select:focus {
            border-color: var(--primary);
            outline: none;
            background: #fafdff;
        }
        form textarea {
            min-height: 80px;
            resize: vertical;
        }
        .cta-btn {
            background: var(--primary);
            color: #fff;
            padding: 0.75rem 2.2rem;
            font-size: 1.1rem;
            font-weight: 700;
            border: none;
            border-radius: 35px;
            cursor: pointer;
            box-shadow: 0 2px 8px rgba(0,0,0,0.07);
            transition: background 0.2s, transform 0.16s;
            margin-top: 0.7rem;
        }
        .cta-btn:hover {
            background: var(--accent);
            transform: scale(1.06);
            box-shadow: 0 4px 16px #F47C7C44;
        }
        footer {
            background: var(--primary);
            color: #fff;
            text-align: center;
            padding: 1rem 0;
            font-size: 1rem;
            margin-top: 2rem;
        }
        @media (max-width: 700px) {
            .form-container {
                padding: 1.1rem 0.7rem;
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
    <h2>Create New Auction</h2>
    <p>Launch an item for live bidding. Fill out the auction details below.</p>
</section>
<div class="form-container">
    <h3><i class="fas fa-gavel"></i> Auction Details</h3>
    <form action="CreateAuctionServlet" method="post">
        <label for="title">Item Title</label>
        <input type="text" id="title" name="title" required />

        <label for="category">Category</label>
        <select id="category" name="category">
            <option>Art</option>
            <option>Collectibles</option>
            <option>Electronics</option>
            <option>Jewelry</option>
            <option>Vehicles</option>
            <option>Other</option>
        </select>

        <label for="desc">Description</label>
        <textarea id="desc" name="description" required></textarea>

        <label for="startPrice">Start Price ($)</label>
        <input type="number" id="startPrice" name="startPrice" min="1" required />

        <label for="duration">Duration (minutes)</label>
        <input type="number" id="duration" name="duration" min="1" max="1440" required />

        <label for="image">Image URL</label>
        <input type="url" id="image" name="imageUrl" placeholder="https://..." />

        <button type="submit" class="cta-btn"><i class="fas fa-check"></i> Create Auction</button>
    </form>
</div>
<%@ include file="footer.jspf" %>
</body>
</html>