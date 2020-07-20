function Get-CurrentWifiPassword {
	$wifiNetwork=Get-NetConnectionProfile -InterfaceAlias wi-fi
}