#region Prep

    $rawSpace="`n`n`n`n`n`n"

    $_paramEC = @{
        path              = ".\"
        Encoding          = "UTF8" 
        Delimiter         = ';'
        NoTypeInformation = $true
        Force             = $true
    }

    # To prevent any running transcript
    try {
        Stop-Transcript -ErrorAction SilentlyContinue | out-null
    }
    catch [System.InvalidOperationException]
    {
        $Error.Clear()
    }

    clear-host

    # Create a margin so you can see what is on the screen
    Write-host $rawSpace

    [Log]::new((Start-Transcript -Path ($Paths.Logs.FullPath))).Out()
    [Log]::Release()

#endregion#>