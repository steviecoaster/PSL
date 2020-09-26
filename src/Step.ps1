function Step {
    [cmdletBinding()]
    param(
        [parameter(mandatory,position=0)]
        [string]
        $Name,

        [parameter(mandatory,position=1)]
        [scriptblock]
        $scriptBlock
    )

    process {

        $newScript = $Scriptblock.ToString()
        $newScriptBlock = [scriptblock]::Create($newScript)

        & $newScriptBlock | ConvertTo-Json

    }
    
}