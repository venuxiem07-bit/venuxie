<!DOCTYPE html>
<html>
<head>
  <title>Interactive Google Analytics Demo</title>

  <!-- Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-XTEFXZTW5K"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-XTEFXZTW5K');
  </script>

  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f6f8;
      text-align: center;
      padding: 40px;
    }
    .card {
      background: white;
      padding: 30px;
      max-width: 400px;
      margin: auto;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    input, button {
      padding: 10px;
      margin: 10px;
      width: 80%;
    }
    button {
      background: #4285F4;
      color: white;
      border: none;
      cursor: pointer;
      border-radius: 5px;
    }
    button:hover {
      background: #3367d6;
    }
  </style>
</head>

<body>

  <div class="card">
    <h1>Google Analytics Demo</h1>
    <p>Simple interactive page with event tracking</p>

    <input type="text" id="username" placeholder="Enter your name" />

    <button onclick="submitName()">Submit</button>
    <button onclick="trackButton()">Click Event</button>

    <p id="output"></p>
  </div>

  <script>
    function submitName() {
      const name = document.getElementById("username").value;
      document.getElementById("output").innerText = "Hello, " + name + "!";

      // GA Event: name submission
      gtag('event', 'submit_name', {
        event_category: 'form',
        event_label: 'username input'
      });
    }

    function trackButton() {
      alert("Button Clicked!");

      // GA Event: button click
      gtag('event', 'button_click', {
        event_category: 'interaction',
        event_label: 'click event button'
      });
    }
  </script>

</body>
</html>
