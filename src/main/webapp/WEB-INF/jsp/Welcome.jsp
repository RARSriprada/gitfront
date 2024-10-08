<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .navbar {
            width: 100%;
            padding: 10px;
            background-color: #064D4D; /* Darker shade for navbar */
            position: fixed;
            top: 0;
            left: 0;
            z-index: 2;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: flex-start;
        }

        .navbar ul li {
            margin: 0 20px;
            position: relative; /* Added for dropdown positioning */
        }

        .navbar ul li a {
            text-decoration: none;
            color: white;
            font-family: 'Great Vibes', cursive;
            font-size: 1.0rem;
            display: inline-block;
        }

        .dropdown {
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #064D4D;
            display: none; /* Hide dropdown by default */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1;
            width: 200px; /* Set a fixed width for the dropdown */
        }

        .dropdown a {
            display: block;
            padding: 10px 15px; /* Added horizontal and vertical padding */
            color: white;
			font-family: 'Great Vibes', cursive;	
            font-size: 0.8rem;
            text-decoration: none;
            border-bottom: 1px solid #052E2E; /* Separator between items */
            transition: background-color 0.3s ease; /* Smooth background color transition */
        }

        .dropdown a:last-child {
            border-bottom: none; /* Remove border for the last item */
        }

        .dropdown a:hover {
            background-color: #052E2E; /* Slightly darker shade on hover */
        }

        .navbar ul li:hover .dropdown {
            display: block; /* Show dropdown on hover */
        }

        .navbar ul li .dropdown-symbol {
            display: inline-block;
            margin-left: 5px;
            font-size: 1rem;
            vertical-align: middle;
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

        .title {
            color: #fff;
            font-family: "Times New Roman", Times, serif;
            font-size: 3rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 2rem;
            position: relative; /* Make sure it has positioning context for the icon */
        }

        .title2 {
            color: #fff;
            font-family: "Brush Script MT", cursive;
            font-size: 2rem;
            text-align: center;
            white-space: nowrap;
            overflow: hidden;
            border-right: 2px solid #fff;
            width: 0;
            animation: typing 10s steps(40, end), 0.75s step-end infinite;
            animation-iteration-count: infinite;
        }

        /* Typing animation */
        @keyframes typing {
            0% { width: 0; }
            50% { width: 45%; }
            100% { width: 0; }
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
            0% { transform: translateY(0) scale(1); opacity: 1; }
            50% { transform: translateY(-100px) scale(0.5); opacity: 0.5; }
            100% { transform: translateY(0) scale(1); opacity: 1; }
        }

        /* Lightbulb icon styling */
        .bulb-icon {
            font-size: 4rem;
            color: #FFD700; /* Lightbulb color */
            position: absolute;
            top: -80px; /* Adjust as needed */
            animation: bulbAnimation 1s infinite;
        }

        @keyframes bulbAnimation {
            0% { transform: scale(1); }
            50% { transform: scale(1.2); }
            100% { transform: scale(1); }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <ul>
            <li><a href="#">Home</a></li>
            <li>
                <a href="#">Courses<span class="dropdown-symbol">&#9662;</span></a> <!-- Dropdown arrow -->
                <div class="dropdown">
                    <a href="http://localhost:8080/Welcome/viewcourse">View Courses</a>
                   
                </div>
            </li>
            <li><a href="http://localhost:8080/Welcome/grade">Grade And Progress</a></li>
            <li><a href="http://localhost:8080/Welcome/feedback">FeedBack</a></li>
            <li><a href="http://localhost:8080/Welcome/assignment">Assignments</a></li>
            <li><a href="http://localhost:8080/Welcome/contact">Contact</a></li>
           <li> <a href="http://localhost:8080/demo" >Logout</a></li>
        </ul>
    </div>

    <div class="background">
        
        <div class="title">Welcome to the Online Course Management</div> <!-- Heading -->
        <div class="title2">Engage, Learn, and Achieve More with Our LMS</div> <!-- Animated Caption -->
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
</body>
</html>
