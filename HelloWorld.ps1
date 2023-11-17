# Write-Host "Hello World" 
# this is a comment
# f5 is how you can run a script quickly with a hot key
# commandlets (cmdlet) are predefined functions that do things...so functions...
# syntax = Verb-Noun
Write-Host "welcome to the madhouse! "
# -NoNewLine forces not /n afer a write-host
Write-Host "Now tell me dear, " -NoNewline
Write-Host "1. joker"
Write-Host "2. batman"
Write-Host "3. spider man"
Write-Host "4. two-face"
Write-Host "5. penquin"
Write-Host "6. bane"
$userinput = Read-Host -Prompt "what is your favorite Character?"

# new items
   # New-Item starts the new file or dir creation
   # -path is needed if your current dir isn't where you are
New-Item -path "C:\Users\Mwiinga.Nathan\OneDrive - West Ada School District\Desktop\Code\PowerShell\LeaningRopes" -name "starDestroyer" -type directory
New-Item -path "C:\Users\Mwiinga.Nathan\OneDrive - West Ada School District\Desktop\Code\PowerShell\LeaningRopes" -name "theEmpire.txt" -ItemType File

# clear and directory management
# clear and cls clear the screen
# can use ls and dir to list the directory

######################################
# Pipelining!
Get-Process
Get-Process | Sort-Object -Property cpu
Get-Process | Sort-Object -Property cpu | Select-Object -First 5
# can use this to output to file quickly
Get-Process | Sort-Object -Property cpu | Select-Object -First 5 | Out-File 'pipline-output-text.txt'

######################################
# Data Types
# array
$arrayTest = @(22,'test','name')
# they count start at 0
# use $arrayTest[n] to find the nth element in array

# pause
# it may be helpful to use if you want to display to gui before closing

