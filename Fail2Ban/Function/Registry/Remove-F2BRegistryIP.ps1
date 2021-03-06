Function Remove-F2BRegistryIP(){
    <#
    .SYNOPSIS
        .
    .PARAMETER Type
        .
    .PARAMETER IP
        .
    .EXAMPLE
        C:\PS> Remove-F2BRegistryIP -Type Black -IP 1.2.3.4
    .NOTES
        Author      : Thomas ILLIET
        Date        : 2018-02-15
        Last Update : 2018-02-15
    #>
    Param(
        [Parameter(Mandatory=$true,Position=0)]
        [ValidateSet('Black','White')]
        [String]$Type,

        [Parameter(Mandatory=$true,Position=1)]
        [IpAddress]$IP
    )

    Try {
        Remove-ItemProperty -Path "HKLM:\SOFTWARE\Fail2Ban\List\$Type" -Name $IP
        Add-F2BLog -Type Information -Message "Remove registry $IP from $($Type)List"
        return $true
    } Catch {
        Add-F2BLog -Type Error -Message "Unable to remove a registry '$IP' from $($Type)List"
        return $false
    }
    
}