# Builder

The Builder works exactly the same as a [Provisioner](https://github.com/steviecoaster/Packer/blob/master/docs/Provisioner.md). Pass it a series of steps, and it will output json in the format required by Packer's builder syntax.

Example json output:

```json
"builders":[
    {
        "communicator": "winrm",
        "format":"ovf",
        "type": "virtualbox-iso"
    }
]
```