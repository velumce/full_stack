<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: radial-gradient(circle at 50% 50%, rgba(255, 179, 167, 0.5), rgba(255, 230, 225, 0.5));
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        header {
            background-color: #ff7e5f;
            color: white;
            padding: 15px;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: center;
            gap: 15px;
            background-color: #333;
            padding: 10px;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 20px;
            background-color: rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, transform 0.3s;
        }

        nav a:hover {
            background-color: rgba(0, 0, 0, 0.4);
            transform: scale(1.05);
        }

        .container {
            width: 80%;
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 40px;
        }

        .section h2 {
            color: #ff7e5f;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .section p {
            font-size: 16px;
            line-height: 1.6;
        }

        .team-member {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .team-member img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            margin-right: 20px;
        }

        .team-member div {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white background */
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .team-member h3 {
            margin: 0;
            font-size: 20px;
            color: #ff7e5f;
        }

        .team-member p {
            margin: 5px 0;
            font-size: 14px;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #ff7e5f;
            color: white;
        }
    </style>
</head>
<body>
    <header>
        <h1>Company Name</h1>
    </header>

    <nav>
        <a href="home.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
        <a href="review.jsp">Customer Reviews</a>
    </nav>

    <div class="container">
        <div class="section">
            <h2>Our Story</h2>
            <p>Founded in [Year], Company Name has been at the forefront of [Industry]. Our journey began with a simple vision to [Initial Vision], and since then, we have grown into a leading provider of [Products/Services]. With a commitment to quality and innovation, we have successfully completed [Number] projects and served [Number] clients worldwide.</p>
        </div>

        <div class="section">
            <h2>Our Mission</h2>
            <p>Our mission is to [Company Mission]. We strive to deliver exceptional [Products/Services] that exceed our clients' expectations and drive innovation in our industry. We are dedicated to continuous improvement and are committed to making a positive impact on our community and environment.</p>
        </div>

        <div class="section">
            <h2>Our Values</h2>
            <p>At Company Name, we believe in the following core values:</p>
            <ul>
                <li><strong>Integrity:</strong> We conduct our business with honesty and transparency.</li>
                <li><strong>Customer Focus:</strong> We prioritize our clients' needs and work to exceed their expectations.</li>
                <li><strong>Innovation:</strong> We embrace change and continuously seek new ways to improve our products and services.</li>
                <li><strong>Excellence:</strong> We are committed to delivering the highest quality in everything we do.</li>
                <li><strong>Sustainability:</strong> We aim to minimize our environmental impact and contribute to a sustainable future.</li>
            </ul>
        </div>

        <div class="section">
            <h2>Meet the Team</h2>
            <div class="team-member">
                <img src="team1.jpg" alt="Team Member 1">
                <div>
                    <h3>Vishnu S</h3>
                    <p><strong>CEO</strong></p>
                    <p>Vishnu is the visionary behind Company Name, leading the team with a passion for innovation and excellence.</p>
                </div>
            </div>
            <div class="team-member">
                <img src="team2.jpg" alt="Team Member 2">
                <div>
                    <h3>Lokesh K</h3>
                    <p><strong>CTO</strong></p>
                    <p>Lokesh oversees the technological advancements at Company Name, ensuring we stay ahead of industry trends.</p>
                </div>
            </div>
            <div class="team-member">
                <img src="team3.jpg" alt="Team Member 3">
                <div>
                    <h3>Dhanush S</h3>
                    <p><strong>COO Manager</strong></p>
                    <p>Dhanush manages our day-to-day operations, making sure everything runs smoothly and efficiently.</p>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Company Name. All rights reserved.</p>
    </footer>
</body>
</html>
