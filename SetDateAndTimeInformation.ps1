#region Time / Date Info
    $DateRef         = [datetime]::Now
    $Timer           = [system.diagnostics.stopwatch]::StartNew()
    $dateSimple      = $DateRef.toString("yyyyMMdd")
    $dateStamped     = $DateRef.ToString("yyyyMMdd.HHmmss")
#endregion#>