function Test-nnu {
    [CmdletBinding()] # this is an advance function?
    param(
        [Parameter(Mandatory)]
        [int32]$pingCount
    )
    Test-Connection nnu.edu -Count $pingCount
    if ($pingCount = 5)
    {
        Write-Error -Message "no no no no noooo! you were suppose to input 4. not 5 " -ErrorAction Stop
    }
    
}


try 
{
    Test-nnu -ErrorAction Stop
} Catch
{
    Write-Output "sites down again:)" Write-Output $_
}

