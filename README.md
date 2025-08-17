<div align="center">
  <h1>🛒 SpringCart</h1>
  <p>
    SpringCart is a <b>simple E-commerce web application</b> built using 
    <b>Spring Boot, Spring MVC, JSP, Hibernate (JPA), and H2 Database</b>.
  </p>
  <p>
    It allows <b>Admin</b> to manage categories and products, and 
    <b>Users</b> to register, login, and view products.
  </p>
</div>

<hr/>

<h2>📌 Features</h2>

<h3>👨‍💼 Admin</h3>
<ul>
  <li>Add, Edit, Delete Categories</li>
  <li>Add, Edit, Delete Products</li>
  <li>View all products with categories</li>
</ul>

<h3>👤 User</h3>
<ul>
  <li>Register with email/username</li>
  <li>Login using email or username</li>
  <li>View product catalog</li>
</ul>

<hr/>

<h2>🛠️ Tech Stack</h2>
<ul>
  <li><b>Backend:</b> Spring Boot, Spring MVC, Spring Data JPA</li>
  <li><b>Frontend:</b> JSP, JSTL, CSS</li>
  <li><b>Database:</b> H2 (in-memory, auto-configured)</li>
  <li><b>Build Tool:</b> Maven</li>
</ul>

<hr/>

<h2>⚙️ Installation & Setup</h2>
<ol>
  <li><b>Clone the repository</b>
    <pre><code>git clone https://github.com/your-username/SpringCart.git
cd SpringCart</code></pre>
  </li>
  <li><b>Build the project using Maven</b>
    <pre><code>mvn clean install</code></pre>
  </li>
  <li><b>Run the application</b>
    <pre><code>mvn spring-boot:run</code></pre>
  </li>
  <li><b>Access the app</b>
    <ul>
      <li>Open browser → <a href="http://localhost:8080">http://localhost:8080</a></li>
      <li>H2 Console → <a href="http://localhost:8080/h2-console">http://localhost:8080/h2-console</a></li>
      <li>JDBC URL: <code>jdbc:h2:mem:testdb</code></li>
      <li>Username: <code>sa</code></li>
      <li>Password: (leave blank)</li>
    </ul>
  </li>
</ol>

<hr/>

<h2>📂 Project Structure</h2>
<pre>
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
│── README.html
</pre>

<hr/>

<h2>🚀 Future Enhancements</h2>
<ul>
  <li>Shopping Cart & Checkout</li>
  <li>Payment Gateway Integration</li>
  <li>JWT Authentication</li>
  <li>REST API for Mobile Clients</li>
</ul>

<hr/>

<h2>🤝 Contributing</h2>
<ol>
  <li>Fork the repo</li>
  <li>Create your feature branch (<code>git checkout -b feature/new-feature</code>)</li>
  <li>Commit changes (<code>git commit -m "Add new feature"</code>)</li>
  <li>Push to branch (<code>git push origin feature/new-feature</code>)</li>
  <li>Open a Pull Request</li>
</ol>

<hr/>

<h2>📜 License</h2>
<p>
  This project is licensed under the <b>MIT License</b>.
</p>
