<%@ page import="dao.CustomerDao"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Customers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
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
    <h1>View Customers</h1>
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
            </tr>
        </thead>
        <tbody>
            <%
            // Use a DAO method to fetch all customers and display them here
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
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
