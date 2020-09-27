# Provisioner

The Provisioner returns a json formatted Packer Provisioner configuration item. The json will look _something_ like this, depending on your requirements and items passed into it.

```json
"provisioners": [
    {
        "key": "value",
        "key": [
            "value1",
            "value2",
            "value3"
        ]
    }
]
```

The items inside of a provisioner are define via a [Step](https://github.com/steviecoaster/Packer/blob/master/docs/Step.md).
