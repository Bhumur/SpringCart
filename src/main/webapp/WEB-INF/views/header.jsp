<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SpringCart</title>
    <!-- Link CSS -->
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <!-- Navbar -->
    <header>
        <nav class="navbar">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/">SpringCart 🛒</a>
            </div>
            <ul class="nav-links">
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="${pageContext.request.contextPath}/cart">Cart</a></li>
                <li><a href="${pageContext.request.contextPath}/orders">Orders</a></li>
                <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
            </ul>
        </nav>
    </header>
