param(
    [Parameter(Mandatory=$True)]
    [ValidateSet("rmq", "rabbitmq", "orchestration", "heartbeat", "influxdb_aes", "edgebase", "iothubrouter")] 
    [string]$CName_
    )

Write-Host "hello $CName_" 