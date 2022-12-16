$data = Import-Csv "C:\Users\Administrator\Desktop\config.csv"
foreach($info in $data){
    $info.Beschreibung | Out-File -FilePath "C:\Users\Administrator\Desktop\cfg.ini" -Append
    if($info.Individual.ToString() -ne ''){
      $eingabe = $info.Type + '"' + $info.Individual + '"'
      $eingabe | Out-File -FilePath "C:\Users\Administrator\Desktop\cfg.ini" -Append 
      }
    else{
      $info.Default | Out-File -FilePath "C:\Users\Administrator\Desktop\cfg.ini" -Append
      }
    }
