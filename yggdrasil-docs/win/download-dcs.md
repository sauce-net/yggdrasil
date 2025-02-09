To download the file using PowerShell, you can use `Invoke-WebRequest` cmdlet. Here's how to do it:


```powershell
$fileUrl = "https://www.digitalcombatsimulator.com/upload/iblock/f7a/v1cbg2dgv23koh3pzli3pkuyt3kuwsx7/DCS_World_Server_modular.exe"
$outputPath = "C:\path\where\you\want\to\save\DCS_World_Server_modular.exe"
Invoke-WebRequest -Uri $fileUrl -OutFile $outputPath
```

Replace `C:\path\where\you\want\to\save\DCS_World_Server_modular.exe` with the path where you want to save the downloaded file on your local system. Make sure that the directory exists or create a new one before running this command.
