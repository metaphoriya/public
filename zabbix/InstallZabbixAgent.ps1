Set-Location $env:HOMEPATH
$dir=Get-Location
$path=$dir.Path
$Istallator = 'zabbix_agent-4.0.25-windows-amd64-openssl.msi'
$InstallatorUrl = "https://www.zabbix.com/downloads/4.0.25/$Istallator"
$Config = "https://github.com/metaphoriya/public/blob/main/zabbix/zabbix_agentd.conf"

Invoke-WebRequest -Uri $InstallatorUrl -OutFile $Istallator
Invoke-WebRequest -Uri $Config

zabbix_agentd.exe --config <ваш_файл_конфигурации> --uninstall
