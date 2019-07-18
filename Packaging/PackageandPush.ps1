$Packagepath = 
#Update path to where packages will be stored
$files = Get-ChildItem -Path $Packagepath -Exclude *.Tests.ps1
foreach ($file in $files) {choco push [$file] --source="http://13.59.44.78/chocolatey"}