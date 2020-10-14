Set-Location $env:HOMEPATH
$dir=Get-Location
$path=$dir.Path

Invoke-WebRequest -Uri "https://www.zabbix.com/downloads/4.2.8/zabbix_agent-4.2.8-windows-amd64-openssl.msi" -OutFile "$env:HOMEPATH\SetUserFTA.zip"
Invoke-WebRequest -Uri "https://www.zabbix.com/downloads/4.2.8/zabbix_agent-4.2.8-windows-amd64-openssl.msi" -OutFile "$env:HOMEPATH\SetUserFTA.zip"

zabbix_agentd.exe --config <ваш_файл_конфигурации> --uninstall
