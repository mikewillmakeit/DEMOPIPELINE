##$PackagePath = ./ScriptsTests
##$Packages = Get-ChildItem -Path $PackagePath -Exclude *-Test.ps1

##foreach ($Package in $Packages) {nuget spec $Package}

#Update path to where packages will be stored
##$files = Get-ChildItem -Path $Packagepath -Exclude *.Tests.ps1
##foreach ($file in $files) {choco push [$file] --source="http://13.59.44.78/chocolatey"}
nuget pack -Basepath /ScriptsTests -Exclude *.ps1 -OutputDirectory .

choco push ./ScriptsTests/package.1.0.0.nupkg --source="http://13.59.44.78/chocolatey"  
