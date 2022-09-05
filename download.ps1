# Define the source link and destination path
$source = 'https://github.com/myansen039/payload/edit/main/download.ps1'
$destination = 'C:\Users\user\Desktop\download.ps1'
# Create the new WebClient
$webClient = [System.Net.WebClient]::new()
# Download the file
$webClient.DownloadFile($source, $destination)
