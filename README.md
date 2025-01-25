# Web-Scraping

This PowerShell script:

1. **Installs PowerHtml Module**: Checks if the `PowerHtml` module is installed and installs it if needed.
2. **Checks and Creates Directory**: Verifies if the directory `C:\PowerShell` exists and creates it if it doesn't.
3. **Fetches Web Page**: Downloads the HTML content from `https://www.example.com`.
4. **Saves Content**: Saves the downloaded HTML to a file (`example.html`) in `C:\PowerShell`.
5. **Parses HTML**: Uses the `HtmlAgilityPack` library to load and parse the saved HTML file.
6. **Extracts `<script>` Tags**: Finds and counts all the `<script>` tags in the HTML document and outputs the result.

The script performs basic web scraping and HTML parsing without error handling, assuming everything works as expected.
