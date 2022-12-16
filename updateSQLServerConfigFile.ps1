$data = Import-Csv "C:\Temp\*config.csv"
foreach($info in $data){
    $info.Beschreibung | Out-File -FilePath "C:\Temp\cfg.ini" -Append
    if($info.Individual.ToString() -ne ''){
      $eingabe = $info.Type + '"' + $info.Individual + '"'
      $eingabe | Out-File -FilePath "C:\Temp\cfg.ini" -Append 
      }
    else{
      $info.Default | Out-File -FilePath "C:\Temp\cfg.ini" -Append
      }
    }
