<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DailyNews</title>
  <link rel="stylesheet" href="style1.css">
</head>
<body>
      <nav>
        <div class="main-nav container flex">
            <a href="#" onclick="reload()" class="company-logo">
                <img src="logo.jpg" alt="company logo">
            </a>
            <div class="nav-links">
                <ul class="flex">
                	<li class="hover-link nav-item" id="top-headlines" onclick="printtopheadlines()">TOP-HEADLINES</li>
                	<li class="hover-link nav-item" id="entertainment" onclick="onNavItemClick('entertainment')">ENTERTAINMENT</li>
                    <li class="hover-link nav-item" id="business" onclick="onNavItemClick('business')">BUSINESS</li>
                    <li class="hover-link nav-item" id="finance" onclick="onNavItemClick('finance')">FINANCE</li>
                    <li class="hover-link nav-item" id="politics" onclick="onNavItemClick('politics')">POLITICS</li>
                </ul>
            </div>
            <div class="search-bar flex">
                <input id="search-text" type="text" class="news-input" placeholder="e.g. Science">
                <button id="search-button" class="search-button">Search</button>
            </div>
        </div>
    </nav>
    <main>
        <div class="cards-container container flex" id="cards-container"> 
        </div>
    </main>

    <template id="template-news-card">
        <div class="card">
            <div class="card-header">
                <img src="https://via.placeholder.com/400x200" alt="news-image" id="news-img">
            </div>
            <div class="card-content">
                <h3 id="news-title">This is the Title</h3>
                <h6 class="news-source" id="news-source">End Gadget 26/08/2023</h6>
                <p class="news-desc" id="news-desc">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae saepe quis voluptatum quisquam vitae doloremque facilis molestias quae ratione cumque!</p>
            </div>
        </div>
    </template>

    <script src="script.js"></script>
</body>
</html>
