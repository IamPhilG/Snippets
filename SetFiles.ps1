# SetFilesCLass.ps1 is mandatory
[CmdLetBinding()]
Param(
    [Parameter(Mandatory=$true, valueFromPipeLine = $true)]
    [String]$_scriptLocation
)

#region files and paths
    # Determine script location for PowerShell
    if ( $_ScriptLocation -eq $null -or $_ScriptLocation -eq "" )
    {
        $_ScriptLocation = "."
    }
    [Files]::base = $_scriptlocation
 
    # Set Files retention (7 is by default)
    [Files]::FilesToKeep = 3
 
    # Determine current location
    Push-Location
    $_savWorkDir = Get-Location
 
    # Force WorkDir to be the same as Script location
    if ($_savWorkDir.Path -ne [Files]::Base)
    {
        Set-Location ([Files]::Base)
    }
#endregion#>