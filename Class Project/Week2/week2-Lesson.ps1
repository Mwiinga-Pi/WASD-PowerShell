#how to check an age to see if adult with function
# FUNCTIONS
function IsAnAdult{
    param (
        [string]$name,
        [int]$age
    )
    if ($age -lt 18){
        Write-Host "Hello there human."
        Write-Host "The person with the name $name is not an adult"
        Write-Host "They are of age: $age"
    }
    else{
        Write-Host "Would you like to see me write some code?"
    }
}

function gradeCheck{
    param (
        [string] $name,
        [int] $gradeLv
    )
    if($gradeLv -gt 12){
        Write-Host "You are not in school. pls leave"
    }
    elseif ($gradeLv -gt 8){
        # high school
        Write-Host "$name is in High School"
    }
    elseif ($gradeLv -gt 5) {
        #middle
        Write-Host "$name is in Middle School"
    }
    else{
        # elem
        Write-Host "$name is in Elementary School"
    }
}
# IsAnAdult -name "Burce Wanye" -age 3

# code to check grade
#gradeCheck -name "John" -gradeLv 8

