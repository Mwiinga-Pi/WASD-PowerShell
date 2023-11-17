#Get input from user to input score. Stores it as the $examScore variable
$examScore = Read-Host "Please Enter Your Exam Score"
#Declare the $letterGrade variable to be used later. $null indicates it's empty
$letterGrade = $null

#Compares to see where the $examScore falls under. If it does not match the first argument, check the next. Changes the $letterGrade variable.
if ($examScore -ge 90)
{
	$letterGrade = "A"
}
elseif ($examScore -ge 80)
{
	$letterGrade = "B"
}
elseif ($examScore -ge 70)
{
	$letterGrade = "C"
}
elseif ($examScore -ge 60)
{
	$letterGrade = "D"
}
else
{
	$letterGrade = "F"
}

#Outputs the $letterGrade, concatinated in a string.
Write-Host "You got an $letterGrade on the exam!"