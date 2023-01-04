#Anpassen der cfg.ini an die Vorgaben
$Pfad = "C:\Temp\cfg.ini"
$data = Import-Csv $Pfad
foreach($info in $data){
    $info.Beschreibung | Add-Content -Path $Pfad
    if($info.Individual.ToString() -ne ''){
      $eingabe = $info.Type + '"' + $info.Individual + '"'
      $eingabe | Add-Content -Path $Pfad
      }
    else{
      $info.Default | Add-Content -Path $Pfad
      }
    }
