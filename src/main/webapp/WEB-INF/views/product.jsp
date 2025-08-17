<%@page import="com.SpringCart.Dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp" %>

<h2 style="text-align:center; margin:40px 0; font-size:28px; color:#333; font-weight:600;">
    Products
</h2>

<style>
    .card-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
        gap: 25px;
        padding: 20px 40px;
    }

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

    .btn {
        display: inline-block;
        padding: 10px 18px;
        margin: 10px 5px 20px 5px;
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

    .btn.remove {
        background: linear-gradient(135deg, #ff4b5c, #ff6b81);
    }
    .btn.remove:hover {
        background: linear-gradient(135deg, #cc0000, #ff3333);
    }
</style>

<div class="card-container">
    <%
        // Assuming servlet sets request attribute "products" as List<Product>
        List<ProductDto> products = (List<ProductDto>) request.getAttribute("products");
        if (products != null) {
            for (ProductDto prod : products) {
    %>
        <div class="card">
            <h3><%= prod.getProductsName() %></h3>
            <p><b>₹<%= prod.getProductsPrice() %></b></p>

            <!-- Add to Cart -->
            <form action="<%= request.getContextPath() %>/cart" method="post" style="display:inline;">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="productId" value="<%= prod.getProductid() %>">
                <button type="submit" class="btn">Add to Cart</button>
            </form>

            <!-- Remove from Cart -->
            <form action="<%= request.getContextPath() %>/cart" method="post" style="display:inline;">
                <input type="hidden" name="action" value="remove">
                <input type="hidden" name="productId" value="<%= prod.getProductid() %>">
                <button type="submit" class="btn remove">Remove</button>
            </form>
        </div>
    <%
            }
        } else {
    %>
        <p style="grid-column:1/-1; text-align:center; font-size:18px; color:#777;">
            No products available in this category.
        </p>
    <%
        }
    %>
</div>

<%@ include file="footer.jsp" %>
