<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SpringCart</title>
    <link rel="stylesheet" href="/css/style.css">
    <style>
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #222;
            padding: 12px 30px;
            color: #fff;
        }
        .logo a {
            font-size: 1.8rem;
            font-weight: bold;
            color: #fff;
            text-decoration: none;
        }
        .nav-buttons {
            display: flex;
            gap: 20px;
            align-items: center;
        }
        .nav-buttons a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 6px;
            background: #007bff;
            font-weight: 500;
            transition: background 0.3s;
        }
        .nav-buttons a:hover {
            background: #0056b3;
        }
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }
            .nav-buttons {
                flex-direction: column;
                gap: 10px;
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar">
        <!-- Logo -->
        <div class="logo">
            <a href="${pageContext.request.contextPath}/">SpringCart 🛒</a>
        </div>

        <!-- Buttons -->
        <div class="nav-buttons">
            <a href="${pageContext.request.contextPath}/category">Category</a>
            <a href="${pageContext.request.contextPath}/cart">Cart</a>

            <c:choose>
                <c:when test="${empty sessionScope.loggedUser}">
                    <a href="${pageContext.request.contextPath}/login">Login</a>
                    <a href="${pageContext.request.contextPath}/register">Register</a>
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath}/logout">Logout</a>
                </c:otherwise>
            </c:choose>
        </div>
    </nav>
</header>
