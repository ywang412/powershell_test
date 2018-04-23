param(
    [Parameter(Mandatory=$True)]
    [ValidateSet("rmq", "rabbitmq", "orchestration", "heartbeat", "influxdb_aes", "edgebase", "iothubrouter")] 
    [string]$CName_
    )

$t = 'tes'

$ScriptPath = Split-Path $MyInvocation.InvocationName
Invoke-Expression "& `"$ScriptPath\$t\test.ps1`" $CName_"

Write-Host "hello world" 
Write-Host $CName_