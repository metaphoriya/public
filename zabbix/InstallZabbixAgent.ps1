$ZBXHOSTNAME = 'PCname'

Set-Location $env:HOMEPATH
$dir=Get-Location
$path=$dir.Path
$Istallator = 'zabbix_agent-4.0.25-windows-amd64-openssl.msi'
$InstallatorUri = 'https://www.zabbix.com/downloads/4.0.25/zabbix_agent-4.0.25-windows-amd64-openssl.msi'

Invoke-WebRequest -Uri $InstallatorUri -OutFile $Istallator

msiexec /I $Istallator HOSTNAME=$ZBXHOSTNAME SERVER=zabbix.vionix.xyz SERVERACTIVE=zabbix.vionix.xyz /qn
