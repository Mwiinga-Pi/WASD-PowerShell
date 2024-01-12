<#************************************************
1: Exam Grades (Find Letter Grade)
	Write a script that determines the letter grade based off students exam score.
	-Import the ExamGrades.csv file. (In this same folder)
	-Create a function named "FindExamLetterGrade" with an input parameter "$examScore". Use if statements to determine the letter grade (based off range below) Return the letter grade through the function
		90-100: A
		80-89: B
		70-79: C
		60-69: D
		0-59: F

	-Loop through each row to get each students exam score. Call the FindExamLetterGrade function and pass through the ExamScore to determine the letter grade. 
		FindExamLetterGrade -ExamScore $row.ExamGrade
	-Based off the returned LetterGrade from the function, write that back to the CSV under the column "LetterGrade"

	*Please note, you will likely have to go into the .csv file and remove the ExamScore column each time you run your script*
************************************************ #>

function Conv-Str2Int{

	[string] $var1 = ''

	try{
	[int]$var1 = 0
	$var1 = Read-Host "Plese enter a number"
	
	# Write-Host $var1 " : This is the value of var1"
	[int] $returnVar = [Convert]::ToInt32($var1)
	return $returnVar
	}
	catch{
	Write-Error "Provided value isn't an integer!"
	Write-Error "Please Try Again."
	write-error $ErrorView
	# write-error $Error.message
	# Pause
	# Write-Host "Ok, Mr. Code-Man is calm now. Lets try this again."
	Conv-Str2Int
	}
}
function FindExamLetterGrade {<#  #>
	param (
		[string]$examScore
	)
	[int]$scoreEval = $null
	try{
		$scoreEval = [convert]::ToInt32($examScore)
		[string]$gradeValue = ""
	if ($scoreEval -in 90..100){
		$gradeValue = 'A'
	}
	elseif ($scoreEval -in 80..89){
		$gradeValue = "B"
	}
	elseif ($scoreEval -in 70..79){
		$gradeValue = "C"
	}
	elseif ($scoreEval -in 60..69){
		$gradeValue = "D"
	}
	elseif ($scoreEval -in 0..59){
		$gradeValue = "F"
	}
	elseif ($scoreEval -gt 100) {
		$gradeValue = "A"
	}
	else {
		$gradeValue = 'N'
	}
	#Write-Host $gradeValue
	}
	catch{
		$gradeValue = 'z'
	}
	# Write-Host $gradeValue
	return $gradeValue
}

Write-Host "We are gonna do some data manipulation with a document that has student grades"
$ogExamGrades = ".\Class Project\Week2\ExamGrades.csv"
$ogExamImport = Import-Csv -Path $ogExamGrades
# Write-Host $ogExamImport.ExamGrade
foreach ($row in $ogExamImport){
	[string]$letterGrade = ""
	$letterGrade = FindExamLetterGrade $row.ExamGrade
	Write-Host $letterGrade
	Add-Member -InputObject $row -MemberType NoteProperty -Name "LetterGrade" -Value $letterGrade
}
$ogExamImport | Export-Csv ".\exportGRADES.csv" -Delimiter ',' -NoTypeInformation
# Pause