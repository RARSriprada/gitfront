<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Animation</title>
    <style>
        body {
            background-color: #096C6C; /* Peacock green background color */
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center; /* Center the content horizontally */
            align-items: center;
            overflow: hidden;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        .book {
            position: relative;
            width: 24rem; /* Increased width */
            height: 16rem; /* Increased height */
            perspective: 70rem;
            margin-right: 3rem; /* Increased space between book and title */
        }

        .cover, .page {
            position: absolute;
            top: 0;
            left: 0;
            padding: 1rem;
            box-shadow: inset 3px 0px 20px rgba(0, 0, 0, 0.2),
                        0px 0px 15px rgba(0, 0, 0, 0.1);
            border-radius: 5px 0 0 5px;
            box-sizing: border-box;
        }

        .cover {
            background-color: #36354e;
            width: 12rem; /* Increased width */
            height: 16rem; /* Increased height */
            transform: rotateY(0deg);
        }

        .page {
            background-color: #e9e6c4;
            width: 11.5rem; /* Increased width */
            height: 15rem; /* Increased height */
            text-align: right;
            font-size: 10px; /* Increased font size */
            color: #777;
            font-family: monospace;
            transform: rotateY(0deg);
            top: 0.5rem; /* Adjusted to fit increased size */
            left: 0.5rem; /* Adjusted to fit increased size */
        }

        .page::before, .page::after {
            display: block;
            border-top: 1px dashed rgba(0, 0, 0, 0.3);
            content: "";
            padding-bottom: 1rem;
        }

        .cover.turn {
            animation: bookCover 3s infinite forwards;
        }

        .page.turn {
            animation: bookOpen 3s infinite forwards;
        }

        .page:nth-of-type(1) {
            animation-delay: 0.05s;
        }

        .page:nth-of-type(2) {
            animation-delay: 0.33s;
        }

        .page:nth-of-type(3) {
            animation-delay: 0.66s;
        }

        .page:nth-of-type(4) {
            animation: bookOpen150deg 3s infinite forwards;
            animation-delay: 0.99s;
        }

        .page:nth-of-type(5) {
            animation: bookOpen30deg 3s infinite forwards;
            animation-delay: 1.2s;
        }

        .page:nth-of-type(6) {
            animation: bookOpen55deg 3s infinite forwards;
            animation-delay: 1.25s;
        }

        @keyframes bookOpen {
            30% { z-index: 999; }
            100% { transform: rotateY(180deg); z-index: 999; }
        }

        @keyframes bookCover {
            30% { z-index: 999; }
            100% { transform: rotateY(180deg); z-index: 1; }
        }

        @keyframes bookOpen150deg {
            30% { z-index: 999; }
            100% { transform: rotateY(150deg); z-index: 999; }
        }

        @keyframes bookOpen55deg {
            30% { z-index: 999; }
            100% { transform: rotateY(55deg); z-index: 999; }
        }

        @keyframes bookOpen30deg {
            50% { z-index: 999; }
            100% { transform: rotateY(30deg); z-index: 999; }
        }

        .title {
            color: #fff;
            font-family: "Times New Roman", Times, serif;
            font-size: 3rem; /* Increased font size */
            font-weight: bold;
            text-align: right;
            flex: 1;
            margin-right: 3rem; /* Space between title and right edge */
        }

        .footer-link {
            position: absolute;
            bottom: 10px;
            right: 10px;
            color: #fff;
            font-size: 1rem; /* Slightly increased font size */
            text-decoration: none;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 5px 10px;
            border-radius: 5px;
        }

        .footer-link:hover {
            background-color: rgba(0, 0, 0, 0.7);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="book">
            <span class="page turn"></span>
            <span class="page turn"></span>
            <span class="page turn"></span>
            <span class="page turn"></span>
            <span class="page turn"></span>
            <span class="page turn"></span>
            <span class="cover"></span>
            <span class="page"></span>
            <span class="cover turn"></span>
        </div>
        <div class="title">Online Course Management</div>
    </div>
    <a href="http://localhost:8080/demo" class="footer-link">Explore</a>
</body>
</html>
