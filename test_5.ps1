# param(
#     [Parameter(Mandatory=$True)]
#     [ValidateSet("orchestration", "heartbeat")] 
#     [string]$CName_
#     )

# if ($CName_ -eq "heartbeat") {
# 	$CNameInternal_ = "heartbeat_agent"
# 	Write-Host "coverage installed $CNameInternal_"
# }

$moduleName = "heartbeat"

$dt = & Get-Date -UFormat '%y-%m-%d-%H-%M-%S' 2>&1
Write-Host $dt

function Create-Folder([string]$path){
    $exists = Test-Path $path
    if(!$exists){
        #create the directory because it doesn't exist
        mkdir $path | out-null
        $exists = Test-Path $path
    }
} 

$testLogPath = "edge-testing\unit-testing-results\unit-test-$dt\$moduleName\test-logs" 
Create-Folder $testLogPath
 

$reportPath = "edge-testing\unit-testing-results\unit-test-$dt\$moduleName\coverage-report" 
Create-Folder $reportPath

$testLogSource = "tes"
Copy-Item -Path $testLogSource -Filter "*.*" -Recurse -Destination $testLogPath -Container

$reportSource = "test_5.ps1"
Copy-Item -Path $reportSource -Filter "*.*" -Recurse -Destination $reportPath -Container