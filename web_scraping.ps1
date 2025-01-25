# Ensure that the PowerHtml module is installed
if (!(Get-InstalledModule -Name PowerHtml -ErrorAction SilentlyContinue)) {
    Write-Host "Installing PowerHtml module..."
    Install-Module -Name PowerHtml -Force -Scope CurrentUser -AllowClobber
} else {
    Write-Host "PowerHtml module is already installed."
}

# Specify the directory where the file will be saved
$directory = "C:\PowerShell"
if (-not (Test-Path -Path $directory)) {
    Write-Host "Creating directory $directory..."
    New-Item -ItemType Directory -Path $directory -Force
}

# Download the content of the website
$uri = "https://www.example.com"
$site = Invoke-WebRequest -Uri $uri
Write-Host "Successfully fetched content from $uri."

# Save the content to a local HTML file
$outputFile = "$directory\example.html"
$site.Content | Out-File -FilePath $outputFile -Force

# Load and parse the HTML content
# We use HtmlAgilityPack for better parsing (note: must install the module for this to work)
# Ensure HtmlAgilityPack is installed and imported
if (-not (Get-Module -ListAvailable -Name HtmlAgilityPack)) {
    Install-Package -Name HtmlAgilityPack -Force -Scope CurrentUser
    Import-Module HtmlAgilityPack
}

# Load the HTML document
$htmlDocument = [HtmlAgilityPack.HtmlDocument]::new()
$htmlDocument.Load($outputFile)

# Extract all <script> nodes
$scriptNodes = $htmlDocument.DocumentNode.SelectNodes('//script')
if ($scriptNodes) {
    Write-Host "Found $(($scriptNodes).Count) <script> tags in the document."
} else {
    Write-Host "No <script> tags found in the document."
}
