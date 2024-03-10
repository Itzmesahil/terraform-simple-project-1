#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello Terraform Automation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
        }
        p {
            line-height: 1.6;
        }
        .highlight {
            background-color: #ffffcc;
            padding: 10px;
            border-radius: 4px;
        }
        .bold {
            font-weight: bold;
        }
        .red-text {
            color: #ff0000;
        }
        .green-text {
            color: #00cc00;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello, Terraform Automation!</h1>
        <p>Welcome to my beautifully automated website.</p>
        <p>This is <span class="bold">Sahil Shaikh</span>, and I'm thrilled to present my latest achievement, crafted with <span class="red-text">Terraform</span>.</p>
        <p>All the hard work is finally paying off, and now, my website is live for the world to see!</p>
        <div class="highlight">
            <p>This website is fully automated, thanks to <span class="green-text">Terraform</span>!</p>
        </div>
        <p>Stay tuned for more exciting updates and projects.</p>
    </div>
</body>
</html>
" >/var/www/html/index.html