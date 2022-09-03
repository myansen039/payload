$sftpHost = "172.105.53.52"

$port = "22"

$userName = "root"
$userPassword = "Root@roxx2"
$remotedirectory = "/root/"
$localFileList = "C:\Users\user\Desktop\files\file.zip"
$sftp = Open-SFTPServer -serverAddress $sftpHost -userName $userName -userPassword $userPassword
$sftp.Put($remotedirectory)
#Upload the local file to another folder on the SFTP server
$sftp.Put($remotedirectory, "/SomeFolder")

$sftp.Put($remotedirectory, "/downloadfile.zip")

$sftp.Put($localFileList)

$sftp.Put($localFileList, "/SomeFolder")

#Close the SFTP connection
$sftp.Close()
