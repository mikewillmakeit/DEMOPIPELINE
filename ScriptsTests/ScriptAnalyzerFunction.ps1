$files = Get-ChildItem .
foreach ($file in $files) {Invoke-ScriptAnalyzer -Path "./$file"}