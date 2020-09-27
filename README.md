# PSL - A DSL for Packer

This is a PowerShell module for writing packer configs as a PowerShell DSL. Similar To Pester, PSGraph, PSake, etc.

Writing JSON is kind of the pits. It's picky, and you're prone to doing it _wrong_ very easily. This module makes it more "PowerShell-y" to generate packer configurations.

Simple example:

```powershell
#PowerShell provisioner
Provisioner {
    elevated_pasword = 'SomeBigLongPassword!'
    elevated_user = 'shortround'
    environment_vars = @('eeny','meenie','meine','mo')
    scripts = @('./build/promote.ps1','./test/validation.ps1')
    type = 'powershell'
}
```

The above will output the following Packer json:

```json
{
  "elevated_pasword": "SomeBigLongPassword!",
  "elevated_user": "shortround",
  "environment_vars": [
    "eeny",
    "meenie",
    "meine",
    "mo"
  ],
  "scripts": [
    "./build/promote.ps1",
    "./test/validation.ps1"
  ],
  "type": "powershell"
}
```

# Building from source

1. `git clone https://github.com/steviecoaster/Packer.git`
2. `cd Packer`
3. `./build.ps1`
4. `Import-Module Packer.psd1`