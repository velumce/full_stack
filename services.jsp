<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - IT Solutions</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #ff7e5f;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background-color: #ff7e5f;
            padding: 10px 20px;
            color: white;
            text-align: center;
        }

        nav {
            background-color: #2c3e50;
            padding: 15px;
            text-align: center;
        }

        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1.5s ease-in-out;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #ff7e5f;
        }

        p {
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.1em;
        }

        form {
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: slideIn 1.5s ease-in-out;
            flex: 0 0 55%;
        }

        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateX(-50px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .form-group input, 
        .form-group select, 
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .form-group textarea {
            resize: vertical;
            height: 100px;
        }

        .form-group input[type="checkbox"] {
            transform: scale(1.3);
            margin-right: 10px;
        }

        .form-group input[type="submit"] {
            background-color: #ff7e5f;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            padding: 12px;
        }

        .form-group input[type="submit"]:hover {
            background-color: #ff9675;
            transform: translateY(-2px);
        }

        .image-container {
            flex: 0 0 40%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            animation: slideInFromRight 1.5s ease-in-out;
        }

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


        .image-container img {
            max-width: 100%;
            height: 300px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
            transition: transform 0.3s;
        }

        .image-container img:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <header>
        <h1>IT Solutions</h1>
    </header>

    <nav>
        <a href="home.jsp">Home</a>
        <a href=services.jsp>Services</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
        <a href="review.jsp">Customer Reviews</a>
    </nav>

    <div class="container">
        <form action="submit.html" method="post">
            <h1>Our Services</h1>
            <p>Select the services you're interested in and provide your contact details:</p>
            
            <div class="form-group">
                <label for="services">Choose Services:</label>
                <div>
                    <input type="checkbox" id="service1" name="services[]" value="Custom Software Development">
                    <label for="service1">Custom Software Development</label>
                </div>
                <div>
                    <input type="checkbox" id="service2" name="services[]" value="Data Analysis">
                    <label for="service2">Data Analysis</label>
                </div>
                <div>
                    <input type="checkbox" id="service3" name="services[]" value="Artificial Intelligence">
                    <label for="service3">Artificial Intelligence</label>
                </div>
                <div>
                    <input type="checkbox" id="service4" name="services[]" value="Cybersecurity">
                    <label for="service4">Cybersecurity</label>
                </div>
                <div>
                    <input type="checkbox" id="service5" name="services[]" value="Blockchain">
                    <label for="service5">Blockchain</label>
                </div>
                <div>
                    <input type="checkbox" id="service6" name="services[]" value="Cloud Solutions">
                    <label for="service6">Cloud Solutions</label>
                </div>
                <div>
                    <input type="checkbox" id="service7" name="services[]" value="Mobile App Development">
                    <label for="service7">Mobile App Development</label>
                </div>
                <div>
                    <input type="checkbox" id="service8" name="services[]" value="IoT Solutions">
                    <label for="service8">IoT Solutions</label>
                </div>
                <div>
                    <input type="checkbox" id="service9" name="services[]" value="DevOps Services">
                    <label for="service9">DevOps Services</label>
                </div>
            </div>

            <div class="form-group">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="details">Any Specific Customization?</label>
                <textarea id="details" name="details" placeholder="Describe your customization..."></textarea>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>

        <div class="image-container">
            <img src="https://ardentit.com.sg/wp-content/uploads/2022/03/IT-Technology.jpg" alt="IT Technology 1">
            <img src="data:image/jpeg;base64,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" alt="IT Technology 2">
            <img src="https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg" alt="IT Technology 3">
        </div>
    </div>
</body>
</html>
