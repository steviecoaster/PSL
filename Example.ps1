Provisioner {

    Step "Begin" {
        [ordered]@{
            elevated_password  = 'Passw0rd'
            elevated_user    = 'username'
            environment_vars = @(
                "WINRM_USERNAME = 'vagrant'",
                "WINRM_PASS     = 'P@ssw0rd!'"
            )
            scripts = @(
                './scripts/foo.ps1',
                './scripts/dostuff.ps1'
            )
            type = 'powershell'
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