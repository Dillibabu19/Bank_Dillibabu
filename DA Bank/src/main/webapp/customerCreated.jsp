<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Customer"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Created Successfully</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            text-align: center;
        }
        p {
            margin-bottom: 10px;
        }
        .info {
            background-color: #e9f5ff;
            border: 1px solid #007bff;
            border-radius: 5px;
            padding: 10px;
            margin-top: 20px;
        }
        .btn {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Created Successfully</h1>
        <% Customer newCustomer = (Customer) request.getAttribute("newCustomer"); %>
        <p>A new customer account has been created with the following details:</p>
        <div class="info">
            <p><strong>Account Number:</strong> <%= newCustomer.getAccountNo() %></p>
            <p><strong>Temporary Password:</strong> <%= newCustomer.getTempPassword() %></p>
        </div>
        <p>Please provide these details to the customer. They will need to change their password upon first login.</p>
        <a href="adminDashboard.jsp" class="btn">Return to Dashboard</a>
    </div>
</body>
</html>