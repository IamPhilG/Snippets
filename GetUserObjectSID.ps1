[CmdLetBinding()]
Param(
    [Parameter(Mandatory=$true, valueFromPipeLine = $true)]
    [String]$SamAccountName,

    [Parameter(Mandatory=$false)]
    [String]$Domain = (Get-ADDomain).NetBiosName
)
$ObjectId = [String]($Domain + "\" + $SamAccountName)
$account = New-Object System.Security.Principal.NTAccount $ObjectId
$account.Translate([System.Security.Principal.SecurityIdentifier]).Value