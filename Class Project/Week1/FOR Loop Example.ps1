#for (<initialization>; <condition>; <increment>)
#{
	# Code to be executed in each iteration
#}

#Declare initialization variable as $i, set it to 1; Check to see if $i is less than or equal to 10; Incriment $i by 1 each time it is ran
#Will output 1-10 in a new line
for ($i = 1; $i -le 10; $i++)
{
	Write-Host $i
}

