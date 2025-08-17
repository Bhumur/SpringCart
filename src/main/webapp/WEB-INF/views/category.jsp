<%@page import="java.util.List"%>
<%@ include file="header.jsp" %>

<h2 style="text-align:center; margin:40px 0; font-size:28px; color:#333; font-weight:600;">
     Shop by Category 
</h2>

<style>
    /* CARD CONTAINER */
    .card-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
        gap: 25px;
        padding: 20px 40px;
    }

    /* CATEGORY CARDS */
    .card {
        background: #fff;
        border-radius: 14px;
        overflow: hidden;
        box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        text-align: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover { 
        transform: translateY(-6px);
        box-shadow: 0 8px 20px rgba(0,0,0,0.18);
    }

    .card img {
        width: 100%; 
        height: 190px; 
        object-fit: cover; 
    }

    .card h3 { 
        margin: 15px 0 8px 0; 
        font-size: 20px; 
        color: #007bff;
    }

    .card p { 
        font-size: 14px; 
        color: #666; 
        padding: 0 12px;
        min-height: 40px;
    }

    /* BUTTON */
    .btn {
        display: inline-block;
        padding: 10px 18px;
        margin: 15px 0 20px 0;
        background: linear-gradient(135deg, #007bff, #00a6ff);
        color: white;
        border-radius: 8px;
        text-decoration: none;
        font-weight: 500;
        transition: background 0.3s ease, transform 0.2s ease;
    }
    .btn:hover { 
        background: linear-gradient(135deg, #0056b3, #0080cc);
        transform: scale(1.05);
    }
</style>

<div class="card-container">
    <%
        // Assuming categories is passed as request attribute from controller
        List<com.SpringCart.Dto.CategoryDto> categories =  (List<com.SpringCart.Dto.CategoryDto>)request.getAttribute("categories");
        if (categories != null) {
            for (com.SpringCart.Dto.CategoryDto cat : categories) {
    %>
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/<%= cat.getCategoryImg() %>" 
                         alt="<%= cat.getCategoryName() %>">
                    <h3><%= cat.getCategoryName() %></h3>
                    <p><%= cat.getCategoryDiscription() %></p>
                    <a class="btn" href="<%= request.getContextPath() %>/product/<%= cat.getCategoryId() %>">
                        View Products
                    </a>
                </div>
    <%
            }
        }
    %>
</div>

<%@ include file="footer.jsp" %>
