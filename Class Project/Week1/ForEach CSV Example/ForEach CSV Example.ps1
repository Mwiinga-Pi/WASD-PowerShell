#Declare variable with the file path to the CSV to be imported.
#SET FILE PATH TO WHERE YOU HAVE THE .CSV SAVED
$importCSVFilePath = "FULL_PATH_TO_CSV"
#Set file path to have a new CSV exported to so we don't overwrite the original
$exportCSVFilePath = "PATH_TO_EXPORT_NEW_CSV_TO"

#Import the CSV by specifying its file path as the $importCSVFilePath variable. 
$listOfNumbersCSV = Import-Csv -Path $importCSVFilePath

#Loop through each row in the CSV
foreach ($row in $listOfNumbersCSV)
{
	#Set new variables by specifying them as integers. You can specify the CSV header for each row to set your data properly
	[int]$num1 = $row.FirstNumber
	[int]$num2 = $row.SecondNumber
	#Add the two numbers together, output to host
	$total = $num1 + $num2
	Write-Host "$num1 + $num2 equals $total"
	
	#Create a new column in the CSV, set the header to Total and add the total to the row.
	$row | Add-Member -MemberType NoteProperty -Name "Total" -Value $total
}

#Export the manipulated CSV to the export file path.
$listOfNumbersCSV | Export-Csv -Path $exportCSVFilePath -NoTypeInformation