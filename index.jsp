<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In & Registration</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(90deg, #ff7e5f, #feb47b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
            position: relative;
            animation: rotateBackground 20s infinite linear;
        }

        @keyframes rotateBackground {
            0% {
                background: linear-gradient(90deg, #ff7e5f, #feb47b);
            }
            50% {
                background: linear-gradient(270deg, #ff7e5f, #feb47b);
            }
            100% {
                background: linear-gradient(90deg, #ff7e5f, #feb47b);
            }
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
            background: radial-gradient(circle at 50% 50%, rgba(255, 126, 95, 0.5) 0%, rgba(254, 180, 123, 0.5) 50%, transparent 100%);
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
            animation: floatParticle 10s infinite ease-in-out;
        }

        @keyframes floatParticle {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-20px);
            }
            100% {
                transform: translateY(0);
            }
        }

        /* Additional floating particles */
        .particle:nth-child(1) { width: 10px; height: 10px; top: 10%; left: 20%; animation-duration: 12s; }
        .particle:nth-child(2) { width: 15px; height: 15px; top: 30%; left: 50%; animation-duration: 8s; }
        .particle:nth-child(3) { width: 8px; height: 8px; top: 60%; left: 70%; animation-duration: 14s; }
        .particle:nth-child(4) { width: 12px; height: 12px; top: 80%; left: 30%; animation-duration: 10s; }
        .particle:nth-child(5) { width: 20px; height: 20px; top: 40%; left: 80%; animation-duration: 9s; }
        .particle:nth-child(6) { width: 14px; height: 14px; top: 20%; left: 60%; animation-duration: 11s; }
        .particle:nth-child(7) { width: 16px; height: 16px; top: 50%; left: 10%; animation-duration: 13s; }
        .particle:nth-child(8) { width: 18px; height: 18px; top: 70%; left: 40%; animation-duration: 15s; }
        .particle:nth-child(9) { width: 12px; height: 12px; top: 15%; left: 80%; animation-duration: 9s; }
        .particle:nth-child(10) { width: 14px; height: 14px; top: 55%; left: 25%; animation-duration: 12s; }
        .particle:nth-child(11) { width: 20px; height: 20px; top: 85%; left: 65%; animation-duration: 11s; }
        .particle:nth-child(12) { width: 16px; height: 16px; top: 25%; left: 10%; animation-duration: 14s; }
        .particle:nth-child(13) { width: 22px; height: 22px; top: 45%; left: 90%; animation-duration: 10s; }
        .particle:nth-child(14) { width: 10px; height: 10px; top: 5%; left: 45%; animation-duration: 13s; }
        .particle:nth-child(15) { width: 12px; height: 12px; top: 65%; left: 55%; animation-duration: 14s; }

        .container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            display: flex;
            animation: slideInContainer 1.5s ease-out forwards;
        }

        @keyframes slideInContainer {
            0% {
                transform: translateY(-50px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .form-container {
            padding: 50px;
            width: 100%;
            max-width: 400px;
            transition: transform 0.6s ease-in-out;
        }

        .sign-in-container {
            transform: translateX(0);
        }

        .sign-up-container {
            transform: translateX(100%);
        }

        input {
            background-color: #f6f7f9;
            border: none;
            padding: 15px;
            margin: 8px 0;
            width: 100%;
            border-radius: 5px;
            box-sizing: border-box;
            transition: box-shadow 0.3s ease, transform 0.2s ease;
        }

        input:focus {
            box-shadow: 0 0 8px rgba(255, 126, 95, 0.8);
            outline: none;
            transform: scale(1.05);
        }

        button {
            border-radius: 20px;
            border: 1px solid #ff7e5f;
            background-color: #ff7e5f;
            color: white;
            font-size: 14px;
            font-weight: bold;
            padding: 15px 40px;
            letter-spacing: 1px;
            transition: transform 0.2s, box-shadow 0.3s ease, background-color 0.3s;
            cursor: pointer;
        }

        button:hover {
            transform: scale(1.1);
            box-shadow: 0 5px 15px rgba(255, 126, 95, 0.4);
            background-color: #ff9675;
        }

        h1 {
            font-weight: bold;
            margin-bottom: 30px;
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

        p {
            font-size: 14px;
        }

        a {
            color: #ff7e5f;
            text-decoration: none;
            position: relative;
            transition: color 0.3s;
        }

        a:hover {
            color: #ff9675;
        }

        a::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 2px;
            background-color: #ff7e5f;
            bottom: -3px;
            left: 0;
            transform: scaleX(0);
            transform-origin: right;
            transition: transform 0.3s ease;
        }

        a:hover::after {
            transform: scaleX(1);
            transform-origin: left;
        }

        /* Navigation links */
        nav {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            gap: 15px;
            animation: fadeInNav 1.5s ease-in-out forwards;
        }

        @keyframes fadeInNav {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        nav a {
            color: white;
            font-weight: bold;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 20px;
            background-color: rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: rgba(0, 0, 0, 0.4);
        }
    </style>
</head>
<body>
    <div class="background-animation"></div>

    <!-- Floating particles -->
    <div class="particle" style="width: 10px; height: 10px; top: 10%; left: 20%;"></div>
    <div class="particle" style="width: 15px; height: 15px; top: 30%; left: 50%;"></div>
    <div class="particle" style="width: 8px; height: 8px; top: 60%; left: 70%;"></div>
    <div class="particle" style="width: 12px; height: 12px; top: 80%; left: 30%;"></div>
    <div class="particle" style="width: 20px; height: 20px; top: 40%; left: 80%;"></div>
    <div class="particle" style="width: 14px; height: 14px; top: 20%; left: 60%;"></div>
    <div class="particle" style="width: 16px; height: 16px; top: 50%; left: 10%;"></div>
    <div class="particle" style="width: 18px; height: 18px; top: 70%; left: 40%;"></div>
    <div class="particle" style="width: 12px; height: 12px; top: 15%; left: 80%;"></div>
    <div class="particle" style="width: 14px; height: 14px; top: 55%; left: 25%;"></div>
    <div class="particle" style="width: 20px; height: 20px; top: 85%; left: 65%;"></div>
    <div class="particle" style="width: 16px; height: 16px; top: 25%; left: 10%;"></div>
    <div class="particle" style="width: 22px; height: 22px; top: 45%; left: 90%;"></div>
    <div class="particle" style="width: 10px; height: 10px; top: 5%; left: 45%;"></div>
    <div class="particle" style="width: 12px; height: 12px; top: 65%; left: 55%;"></div>

    <!-- Navigation links -->
    <nav>
        
    </nav>
    
    <div class="container">
        <div class="form-container sign-in-container">
            <form action="home.jsp" method="get">
                <h1>Sign In</h1>
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Password" required>
                <button type="submit">Sign In</button>
                <p>Don't have an account? <a href="#" id="signUpLink">Register here</a></p>
            </form>
        </div>

        <div class="form-container sign-up-container">
            <form action="#">
                <h1>Register</h1>
                <input type="text" placeholder="Username" required>
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Password" required>
                <button type="submit">Register</button>
                <p>Already have an account? <a href="#" id="signInLink">Sign In here</a></p>
            </form>
        </div>
    </div>

    <script>
        const signUpLink = document.getElementById('signUpLink');
        const signInLink = document.getElementById('signInLink');
        const signInContainer = document.querySelector('.sign-in-container');
        const signUpContainer = document.querySelector('.sign-up-container');

        signUpLink.addEventListener('click', (event) => {
            event.preventDefault();
            signInContainer.style.transform = 'translateX(-100%)';
            signUpContainer.style.transform = 'translateX(0)';
        });

        signInLink.addEventListener('click', (event) => {
            event.preventDefault();
            signInContainer.style.transform = 'translateX(0)';
            signUpContainer.style.transform = 'translateX(100%)';
        });
    </script>
</body>
</html>
