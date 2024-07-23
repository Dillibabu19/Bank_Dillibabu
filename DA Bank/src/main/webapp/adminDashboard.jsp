<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.CustomerDao"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Customer"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        line-height: 1.6;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    .container {
        width: 90%;
        margin: auto;
        overflow: hidden;
        padding: 20px;
    }
    h1 {
        color: #333;
        text-align: center;
        margin-bottom: 30px;
    }
    .action-buttons {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }
    .btn {
        display: inline-block;
        color: #fff;
        background-color: #007bff;
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .btn:hover {
        background-color: #0056b3;
    }
    .btn-danger {
        background-color: #dc3545;
    }
    .btn-danger:hover {
        background-color: #c82333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #007bff;
        color: #fff;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Admin Dashboard</h1>
    
    <div class="action-buttons">
        <a href="createCustomer.jsp" class="btn">Create Customer</a>
        <a href="deleteCustomer.jsp" class="btn">Delete Customer</a>
        <form action="LogoutController" method="post" style="display:inline;">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>Account No</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Mobile No</th>
                <th>Email ID</th>
                <th>Account Type</th>
                <th>Date of Birth</th>
                <th>ID Proof</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
<%
CustomerDao customerDao = new CustomerDao();
List<Customer> customers = customerDao.getAllCustomers();
for (Customer customer : customers) {
%>
<tr>
    <td><%= customer.getAccountNo() %></td>
    <td><%= customer.getFullName() %></td>
    <td><%= customer.getAddress() %></td>
    <td><%= customer.getMobileNo() %></td>
    <td><%= customer.getEmailId() %></td>
    <td><%= customer.getAccountType() %></td>
    <td><%= customer.getDateOfBirth() %></td>
    <td><%= customer.getIdProof() %></td>
    <td>
        <form action="AdminController" method="post" style="display:inline;">
            <input type="hidden" name="action" value="edit">
            <input type="hidden" name="accountNo" value="<%= customer.getAccountNo() %>">
            <input type="submit" value="Edit" class="btn">
        </form>
    </td>
</tr>
<% } %>
</tbody>
    </table>
</div>
</body>
</html>
