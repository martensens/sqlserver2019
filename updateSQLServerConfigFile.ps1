$data = Import-Csv "C:\Temp\*config.csv"
foreach($info in $data){
    $info.Beschreibung | Add-Content -Path "C:\Temp\cfg.ini"
    if($info.Individual.ToString() -ne ''){
      $eingabe = $info.Type + '"' + $info.Individual + '"'
      $eingabe | Add-Content -Path "C:\Temp\cfg.ini"
      }
    else{
      $info.Default | Add-Content -Path "C:\Temp\cfg.ini"
      }
    }
