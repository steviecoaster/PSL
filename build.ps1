Remove-Item "$PSScriptRoot\Packer.psm1" -Force -ErrorAction SilentlyContinue
Get-ChildItem $PSScriptRoot\src\*.ps1 | ForEach-Object {
    Get-Content $_.FullName | Add-Content Packer.psm1
}