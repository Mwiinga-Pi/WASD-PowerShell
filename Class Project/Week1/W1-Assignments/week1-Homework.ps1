# ************************************************
# 1: Voting Eligibility:
# 	Write a script that prompts the user to enter their age. Check if the entered age is 18 or above. 
#   If it is, display a message saying the user is eligible to vote. If not, display a message 
#   indicating they are not eligible yet.
# ************************************************

# ************************************************
# 2: Numeric Comparison:
# 	Create a script that asks the user to enter two numbers. Compare the numbers and display messages
#   indicating whether the first number is greater than, less than, or equal to the second number.
# ************************************************

# ************************************************
# 3: Combine First and Last Name in a CSV File:
# 	Create a script that imports a CSV file. (Create a .csv file that contains a column with a list
#   of First Names, and a column of Last Names). Combine the first and last name for each row and output 
#   them into a separate column.
# ************************************************

# ************************************************
# 4: Multiplication Table:
# 	Create a script that will produce a times table for integers 1- 10 with a user given number
#   Output eache equation on its own line
# ************************************************

# fUNCTIONS

function Get-AnotherValue{

	[string] $var1 = ''

	try{
	[int]$var1 = 0
	$var1 = Read-Host "Plese enter a number"
	
	# Write-Host $var1 " : This is the value of var1"
	[int] $returnVar = [Convert]::ToInt32($var1)
	return $returnVar
	}
	catch{
	Write-Error "Um. Excuse me Mister Sir, you need to enter a NUMBER. an INTEGER, a FLOAT, something that is NUMBER-Y!"
	write-error $ErrorView
	write-error $Error.message
	Pause
	Write-Host "Ok, Mr. Code-Man is calm now. Lets try this again."
	Get-AnotherValue
	}
}

# MAIN
Write-Host "Hello and welcome to week 1 prompts"
Write-Host "Plese enter the prompt number to experience the journey"
Write-Host "1.   Voting Eligibility"
Write-Host "2.   Numerical Comparison"
Write-Host "3.   Combine 2 columns from csv to create new column"
Write-Host "4.   Multiplication stuff"

[int] $userSelection = 0

$userSelection = Read-Host -Prompt "Which prompt would you like to view?"

if ($userSelection -eq 1){ # Prompt 1
	Write-Host "We would like to verify your age and see if you can vote in the US."
	[int]$possibleVoterAge = Read-Host -Prompt "Can you plese provide us your age"
	if ($possibleVoterAge -ge 18){
		Write-Host "Excellent. You are of legal age to vote."
		Write-Host "Please vote for your preferred option:"
		Write-Host "Would you rather..."
		Write-Host "1.   Fight batman. or"
		Write-Host "2.   Play hide n' seek with the Joker?"
		Read-Host -Prompt "Please enter the number in correlation to your vote"
		Write-Host "Oh, that is a rather interesting choice. Well then, to each their own..."
	}
	else {
		Write-Host "hmm, it looks like you are a child and need to go home an rethink your life."
	}
}
elseif ($userSelection -eq 2) { # Prompt 2
	Write-Host "Lets do some quick mafths. First we will require 2 number."
	# $userNum1 = Get-UserValues
	# ref to another fuction that does use the try/catch

	$userNum1 = Get-AnotherValue

	write-host "your first value is: " $userNum1
	write-host "And now for your second number..."
	[int]$userNum2 = Get-AnotherValue
	write-host "your second value is: " $userNum2

	$yupGreat = "is greater than "
	$yupLess = "is less than "
	$yupEqu = "is equal to "
	
	Write-Host "Ok, we have your two number. lets compare their values."
	if ($userNum1 -eq $userNum2){
		Write-Host $userNum1 $yupEqu $userNum2
	}
	elseif ($userNum1 -lt $userNum2){
		Write-Host $userNum1 $yupLess $userNum2
	}
	elseif ($userNum1 -gt $userNum2){
		Write-Host $userNum1 $yupGreat $userNum2
	}
	else {
		write-host "We cants seem to compare your values"
	}
	Pause
}
elseif ($userSelection -eq 3) { # Prompt 3
	write-host "We finna take some names and do some data engineering. (On a lowkey grade)"
	$sampleCsvFilePath = ".\sampleCSV.csv"
	$sampleContacts = Import-Csv -Path $sampleCsvFilePath

	# $sampleContacts.Fname
	# $sampleContacts.Lname

	foreach ($row in $sampleContacts){
		[string]$FullNameInport = "$($row.Fname), $($row.Lname)"
		Add-Member -InputObject $row -MemberType NoteProperty -Name "FullName" -Value $FullNameInport
		# $sampleContacts.FullName = $FullNameInport
		$row
	}

	$sampleContacts | Export-Csv ".\exportCSV.csv" -Delimiter ',' -NoTypeInformation

}
elseif ($userSelection -eq 4) { # Prompt 4
	Write-Host " "
	Write-Host "We bout to do some more maths"
	Write-Host " "
	Write-Host "First we will need an integer."
	$userMult = Get-AnotherValue
	for($i = 0; $i -le 10; $i -=-1){
		$x = $i * $userMult
		write-host $userMult "X" $i "=" $x
	}


	Pause
}
else {
	Write-Host "You broke the Code. Good bye."
	Pause
}

