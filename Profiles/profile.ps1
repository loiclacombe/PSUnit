#PSUnit: Setting up PATH environment variable to point to PSUnit framework
$env:path = $env:path + ";C:\SCHREIBTISCH\SVN\PS\PSUnit"

#PSUnit: Setting PSUNIT_HOME environment variable to point to PSUnit framework
If(! $(Test-Path -Path "env:PSUNIT_HOME"))
{
    New-Item -Path "env:" -Name "PSUNIT_HOME" -value "C:\SCHREIBTISCH\SVN\PS\PSUnit"
}

#PSUnit: Defining functions to set debug options
function Set-DebugMode()
{
    $Global:DebugPreference = "Continue"
    set-strictmode -version Latest
}

function Set-ProductionMode()
{
    $Global:DebugPreference = "SilentlyContinue"
    set-strictmode -Off
}
