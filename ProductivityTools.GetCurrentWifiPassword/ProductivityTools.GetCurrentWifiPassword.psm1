function Get-CurrentWifiPassword {

	[cmdletbinding()]
	param()

	$wifiNetwork=Get-NetConnectionProfile |where InterfaceAlias -eq 'Wi-Fi'
	if ($wifiNetwork -eq $null)
	{
		throw "Wi-Fi network not detected, are you connected?"
	}
	$wifiName=$wifiNetwork.Name
	Write-Verbose "Current Wi-Fi name: $wifiName"
	
	$currentWifi=Get-WifiPassword -NetworkName $wifiName
	$password=$currentWifi.Password
	
	
	return $password

}

Export-ModuleMember Get-CurrentWifiPassword