function Get-CurrentWifiPassword {

	[cmdletbinding()]
	param()

	$wifiNetwork=Get-NetConnectionProfile -InterfaceAlias wi-fi
	$wifiName=$wifiNetwork.Name
	Write-Verbose "Current wifi name: $wifiName"
	
	$currentWifi=Get-WifiPassword -NetworkName $wifiName
	$password=$currentWifi.Password
	
	
	return $password

}

Export-ModuleMember Get-CurrentWifiPassword