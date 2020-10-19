Set-Location $env:HOMEPATH
$dir=Get-Location
$path=$dir.Path
$Istallator = 'zabbix_agent-4.0.25-windows-amd64-openssl.msi'
$InstallatorUri = 'https://www.zabbix.com/downloads/4.0.25/zabbix_agent-4.0.25-windows-amd64-openssl.msi'

Invoke-WebRequest -Uri $InstallatorUri -OutFile $Istallator

msiexec /I $Istallator HOSTNAME=TEST SERVER=zabbix.vionix.xyz SERVERACTIVE=zabbix.vionix.xyz /qn

New-NetFirewallRule -Name "Zabbix" -DisplayName "Zabbix" -Enabled:True -Profile Any -Direction Inbound -Action Allow -Protocol TCP -LocalPort 10050
