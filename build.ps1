Remove-Item "$PSScriptRoot\Psl.psm1" -Force -ErrorAction SilentlyContinue
Get-ChildItem $PSScriptRoot\src\*.ps1 | ForEach-Object {
    Get-Content $_.FullName | Add-Content Psl.psm1
}