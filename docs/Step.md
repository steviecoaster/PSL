# Step

A Step returns an indiviual item in either a [Provisioner](https://github.com/steviecoaster/Packer/blob/master/docs/Provisioner.md) or a [Builder](https://github.com/steviecoaster/Packer/blob/master/docs/Builder.md). Steps take hashtables, which can contain nested hashtables and arrays, which will be parsed to JSON by the target. You can provide a Name to the step, but this is more for your benefit in organizing your code, it's ignored during processing.

Example Step:

```powershell
Step "Run PowerShell script on target" {
    @{
        winrm_username = "vagrant"
        winrm_password = "vagrant"
        script = @("./SetFirewallRules.ps1")
        type = "powershell
    }
}
```

:memo: You can pass an ordered hashtable (`[ordered]@{}`) here, to maintain the format when processed to json, otherwise PowerShell will do what it feels necessary and items defined will not be in the same order in the json. This will have negligable performance impact.
