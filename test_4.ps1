param(
    [Parameter(Mandatory=$True)]
    [ValidateSet("orchestration", "heartbeat")] 
    [string]$CName_
    )

if ($CName_ -eq "heartbeat") {
	$CNameInternal_ = "heartbeat_agent"
	Write-Host "coverage installed $CNameInternal_"
}
