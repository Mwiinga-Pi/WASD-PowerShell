[int]$PokemonCaught = "52"
# $_______ is what is used for variables
# ; 
[int]$yourPkMon = Read-Host -Prompt "yo foo. how many pokes you got?"
[int]$userAge = Read-Host -Prompt "Hmm. Interesting. Can you tell me your age?"
if ($yourPkMon -eq $PokemonCaught) 
{
    Write-Host "You have done the inevitable!"
}
else
{
    Write-Host "get on out of here"
}


$count = 0
for ($count; $count -lt $yourPkMon; $count+=1)
{
    if (($count -lt 26) -and ($userAge -lt 18))
    {
        Write-Host "you have " $count " items."
        Write-Host "Wait a second. You Do not have permissions to procede."
        Write-Host "Good bye!"
    }
    Elseif ($count -gt 26)
    {
        Write-Host "you have " $count " items. also its even"
    }
    Else
    {
        Write-Host "SumTing BROKE!!"
    }
}
