<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Reviews & Current Projects</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(90deg, #ffb3a7, #ffe6e1);
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            color: #333;
        }

        /* Header */
        header {
            background-color: #ff7e5f;
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        header h1 {
            margin: 0;
            font-size: 24px;
        }

        /* Navigation Bar */
        nav {
            position: fixed;
            top: 60px;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            padding: 15px 0;
            text-align: center;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }

        nav a {
            color: white;
            font-weight: bold;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s, color 0.3s;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transform: scale(1.1);
            color: #ff7e5f; /* Change text color on hover */
        }

        /* Container */
        .container {
            padding: 100px 20px 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 50px;
            font-size: 36px;
            animation: fadeInText 2s ease-in-out forwards;
        }

        @keyframes fadeInText {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .reviews, .projects {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            animation: slideInContainer 1.5s ease-out forwards;
        }

        @keyframes slideInContainer {
            0% {
                transform: translateY(50px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .review-card, .project-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .review-card:hover, .project-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 30px rgba(0, 0, 0, 0.2);
        }

        .rating {
            color: #ff7e5f;
            font-weight: bold;
            margin-top: 10px;
        }

        .comment {
            margin-top: 10px;
            font-style: italic;
        }

        .project-status {
            color: #008080;
            font-weight: bold;
            margin-top: 10px;
        }

        /* Floating particles */
        .background-animation {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }

        .background-animation::before, .background-animation::after {
            content: '';
            position: absolute;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle at 50% 50%, rgba(255, 179, 167, 0.5) 0%, rgba(255, 230, 225, 0.5) 50%, transparent 100%);
            animation: rotateBackgroundParticles 30s infinite linear;
        }

        .background-animation::after {
            animation-delay: -15s;
            opacity: 0.5;
        }

        @keyframes rotateBackgroundParticles {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        .particle {
            position: absolute;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            pointer-events: none;
            animation: floatParticle 20s infinite ease-in-out, moveParticle 15s infinite linear;
        }

        @keyframes floatParticle {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-30px);
            }
            100% {
                transform: translateY(0);
            }
        }

        @keyframes moveParticle {
            0% {
                transform: translate(0, 0);
            }
            25% {
                transform: translate(50px, -50px);
            }
            50% {
                transform: translate(0, -100px);
            }
            75% {
                transform: translate(-50px, -50px);
            }
            100% {
                transform: translate(0, 0);
            }
        }

        .particle:nth-child(1) { width: 10px; height: 10px; top: 10%; left: 20%; }
        .particle:nth-child(2) { width: 15px; height: 15px; top: 30%; left: 50%; }
        .particle:nth-child(3) { width: 8px; height: 8px; top: 60%; left: 70%; }
        .particle:nth-child(4) { width: 12px; height: 12px; top: 80%; left: 30%; }
        .particle:nth-child(5) { width: 20px; height: 20px; top: 40%; left: 80%; }
        .particle:nth-child(6) { width: 14px; height: 14px; top: 20%; left: 60%; }
        .particle:nth-child(7) { width: 16px; height: 16px; top: 50%; left: 10%; }
        .particle:nth-child(8) { width: 18px; height: 18px; top: 70%; left: 40%; }
        .particle:nth-child(9) { width: 12px; height: 12px; top: 15%; left: 80%; }
        .particle:nth-child(10) { width: 14px; height: 14px; top: 55%; left: 25%; }
        .particle:nth-child(11) { width: 20px; height: 20px; top: 85%; left: 65%; }
        .particle:nth-child(12) { width: 16px; height: 16px; top: 25%; left: 10%; }
        .particle:nth-child(13) { width: 22px; height: 22px; top: 45%; left: 90%; }
        .particle:nth-child(14) { width: 10px; height: 10px; top: 5%; left: 45%; }
        .particle:nth-child(15) { width: 12px; height: 12px; top: 65%; left: 55%; }

        footer{
            background-color: white;
            height: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Company Name</h1>
    </header>
    
    <nav>
        <a href="home.jsp">Home</a>
        <a href=services.jsp>Services</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
        <a href="review.jsp">Customer Reviews</a>

    </nav>

    <div class="background-animation"></div>

    <div class="container" id="reviews">
        <h1>Customer Reviews</h1>
        <div class="reviews">
            <div class="review-card">
                <h2>Praveenraj</h2>
                <p class="rating">Rating: &#9733;&#9733;&#9733;&#9733;&#9733;</p>
                <p class="comment">"Excellent service and support throughout the project!"</p>
            </div>
            <div class="review-card">
                <h2>Vishnu</h2>
                <p class="rating">Rating: &#9733;&#9733;&#9733;&#9733;&#9734;</p>
                <p class="comment">"Very happy with the results. Would recommend to others."</p>
            </div>
            <div class="review-card">
                <h2>Gunachandran</h2>
                <p class="rating">Rating: &#9733;&#9733;&#9733;&#9733;&#9733;</p>
                <p class="comment">"Professional and efficient. Exceeded expectations!"</p>
            </div>
            <div class="review-card">
                <h2>Karan</h2>
                <p class="rating">Rating: &#9733;&#9733;&#9733;&#9733;&#9734;</p>
                <p class="comment">"Great team, though communication could be improved."</p>
            </div>
            <div class="review-card">
                <h2>Murali</h2>
                <p class="rating">Rating: &#9733;&#9733;&#9733;&#9733;&#9733;</p>
                <p class="comment">"Fantastic work! Will definitely work with them again."</p>
            </div>
            <div class="review-card">
                <h2>Velu</h2>
                <p class="rating">Rating: &#9733;&#9733;&#9733;&#9733;&#9734;</p>
                <p class="comment">"Great team, though communication could be improved."</p>
            </div>
            <!-- Add more reviews as needed -->
        </div>
    </div>

    <div class="container" id="projects">
        <h1>Current Projects in Progress</h1>
        <div class="projects">
            <div class="project-card">
                <h2>Project A</h2>
                <p class="project-status">Status: In Progress</p>
                <p class="project-description">A brief description of Project A.</p>
            </div>
            <div class="project-card">
                <h2>Project B</h2>
                <p class="project-status">Status: In Progress</p>
                <p class="project-description">A brief description of Project B.</p>
            </div>
            <div class="project-card">
                <h2>Project C</h2>
                <p class="project-status">Status: In Progress</p>
                <p class="project-description">A brief description of Project C.</p>
            </div>
            <!-- Add more projects as needed -->
        </div>
    </div>

    <footer></footer>
</body>
</html>
