Add-WindowsFeature Web-Server
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" - Value $($env:computername)
New-Item -ItemType directory -path "C:\inetpub\wwwroot\images"
New-Item -ItemType directory -path "C:\inetpub\wwwroot\video"
$imagevalue = "Images" " + $($env:computername)
Add-Content -Path "C:\inetpub\wwwroot\images\test.htm" -Value $imagevalue
$videovalue = "Videos" " + $($env:computername)
Add-Content -Path "C:\inetpub\wwwroot\videos\test.htm" -Value $videovalue
