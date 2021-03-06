function Add-F2BFirewallRule(){
    <#
    .SYNOPSIS
        . Creates a new inbound firewall rule
    .PARAMETER IP
        . IP addresses
    .EXAMPLE
        C:\PS> Add-F2BFirewallRule -IP 1.2.3.4
    .NOTES
        Author      : Thomas ILLIET
        Date        : 2018-02-15
        Last Update : 2018-02-15
    #>
    Param(
        [Parameter(Mandatory=$true)]
        [IpAddress]$IP
    )
    Try {
        $Params = @{
            DisplayName   = "Fail2Ban - Block $IP"
            Direction     = "Inbound"
            RemoteAddress = $IP
            Profile       = "Any"
            Action        = "Block"
        }
        $NewRule = New-NetFirewallRule @PArams -ErrorAction Stop
        Add-F2BLog -Type Information -Message "Create a new firewall rule to block '$IP'`n`n $($Params | ConvertTo-Json)"
        return $NewRule
    } Catch {
        Add-F2BLog -Type Error -Message "Unable to add a new firewall rule to block '$IP'`n`n $($Params | ConvertTo-Json)"
        return $false
    }

}