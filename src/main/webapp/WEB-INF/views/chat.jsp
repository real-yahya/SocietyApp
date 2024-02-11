<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .chat-container {
            float: right;
            width: 75%;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin-right: 30px;
            margin-top: 30px;
        }

        .chat-messages {
            height: 850px;
            overflow-y: scroll;
            border-bottom: 1px solid #ccc;
            margin-bottom: 10px;
        }

        .message-bubble {
            background-color: #007bff;
            color: #fff;
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 5px;
            max-width: 70%;
            word-wrap: break-word;
        }

        .message-bubble.sent {
            background-color: #0056b3;
            align-self: flex-end;
        }

        #message-input {
            width: 70%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        #send-button {
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        #send-button:hover {
            transition-duration: 0.1s;
            background-color: #0056b3;
        }

        table {
            position: absolute;
            top: 30px;
            left: 6px;
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 20%;
            font-size: 20px;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 16px;
        }


        tr:nth-child(even) {
            background-color: #dddddd;
        }

        .homebtn {
            position: absolute;
            background: #007bff;
            color: #fff;
            width: 5%;
            padding: 0.2%;
            left: 15px;
            bottom: 30px;
            font-size: 14px;
            border-radius: 10px;
            text-align: center;
            display: inline-block;
            text-decoration: none;
        }

        .homebtn:hover {
            background: #0056b3;
            transition-duration: 0.1s;
        }

        .home {
            width: 30px;
            height: 30px;
        }
    </style>
</head>
<body>

<table>
    <tr>
        <th>Members</th>
    </tr>
    <tr>
        <td>Member 1</td>
    </tr>
    <tr>
        <td>Member 2</td>
    </tr>
    <tr>
        <td>Member 3</td>
    </tr>
    <tr>
        <td>Member 4</td>
    </tr>
    <tr>
        <td>Member 5</td>
    </tr>
</table>


<div class="chat-container">
    <div class="chat-messages" id="chat-messages">
        <!-- Chat messages will be inserted here -->
    </div>
    <input type="text" id="message-input" placeholder="Type a message...">
    <button id="send-button">Send</button>
</div>

<a class="homebtn" href="index.jsp">
    <img class="home" src="../../../resources/static/home.webp" alt="Home Button">
</a>

<script>
    document.getElementById('send-button').addEventListener('click', function() {
        sendMessage();
    });

    document.getElementById('message-input').addEventListener('keypress', function(e) {
        if (e.key === 'Enter') {
            sendMessage();
        }
    });

    function sendMessage() {
        var messageInput = document.getElementById('message-input');
        var message = messageInput.value.trim();
        if (message !== '') {
            var chatMessages = document.getElementById('chat-messages');
            var messageElement = document.createElement('div');
            messageElement.textContent = message;
            messageElement.classList.add('message-bubble', 'sent');
            chatMessages.appendChild(messageElement);
            messageInput.value = '';
            chatMessages.scrollTop = chatMessages.scrollHeight;
        }
    }
</script>
</body>
</html>
