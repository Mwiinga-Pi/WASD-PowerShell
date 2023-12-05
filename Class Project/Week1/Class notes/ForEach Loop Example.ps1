#Declare a variable, set it as an array with @() containing strings with fruit names.
$listOfFruits = @("Apple", "Banana", "Cherry", "Orange", "Pear")

#foreach (#NewVariable in $ACollection)
#{
	#Do this
#}
#$fruit is set to one specific item in the $listOfFruits array starting with "Apple". Each loop iteration will set $fruit to the next item in the array.
foreach ($fruit in $listOfFruits)
{
	Write-Host "Fruit: $fruit"
}