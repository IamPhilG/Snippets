# Restore location
Pop-Location
    
$timer.Stop()
$runTime = "$($timer.Elapsed)"

[Log]::new("Script Runtime full: $runtime").Out()
[Log]::new("The End.").Out()

# Stops log
[Log]::new((Stop-Transcript -ErrorAction SilentlyContinue)).Out()