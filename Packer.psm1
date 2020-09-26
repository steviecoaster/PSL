function Builder {
    
    [cmdletBinding()]
    param(
        [parameter(Mandatory, Position = 0)]
        [scriptblock]
        $Scriptblock
    )
    
    process {

        $newScript = $Scriptblock.ToString()
        $newScriptBlock = [scriptblock]::Create($newScript)

        $string = @"
`"builders`": [
$(@(& $newScriptBlock) -join ",`n")
]
"@
         return $string
       
    }
    
}
function Provisioner {
    
    [cmdletBinding()]
    param(
        [parameter(Mandatory, Position = 0)]
        [scriptblock]
        $Scriptblock
    )
    
    process {

        $newScript = $Scriptblock.ToString()
        $newScriptBlock = [scriptblock]::Create($newScript)

        $string = @"
        'provisioners': [
            $(@(& $newScriptBlock) -join ",`n")
        ]
"@
         return $string
       
    }
    
}
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
