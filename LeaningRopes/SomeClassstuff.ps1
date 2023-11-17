Write-Host 'hello. lets get the class list'
#$userName = Read-Host -Prompt 'what is your name?'
#Write-Host 'Ah!'$userName', it has been a while. How are you'
$lstOfNames = @('Cam', 'Beau', 'Chris','rianna','prest', 'josh','stacee','blake','marcos')
$lstOfNames

foreach($name in $lstOfNames)
{
    if ($name.length -gt 4)
    {
        Write-Host "we would like to introduce" $name
    }
}
