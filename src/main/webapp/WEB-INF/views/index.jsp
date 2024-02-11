<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instagram-like Feed</title>
    <style>
        /* Basic styling for demonstration purposes */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            display: flex;
            max-width: 800px;
            width: 100%;
            align-items: flex-start; /* Align items towards the start of the container */
        }
        .stories {
            flex: 1;
            width: 300px;
            border: 3px solid #73AD21;
            padding: 10px;
            background-color: #f0f0f0;

            /*margin-right: 20px; Adjust margin between stories and posts */
        }
        .story-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px; /* Adjust spacing between story containers */
        }
        .story {
            margin-right: 10px; /* Adjust margin between story and username */
            border: 2px solid #ff9f9f;
            border-radius: 50%;
            overflow: hidden;
            width: 70px; /* Adjust size of the story circle */
            height: 70px; /* Adjust size of the story circle */
        }
        .story img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .story-username {
            font-size: 12px; /* Adjust font size of the username */
        }
        .posts {
            flex: 2;
            padding: 20px;
        }
        .post {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .post img {
            width: 100%;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }
        .post-content {
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Stories -->
    <div class="stories">
        <h2>Stories</h2>
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 1</span>
        </div>
        <!-- Add more stories here -->
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 2</span>
        </div>
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 3</span>
        </div>
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 4</span>
        </div>
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 5</span>
        </div>
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 6</span>
        </div>
        <div class="story-container">
            <div class="story">
                <img src="https://via.placeholder.com/150">
            </div>
            <span class="story-username">Username 7</span>
        </div>
    </div>

    <!-- Posts -->
    <div class="posts">
        <h2>Posts</h2>
        <div class="post">
            <img src="https://via.placeholder.com/800x400">
            <div class="post-content">
                <h2>Username</h2>
                <p>This is a sample post.</p>
                <!-- Add like, comment, share, donate buttons here -->
            </div>
        </div>

        <div class="post">
            <img src="https://via.placeholder.com/800x400">
            <div class="post-content">
                <h2>Another Username</h2>
                <p>This is another sample post.</p>
                <!-- Add like, comment, share, donate buttons here -->
            </div>
        </div>
        <!-- Add more posts here -->
    </div>
</div>
</body>
</html>
