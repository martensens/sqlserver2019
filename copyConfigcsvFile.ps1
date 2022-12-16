#Umkopieren des Konfigurationsfiles für den Server
$file = "Z:\cfg\$env:COMPUTERNAME.config.csv"
Copy-Item -Path $file -Destination "C:\Temp"
