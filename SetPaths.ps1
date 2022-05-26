# SetFilesCLass.ps1 is mandatory
[CmdLetBinding()]
Param(
    [Parameter(Mandatory=$true, valueFromPipeLine = $true)]
    [String]$_ScriptFullName
)

#region paths
    $Paths = @{
            Logs    = [Files]::new("Logs")
            Results = [Files]::new("Results").SetName($dateSimple + "." + 'Result.csv').Finalize()
            Script  = [Files]::new().SetName($_ScriptFullName).Finalize()
            Bck     = [Files]::new("Backups").SetName($dateSimple + "." + 'Backup.csv').Finalize()
            Roll    = [Files]::new("RollBacks").SetName($dateSimple + "." + 'RollBack.ps1').Finalize()
    }
    $null = $Paths.Logs.SetName($dateStamped + "." + ( [System.IO.Path]::GetFileNameWithoutExtension($_ScriptFullName) ).ToLower() + '.log').Finalize()
#endregion#>