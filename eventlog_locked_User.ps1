$Server="Servername"

$VarTime="-15"

$time = [System.Management.ManagementDateTimeConverter]::ToDmtfDateTime((Get-Date).addminutes($VarTime))

$User = @{Name="User";Expression={$_.InsertionStrings[0]}}
$Client = @{Name="Client";Expression={$_.InsertionStrings[1]}}

$getlock=get-wmiobject -class Win32_NTLogEvent -filter "LogFile='Security' and EventCode=4740  and TimeGenerated>='$time'" -computername $varservername | select EventCode, @{N="Datum";$
foreach ($item in $getlock){

write-host $item.User

}