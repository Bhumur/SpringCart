# SpringCart
🛒 SpringCart

SpringCart is a simple E-commerce web application built using Spring Boot, Spring MVC, JSP, Hibernate (JPA), and H2 Database.
It allows Admin to manage categories and products, and Users to register, login, and view products.

📌 Features
👨‍💼 Admin

Add, Edit, Delete Categories

Add, Edit, Delete Products

View all products with categories

👤 User

Register with email/username

Login using email or username

View product catalog

🛠️ Tech Stack

Backend: Spring Boot, Spring MVC, Spring Data JPA

Frontend: JSP, JSTL, CSS

Database: H2 (in-memory, auto-configured)

Build Tool: Maven


⚙️ Installation & Setup

Clone the repository

git clone https://github.com/your-username/SpringCart.git
cd SpringCart


Build the project using Maven

mvn clean install


Run the application

mvn spring-boot:run


Access the app

Open browser → http://localhost:8080

H2 Console → http://localhost:8080/h2-console

JDBC URL: jdbc:h2:mem:testdb

Username: sa

Password: (leave blank)




📂 Project Structure
SpringCart/
│── src/main/java/com/springcart
│   ├── controller      # Controllers
│   ├── entity          # Entities (User, Category, Product)
│   ├── repository      # Spring Data JPA Repositories
│   └── service         # Business Logic
│
│── src/main/webapp/WEB-INF/jsp
│   ├── header.jsp
│   ├── footer.jsp
│   ├── home.jsp
│   ├── login.jsp
│   ├── register.jsp
│   ├── category.jsp
│   └── product.jsp
│
│── src/main/resources
│   ├── application.properties
│   └── static/css/style.css
│
│── pom.xml
│── README.md

📸 Screenshots

🔑 Login Page

📝 Register Page

📦 Product & Category Management

🚀 Future Enhancements

Shopping Cart & Checkout

Payment Gateway Integration

JWT Authentication

REST API for Mobile Clients

🤝 Contributing

Fork the repo

Create your feature branch (git checkout -b feature/new-feature)

Commit changes (git commit -m "Add new feature")

Push to branch (git push origin feature/new-feature)

Open a Pull Request
