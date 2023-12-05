### ABOUT SCRIPT
#This scirpt uses multiple functions to do various tasks, such as:
# -Various Math Functions (Add, Subtract, Multiply, Divide)
# -Determine WHICH Math Functiion To Use (Based off user input and IF statements):
# 1 = Addition
# 2 = Subtraction
# 3 = Multiplication
# 4 = Division
#
#This will also show you how you can pass variables through multiple functions.
#
#Remember to declare functions before you call them (put them up top) or else the script may not work properly.
#
###

#Declare 4 different functions, each for a different math calculation
function AddNumbers
{
    #Input parameters used in the function
    param
    (
        [int]$num1,
        [int]$num2
    )
    #Math calculation based off the two numbers
    $total = $num1 + $num2
    #Text String to be returned, and ouput to the console
    $outputString = "$num1 plus $num2 equals $total"
    return $outputString
}
function SubtractNumbers
{
    param
    (
        [int]$num1,
        [int]$num2
    )
    $total = $num1 - $num2
    $ouputString = "$num1 minus $num2 equals $total"
    return $ouputString
}
function MultiplyNumbers
{
    param
    (
        [int]$num1,
        [int]$num2
    )
    $total = $num1 * $num2
    $outputString = "$num1 times $num2 equals $total"
    return $outputString
}
function DivideNumbers
{
    param
    (
        [int]$num1,
        [int]$num2
    )
    $total = $num1 / $num2
    $outputString = "$num1 divided by $num2 equals $total"
    return $outputString
}

#Function to determine which math function to call. Uses IF statement to call function based off user input
function WhichMathToDo
{
    #Uses the variable $FunctionToPerform to determine which math function to call (through if statement)
    #Uses the variables $num1 and $num2 to pass through to the specific math function
    param
    (
        [int]$FunctionToPerform,
        [int]$num1,
        [int]$num2    
    )
    #Determines which math function to call. (Based off user input)
    if($FunctionToPerform -eq 1)
    {
        #Calls the math function passing the parameters through, outputs the returned value through Write-Host
        Write-Host (AddNumbers -num1 $num1 -num2 $num2)`n
    }
    elseif($FunctionToPerform -eq 2)
    {
        Write-Host (SubtractNumbers -num1 $num1 -num2 $num2)`n
    }
    elseif($FunctionToPerform -eq 3)
    {
        Write-Host (MultiplyNumbers -num1 $num1 -num2 $num2)`n
    }
    elseif($FunctionToPerform -eq 4)
    {
        Write-Host (DivideNumbers -num1 $num1 -num2 $num2)`n
    }
    else
    {
        Write-Host "Please enter a number 1-4"`n
    }
}

#I am using a 'do while' loop to endlessly loop the script 
do
{
    #Gets two numbers from the user
    $inputNumber1 = Read-Host "Enter a number"
    $inputNumber2 = Read-Host "Enter a second number"

    #Writes to the host the math functions we have set
    #Calling "`n" will create a new line in the console
    Write-Host `n"1: Add Numbers"
    Write-Host "2: Subtract Numbers"
    Write-Host "3: Multiply Numbers"
    Write-Host "4: Divide Numbers"`n

    #Asks the user which math function to perform based off number 1-4. Sets it as a variable.
    $functionNumber = Read-Host "Type The Function Number of the Math You Would Like To Perform on numbers $inputNumber1 & $inputNumber2"
    #Calls the function to determine which math to do. Passes 3 parameters through.
    WhichMathToDo -FunctionToPerform $functionNumber -num1 $inputNumber1 -num2 $inputNumber2
}
#Loops the "do" block while the statement is true (in this case $true will always be true, so it will loop through endlessly)
while ($true)