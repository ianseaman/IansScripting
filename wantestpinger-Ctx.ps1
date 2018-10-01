$computers = ("10.61.0.1","10.61.201.5","10.49.241.1","10.64.2.13","10.44.252.12","10.250.250.24","10.44.250.14","10.10.20.201","10.65.0.6","10.65.3.8","10.27.143.254","10.1.27.12","10.1.27.13","10.1.155.11", "10.83.17.53","10.105.198.15","10.83.17.70","10.83.17.236","10.83.17.62","10.83.16.254","10.37.1.5")
foreach ($ip in $computers){
IF (Test-Connection -ComputerName $ip -Count 1 -Quiet){
Write-Host "$ip is up" -ForegroundColor Cyan}
Else {
Write-host "$ip is down" -ForegroundColor Red}
    }

##SQL APAC
#Win2008 version
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclapa',3180) { Write-Host 'GLSCLAPA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLAPA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclapb',3180) { Write-Host 'GLSCLAPB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLAPB NO' -ForegroundColor -Red}
#Win2012 version
#IF (test-NetConnection -Computername "glsclapa.bluee.net" -port 3180) {
#Write-host "SQL GLSCLAPACA port 3180 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLAPACA port 3180 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glsclapb.bluee.net" -port 3180) {
#Write-host "SQL GLSCLAPACB port 3180 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLAPACB port 3180 no connection" -ForegroundColor Red}
## SQL CEU
#Win2008 version
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclcea',3182) { Write-Host 'GLSCLCEA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLAPA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclceb',3182) { Write-Host 'GLSCLCEB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLCEB NO' -ForegroundColor -Red}
#IF (test-NetConnection -Computername "glsclcea.bluee.net" -port 3182) {
#Write-host "SQL GLSCLCEA port 3182 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLCEA port 3182 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glsclceb.bluee.net" -port 3182) {
#Write-host "SQL GLSCLCEB port 3182 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLCEB port 3182 no connection" -ForegroundColor Red}
## SQL UK
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glscluka',3181) { Write-Host 'GLSCLUKA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLUKA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclukb',3181) { Write-Host 'GLSCLUKB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLUKB NO' -ForegroundColor -Red}
#IF (test-NetConnection -Computername "glscluka.bluee.net" -port 3181) {
#Write-host "SQL GLSCLUKA port 3181 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLUKA port 3181 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glsclukb.bluee.net" -port 3181) {
#Write-host "SQL GLSCLUKB port 3181 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLUKB port 3181 no connection" -ForegroundColor Red}
## SQL US
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclusa',3183) { Write-Host 'GLSCLUSA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLUSA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclusb',3183) { Write-Host 'GLSCLUSB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLUSB NO' -ForegroundColor -Red}
#IF (test-NetConnection -Computername "glsclusa.bluee.net" -port 3183) {
#Write-host "SQL GLSCLUSA port 3183 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLUSA port 3183 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glsclusb.bluee.net" -port 3183) {
#Write-host "SQL GLSCLUSB port 3183 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLUSB port 3183 no connection" -ForegroundColor Red}
## 1Source
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glscl1sa',3188) { Write-Host 'GLSCL1SA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCL1SA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glscl1sb',3188) { Write-Host 'GLSCL1SB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCL1SB NO' -ForegroundColor -Red}

#IF (test-NetConnection -Computername "glscl1sa.bluee.net" -port 3188) {
#Write-host "SQL GLSCL1SA port 3188 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCL1SA port 3188 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glscl1sb.bluee.net" -port 3188) {
#Write-host "SQL GLSCL1SB port 3188 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCL1SB port 3188 no connection" -ForegroundColor Red}
## Coda
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclcoda',3190) { Write-Host 'GLSCLCODA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLCODA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclcodb',3190) { Write-Host 'GLSCLCODB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLCODB NO' -ForegroundColor -Red}

#IF (test-NetConnection -Computername "glsclcoda.bluee.net" -port 3190) {
#Write-host "SQL GLSCLCODA port 3190 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLCODA port 3190 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glsclcodb.bluee.net" -port 3190) {
#Write-host "SQL GLSCLCODB port 3190 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLCODB port 3190 no connection" -ForegroundColor Red}
## MYSTA
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclmya',1433) { Write-Host 'GLSCLMYA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLMYA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'glsclmyb',1433) { Write-Host 'GLSCLMYB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLMYB NO' -ForegroundColor -Red}

#IF (test-NetConnection -Computername "glsclmya.bluee.net" -port 1433) {
#Write-host "SQL GLSCLMYA port 1433 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLCMYA port 1433 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "glsclmyb.bluee.net" -port 1433) {
#Write-host "SQL GLSCLMYB port 1433 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLMYB port 1433 no connection" -ForegroundColor Red}
## OPENTEXT
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'GLSCLVWOTWSMA.bluee.net',3184) { Write-Host 'GLSCLVWOTWSMA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLVWOTWSMA NO' -ForegroundColor -Red}
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'GLSCLVWOTWSMB.bluee.net',3184) { Write-Host 'GLSCLVWOTWSMB YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLVWOTWSMB NO' -ForegroundColor -Red}

#IF (test-NetConnection -Computername "GLSCLVWOTWSMA.bluee.net" -port 3184) {
#Write-host "SQL GLSCLVWOTWSMA port 3184connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLVWOTWSMA port 3184 no connection" -ForegroundColor Red}
#IF (test-NetConnection -Computername "GLSCLVWOTWSMB.bluee.net" -port 3184) {
#Write-host "SQL GLSCLVWOTWSMB port 3184 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLVWOTWSMB port 3184 no connection" -ForegroundColor Red}
## MISA
If (New-Object System.Net.Sockets.TCPClient -ArgumentList 'GLSCLMISA.bluee.net',3180) { Write-Host 'GLSCLMISA YES' -Foregroundcolor Cyan }
If ($? -eq $false) { Write-Host 'GLSCLMISA NO' -ForegroundColor -Red}
#IF (test-NetConnection -Computername "GLSCLMISA.bluee.net" -port 3180) {
#Write-host "SQL GLSCLMISA port 3180 connects" -ForegroundColor Cyan}
#else {
#Write-host "SQL GLSCLMISA port 3180 no connection" -ForegroundColor Red}
#import-module ActiveDirectory
#$pc = hostname
#if (Get-ADComputer -filter "Name -eq '$pc'" -SearchBase  "OU=Domain Controllers,DC=uk,DC=bluee,DC=net"){
#dcdiag /s:$pc /q
#write-host "Starting repadmin /replsum standby"
#repadmin /replsum
# }
#else {
#write-host "This Script needs to run on a Domain Controller" -Foregroupod Red
#}