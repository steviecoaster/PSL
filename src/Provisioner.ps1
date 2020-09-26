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