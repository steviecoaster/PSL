Provisoner {
    Step "Run Script" {
        [ordered]@{
            elevated_password = "vagrant"
            elevated_username = "vagrant"
            environment_vars = @("WINRM_USERNAME={{user `WindowsUser`}}", "WINRM_PASS={ user `WindowsPassword` }}")
            scripts = @("./SetFirewall.ps1","./InstallPreReqs.ps1")
            type = "powershell"
        }
    }
}

Builder {
    Step "Build Something" {
        [ordered]@{
            checksum = "none"
            communicator = "winrm"
            format = "ovf"
        }
    }
}

