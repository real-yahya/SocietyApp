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
            width: 80%;
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
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="chat-container">
    <div class="chat-messages" id="chat-messages">
        <!-- Chat messages will be inserted here -->
    </div>
    <input type="text" id="message-input" placeholder="Type a message...">
    <button id="send-button">Send</button>
</div>

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
