<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            position: relative;
            background: radial-gradient(circle at 50% 50%, rgba(255, 179, 167, 0.5), rgba(255, 230, 225, 0.5));
        }

        .background-animation {
            position: fixed;
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
            opacity: 0.5;
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
            position: relative;
            z-index: 1;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 35px rgba(0, 0, 0, 0.2);
        }

        .contact-info, .contact-form {
            margin-bottom: 20px;
        }

        .contact-info h2, .contact-form h2 {
            color: #ff7e5f;
            margin-bottom: 15px;
        }

        .contact-info p {
            font-size: 16px;
            line-height: 1.6;
        }

        .contact-form form {
            display: flex;
            flex-direction: column;
        }

        .contact-form label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        .contact-form input, .contact-form textarea {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        .contact-form input:focus, .contact-form textarea:focus {
            border-color: #ff7e5f;
            outline: none;
        }

        .contact-form button {
            padding: 15px;
            border: none;
            border-radius: 5px;
            background-color: #ff7e5f;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        .contact-form button:hover {
            background-color: #ff9675;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
    <div class="background-animation">
        <!-- Background particles removed for static background -->
    </div>

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
        <div class="contact-info">
            <h2>Contact Details</h2>
            <p><strong>Email:</strong> info@company.com</p>
            <p><strong>Phone:</strong> +91 9876543210</p>
            <p><strong>Address:</strong> 123 Business St, City, Salem</p>
            <p><strong>Business Hours:</strong> Mon-Fri 9:00 AM - 6:00 PM</p>
            <p>Feel free to reach out with any questions or inquiries. We're here to help!</p>
        </div>

        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form id="contactForm" action="#" method="post">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Your Message:</label>
                <textarea id="message" name="message" rows="6" placeholder="Write your message here"></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Company Name. All rights reserved.</p>
    </footer>

    <script>
        document.getElementById('contactForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevents the form from submitting normally
            alert('Thank you for your message! We will get back to you soon.');
            this.reset(); // Optionally reset the form fields
        });
    </script>
</body>
</html>
