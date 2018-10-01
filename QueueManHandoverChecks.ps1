get-childitem -recurse -Path "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\" |
    Where {$_.Length -eq 0} |where-object {$_.LastWriteTime -lt (get-date).AddMinutes(-5)} -and $_.psiscontainer -eq $false }| move-item -destination "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\Zerokbs\"



get-childitem -recurse -Path "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\" |Where {$_.Length -eq 0}


get-childitem -recurse -Path "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\AU\" |Where {$_.Length -eq 0 -and $_.psiscontainer -eq $false} | where-object {$_.LastWriteTime -lt (get-date).AddMinutes(-5)}




gci -r | ?{$_ -notmatch ("AU-Copy","Broken*","temp","Zerokbs") -Path "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\AU\" |Where {$_.Length -eq 0 -and $_.psiscontainer -eq $false} | where-object {$_.LastWriteTime -lt (get-date).AddMinutes(-5)}





$Rootdir = "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\"

Get-ChildItem -Path "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\" -Recurse | Where-Object {$_.FullName -notlike "*\AU - Copy\*" -and $_.FullName -notlike "*\Broken*\*"  -and $_.FullName -notlike "*\Zerokbs\*" -and $_.FullName -notlike "*\temp\*"} |Where {$_.Length -eq 0 -and $_.psiscontainer -eq $false} | where-object {$_.LastWriteTime -lt (get-date).AddMinutes(-5)}


Get-ChildItem -Path "\\S607650rgfs01\Handover\AMADEUSQMGR-Prod\" -Recurse | Where-Object {$_.FullName -notlike "*\Zerokbs\*" -and $_.FullName -like "*\temp\*"} |Where {$_.Length -eq 0 -and $_.psiscontainer -eq $false} | where-object {$_.LastWriteTime -lt (get-date).AddMinutes(-5)} |move-item -Destination "\\s607650rgfs01\Handover\AMADEUSQMGR-Prod\Zerokbs\" 
remove-item - Path "\\s607650rgfs01\Handover\AMADEUSQMGR-Prod\Zerokbs\" 