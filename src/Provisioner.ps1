function Provisioner {
    
    [cmdletBinding()]
    param(
        [parmeter(Mandatory, Position = 0)]
        [scriptblock]
        $Scriptblock
    )
    
    process {

        $newScript = "[ordered]@{$(@($Scriptblock.ToString()))}"
        $newScriptBlock = [scriptblock]::Create($newScript)
    
       $string = @"
       provisioners: [
           $(& $newScriptBlock | ConvertTo-Json)
       ]  
"@  
        return $string
    }
    
}