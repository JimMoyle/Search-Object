function Search-Object {
    <#
        .SYNOPSIS

        .DESCRIPTION

        .PARAMETER Find

        .PARAMETER Depth

        .EXAMPLE
#>

    [CmdletBinding()]
    Param (

        [Parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0 )]
        [ValidateNotNullOrEmpty()]
        [string]$Find,

        [Parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 1 )]
        [Object]$InputObject,

        [Parameter(
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 2 )]
        [int]$Depth = 4
    )

    BEGIN {
        Set-StrictMode -version Latest #Enforces most strict best practice.
    }

    PROCESS {
        
        $queue = New-Object system.collections.queue
        
        while ($currentDepth -le $Depth -and $queue.Count -gt 0) {
            
        }
        foreach ($child in $InputObject) {

           
        }
    }

    END {
    }
} #function
