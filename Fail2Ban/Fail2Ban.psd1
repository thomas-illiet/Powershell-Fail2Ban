@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'Fail2Ban.psm1'
    
    # Version number of this module.
    ModuleVersion = '0.0.6'
    
    # ID used to uniquely identify this module
    GUID = '5b658ad8-d1f9-4ab2-8505-89bc6c8651b0'
    
    # Author of this module
    Author = 'thomas.illiet'
    
    # Company or vendor of this module
    CompanyName = 'thomas-illiet.fr'
    
    # Copyright statement for this module
    Copyright = '(c) 2018 Thomas-Illiet. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = 'Fail2Ban is an intrusion prevention Powershell framework that protects computer servers from brute-force attacks'
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
                            'Install-F2B',
                            'Remove-F2B',
                            'Disable-F2B',
                            'Enable-F2B',
                            'Set-F2BConfig',
                            'Get-F2BConfig',
                            'Get-F2BStatus',
                            'Restart-F2B',
                            'Start-F2B',
                            'Stop-F2B',
                            'Add-F2BAddress',
                            'Get-F2BAdmx',
                            'Show-F2BGui',
                            'Get-F2BHelp',
                            'Initialize-F2BService'
                        )
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = ''
    
    # Variables to export from this module
    VariablesToExport = ''
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = ''

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('Firewall', 'Registry', 'Service', 'Module', 'Logs')
    
            # A URL to the license for this module.
            LicenseUri = 'https://raw.githubusercontent.com/thomas-illiet/Powershell-Fail2Ban/master/LICENSE'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/thomas-illiet/Powershell-Fail2Ban'
    
            # A URL to an icon representing this module.
            IconUri = 'https://raw.githubusercontent.com/thomas-illiet/Powershell-Fail2Ban/master/Resource/Icon.png'

    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
}