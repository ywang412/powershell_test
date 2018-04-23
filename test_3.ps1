function Check-Command($cmdname)
{
    return [bool](Get-Command -Name $cmdname -ErrorAction SilentlyContinue)
}

if (Check-Command -cmdname 't')
{
     Write-Host "Run tests_1"
}
else
{
     Write-Host "Run tests_2"
}