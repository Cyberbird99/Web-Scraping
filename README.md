# Web-Scraping



This PowerShell script performs basic web scraping and HTML parsing.

Checks if the `PowerHtml` module is installed and installs it if needed.
Downloads the HTML content from `https://www.example.com`.
Saves the downloaded HTML to a file (`example.html`) in `C:\PowerShell`.
Uses the `HtmlAgilityPack` library to load and parse the saved HTML file.
Finds and counts all the `<script>` tags in the HTML document and outputs the result.
