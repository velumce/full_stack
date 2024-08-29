
You said:
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT Services Company</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(90deg, #ffb3a7, #ffe6e1);
            
        }

        header {
            background-color:#f96751 ;
            color:white;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }

        nav {
            background-color: rgba(0, 0, 0, 0.8);
            display: flex;
            justify-content: center;
            padding: 10px 0;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #d1ecf1;
        }

        .hero {
            background-image: url("https://static.vecteezy.com/system/resources/previews/025/879/465/original/abstract-gradient-linear-background-on-peach-orange-shade-colors-simple-smooth-graphic-design-wallpaper-template-suitable-for-digital-decoration-backdrop-banner-free-vector.jpg");
            background-size: cover;
            color: white;
            padding: 100px 20px;
            text-align: center;
        }

        .hero h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 600px;
            margin: 0 auto;
        }

        .services {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 50px 20px;
        }

        .service-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 15px;
            padding: 30px;
            text-align: center;
            width: 300px;
            transition: transform 0.3s;
            cursor: pointer;
        }

        .service-card:hover {
            transform: translateY(-5px);
        }

        .service-card img {
            width: 300px;
            height: 300px;
            margin-bottom: 20px;
            object-fit: contain;
        }

        .service-card h3 {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .service-card p {
            font-size: 1rem;
            margin-bottom: 20px;
        }

        .service-details {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            padding: 30px;
            max-width: 800px;
            display: none;
        }

        .service-details h3 {
            font-size: 2rem;
            margin-bottom: 20px;
            text-align: center;
        }

        .service-details p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        footer {
            background-color: #5d9cec;
            color: white;
            padding: 20px;
            text-align: center;
        }

        footer p {
            margin: 0;
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <header>
        <h1>SLM TECH INOVATIONS</h1>
    </header>

    <nav>
        <a href="home.jsp">Home</a>
        <a href=services.jsp>Services</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
        <a href="review.jsp">Customer Reviews</a>
    </nav>

    <section class="hero" id="home">
        <h2>Your Trusted IT Partner</h2>
        <p>We provide top-notch software solutions to help your business thrive in the digital age.</p>
    </section>

    <section class="services" id="services">
        <div class="service-card" data-service="software">
            <img src="https://media.licdn.com/dms/image/C5612AQF79epthg7Wbw/article-cover_image-shrink_600_2000/0/1649140977382?e=2147483647&v=beta&t=TWdZXq9ERp2E-4kM-_iHX3IWYY3MCMVajsOpRtNY_UA" alt="Custom Software">
            <h3>Custom Software Development</h3>
            <p>Tailored solutions to meet your unique business needs.</p>
        </div>

        <div class="service-card" data-service="cloud">
            <img src="https://pc-tablet.co.in/wp-content/uploads/2024/05/Cloud-Computing.jpeg" alt="Cloud Solutions">
            <h3>Cloud Solutions</h3>
            <p>Leverage the power of the cloud for flexibility and scalability.</p>
        </div>

        <div class="service-card" data-service="cybersecurity">
            <img src="https://ivtec.info/wp-content/uploads/2024/06/Cyber-Security-Icon-Concept-2-1-1024x632-1.jpeg" alt="Cybersecurity">
            <h3>Cybersecurity Services</h3>
            <p>Protect your digital assets with our comprehensive security services.</p>
        </div>

        <div class="service-card" data-service="mobile">
            <img src="https://blog.webhopers.com/wp-content/uploads/2022/03/Top-Mobile-App-Development-Companies-in-Chennai-1.png" alt="Mobile Development">
            <h3>Mobile App Development</h3>
            <p>Innovative mobile apps to engage your customers on the go.</p>
        </div>

        <div class="service-card" data-service="ai">
            <img src="https://images.forbesjapan.com/media/article/65767/images/main_image_d7bbd8a2a16f980ca695136f2e708d22a59bd651.jpg?w=1200" alt="AI Solutions">
            <h3>Artificial Intelligence Solutions</h3>
            <p>Advanced AI technologies to automate and enhance your business processes.</p>
        </div>

        <div class="service-card" data-service="analytics">
            <img src="https://edvancer.in/wp-content/uploads/2022/10/What-is-data-analytics-How-it-can-help-your-career-738x472.jpg" alt="Data Analytics">
            <h3>Data Analytics</h3>
            <p>Turn data into actionable insights with our analytics services.</p>
        </div>

        <div class="service-card" data-service="blockchain">
            <img src="https://www.blueoceanacademy.com/wp-content/uploads/2023/09/Blockchain-Applications-Analysed-through-Workshop-Sessions-1024x512.jpeg" alt="Blockchain Development">
            <h3>Blockchain Development</h3>
            <p>Secure and transparent blockchain solutions for modern enterprises.</p>
        </div>

        <div class="service-card" data-service="iot">
            <img src="https://media.licdn.com/dms/image/v2/D4E12AQFcM06PS2oyYg/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1699602755552?e=2147483647&v=beta&t=Bf_5MypV6bX7-gMbDnlf4v4KDIm8mSUjqHvCMt96iA0" alt="IoT Solutions">
            <h3>IoT Solutions</h3>
            <p>Connect and manage your devices with our Internet of Things services.</p>
        </div>

        <div class="service-card" data-service="devops">
            <img src="https://iabac.org/blog/uploads/images/202309/image_870x_650ece21df858.jpg" alt="DevOps Services">
            <h3>DevOps Services</h3>
            <p>Streamline your software development with our DevOps practices.</p>
        </div>
    </section>

    <section class="service-details" id="service-details">
        <h3 id="service-title"></h3>
        <p id="service-description"></p>
    </section>

    <footer>
        <p>&copy; 2024 Tech Solutions Inc. All rights reserved.</p>
    </footer>

    <script>
        const services = {
            software: {
                title: "Custom Software Development",
                description: "Our custom software development services provide tailored solutions to meet the specific needs of your business. Whether you require a new application, system integration, or modernization of legacy software, our experienced developers are here to help you achieve your goals."
            },
            cloud: {
                title: "Cloud Solutions",
                description: "Our cloud solutions offer flexibility and scalability, enabling your business to leverage the full power of the cloud. We provide cloud strategy, migration, and management services to ensure that your operations run smoothly and efficiently in the cloud."
            },
            cybersecurity: {
                title: "Cybersecurity Services",
                description: "Protect your business with our comprehensive cybersecurity services. From threat detection and response to risk assessment and compliance, we offer a wide range of solutions to safeguard your digital assets."
            },
            mobile: {
                title: "Mobile App Development",
                description: "Engage your customers on the go with our innovative mobile app development services. We create user-friendly, high-performance mobile applications for iOS and Android platforms that align with your business objectives."
            },
            ai: {
                title: "Artificial Intelligence Solutions",
                description: "Our AI solutions leverage advanced machine learning and data analytics to automate processes, enhance decision-making, and unlock new opportunities for your business. From chatbots to predictive analytics, we deliver AI-driven results."
            },
            analytics: {
                title: "Data Analytics",
                description: "Transform your data into actionable insights with our data analytics services. We offer data warehousing, business intelligence, and predictive analytics solutions to help you make informed decisions and drive business growth."
            },
            blockchain: {
                title: "Blockchain Development",
                description: "Secure and transparent blockchain solutions for modern enterprises. We provide blockchain consulting, development, and implementation services to help you harness the power of decentralized technology."
            },
            iot: {
                title: "IoT Solutions",
                description: "Connect and manage your devices with our Internet of Things (IoT) solutions. We offer IoT strategy, development, and management services to help you optimize operations and create new business models."
            },
            devops: {
                title: "DevOps Services",
                description: "Streamline your software development lifecycle with our DevOps services. We help you achieve faster time to market, improved collaboration, and continuous delivery through automation and best practices."
            }
        };

        const serviceCards = document.querySelectorAll('.service-card');
        const serviceDetails = document.getElementById('service-details');
        const serviceTitle = document.getElementById('service-title');
        const serviceDescription = document.getElementById('service-description');

        serviceCards.forEach(card => {
            card.addEventListener('click', () => {
                const service = services[card.getAttribute('data-service')];
                serviceTitle.textContent = service.title;
                serviceDescription.textContent = service.description;
                serviceDetails.style.display = 'block';
                serviceDetails.scrollIntoView({ behavior: 'smooth' });
            });
        });
    </script>
</body>
</html>