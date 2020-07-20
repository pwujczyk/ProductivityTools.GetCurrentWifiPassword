function Get-CurrentWifiPassword {

	[cmdletbinding()]
	param()

	Write-Verbose "Hello from Get-CurrentWifiPassword"
	$wifiNetwork=Get-NetConnectionProfile -InterfaceAlias wi-fi
	$wifiName=$wifiNetwork.Name
	Write-Verbose "Current wifi name: $wifiName"
	
	$currentWifi=Get-WifiPassword -NetworkName $wifiName
	$password=$currentWifi.Password
	
	Write-Verbose "Password: $password"
	Write-Verbose "Bye bye from Get-CurrentWifiPassword"
	return $password
}

Export-ModuleMember Get-CurrentWifiPassword