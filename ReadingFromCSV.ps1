#reading in a csv
$csvFilePath = ".\sampleCSV.csv"
[int]$count = 0
[int]$sumAge = 0

$fullListOfContacts = Import-Csv -Path $csvFilePath
#$fullListOfContacts

foreach ($row in $fullListOfContacts){
    Write-Host $count '  ' $row
    Write-Host $row.Name ' | ' $row.age
    $count ++
    $sumAge += $row.age
}
Write-Host "the sum of all these peoples ages is" $sumAge
Write-Host "the average age is:" [int]($sumAge/ $fullListOfContacts.Count)
