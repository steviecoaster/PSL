Builder {

    Step "Begin" {
        [ordered]@{
            vm_name = "SampleVM"
            shutdown_command = "shutdown /s /t 10 /f /d p:4:1"
            shutdown_timeout = "15m"
        }
    }

    Step "Final" {
        [ordered]@{
          environment_vars = @(
          "WINRM_USERNAME = 'vagrant'",
          "WINRM_PASS     = 'P@ssw0rd!'"
          )
          scripts = @('./scripts/test.ps1', './scripts/finish.ps1')
          type = 'powershell'
        }
    }
    
}