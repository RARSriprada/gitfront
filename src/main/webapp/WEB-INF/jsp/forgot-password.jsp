<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password Page</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
        }

        .background {
            background-color: #096C6C; /* Peacock green background color */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden; /* Ensure fireflies stay within the container */
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            height: 35%;
            position: relative;
            z-index: 1;
        }

        .text-center {
            text-align: center;
        }

        .form-outline {
            margin-bottom: 1.5rem;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 1rem;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-link {
            color: #007bff;
        }

        .btn-link:hover {
            color: #0056b3;
        }

        .text-center p {
            margin: 1rem 0;
        }

        .btn-link {
            margin: 0 5px;
        }

        .mb-4 {
            margin-bottom: 1.5rem;
        }

        /* Fireflies effect */
        .fireflies {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
        }

        .fireflies span {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.8);
            width: 5px;
            height: 2px;
            animation: fly 10s infinite;
        }

        @keyframes fly {
            0% {
                transform: translateY(0) scale(1);
                opacity: 1;
            }
            50% {
                transform: translateY(-100px) scale(0.5);
                opacity: 0.5;
            }
            100% {
                transform: translateY(0) scale(1);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<div class="background">
    <div class="container">
        <h2>Forgot Password</h2>
        <form action="/forgot-password" method="post">
            <label for="email">Enter your email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
            <button type="submit" class="btn btn-primary">Send Reset Link</button>
        </form>
    </div>
    <!-- Fireflies effect -->
    <div class="fireflies">
        <span style="top: 10%; left: 20%;"></span>
        <span style="top: 30%; left: 50%;"></span>
        <span style="top: 70%; left: 80%;"></span>
        <span style="top: 50%; left: 30%;"></span>
        <span style="top: 90%; left: 60%;"></span>
        <span style="top: 20%; left: 70%;"></span>
        <span style="top: 40%; left: 40%;"></span>
        <span style="top: 60%; left: 80%;"></span>
        <span style="top: 80%; left: 10%;"></span>
        <span style="top: 20%; left: 50%;"></span>
        <!-- Add more fireflies as needed -->
    </div>
</div>
</body>
</html>
