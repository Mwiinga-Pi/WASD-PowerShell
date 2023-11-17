$examScore = Read-Host "Please Enter Your Exam Score"
$letterGrade = $null

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

Write-Host "You got an $letterGrade on the exam!"