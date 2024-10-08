<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Register Page</title>
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
            overflow: hidden;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            height: 60%;
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
            width: 80%;
            padding: 12px;
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

    <script>
        function validateForm() {
            let valid = true;

            const email = document.getElementById("email");
            const password = document.getElementById("password");
            const confirmPassword = document.getElementById("confirmPassword");

            // Email validation
            if (!email.value.trim()) {
                document.getElementById("emailError").style.display = "inline";
                valid = false;
            } else {
                document.getElementById("emailError").style.display = "none";
            }

            // Password validation
            if (!password.value.trim()) {
                document.getElementById("passwordError").style.display = "inline";
                valid = false;
            } else {
                document.getElementById("passwordError").style.display = "none";
            }

            // Confirm Password validation
            if (password.value !== confirmPassword.value) {
                document.getElementById("confirmPasswordError").style.display = "inline";
                valid = false;
            } else {
                document.getElementById("confirmPasswordError").style.display = "none";
            }

            return valid;
        }
    </script>

</head>
<body>
<div class="background">
    <div class="container">
        <h2>Register as Student</h2>
        <form action="${pageContext.request.contextPath}/demo" method="GET">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required><br>
            <span class="error" id="emailError" style="color:red; display:none;">Please enter a valid email</span><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="form-control" required><br>
            <span class="error" id="passwordError" style="color:red; display:none;">Please enter a password</span><br>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required><br>
            <span class="error" id="confirmPasswordError" style="color:red; display:none;">Passwords do not match</span><br>

            <button type="submit" class="btn btn-primary">Register</button>
            <p>Register As Admin <a href="http://localhost:8080/registerA">Register as Admin</a></p>
            <p>or sign in :<a href="http://localhost:8080/demo1">Login as Admin</a></p>
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
    </div>
</div>
</body>
</html>
