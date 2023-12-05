$csvFilePath = ".\ListOfNumbers"

$listOfNumbersCSV = Import-Csv -Path $csvFilePath

foreach ($row in $listOfNumbersCSV)
{
	[int]$num1 = $row.FirstNumber
	[int]$num2 = $row.SecondNumber
	$total = $num1 + $num2
	
	
}