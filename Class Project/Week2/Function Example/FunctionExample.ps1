### ABOUT 
#This scirpt compares an array of random food items against set arrays of food types.
#A ForEach loop loops thorugh every food in random list, and passes it through a function to determine the food type.
####

#Three arrays that contain a certain food type
$listOfFruits = @("Apple", "Banana", "Orange", "Strawberry", "Grape", "Pineapple", "Watermalon", "Mango", "Kiwi", "Blueberry")
$listOfVegetables = @("Tomato", "Carrot", "Spinach", "Broccoli", "Bell Pepper", "Cucumber", "Onion", "Potato", "Cauliflower", "Zucchini")
$listOfDairy = @("Milk", "Cheese", "Yogurt", "Butter", "Eggs", "Cream", "Cottage Cheese", "Sour Cream", "Cream Cheese", "Ice Cream")

#One big array that contains all food items in the above arrays, in a random order.
$randomListOfFoods = @("Pineapple", "Tomato", "Butter", "Carrot", "Kiwi", "Yogurt", "Blueberry", "Cauliflower", "Cream", "Orange", "Broccoli", "Bell Pepper", "Cheese", "Grape", "Potato", "Mango", "Zucchini", "Apple", "Spinach", "Milk", "Onion", "Watermelon", "Strawberry", "Sour Cream", "Banana", "Cream Cheese", "Cucumber", "Ice Cream", "Eggs", "Orange")

#Declaring our function before we call it
function WhatFoodAmI 
{
    #Declares our parameter(s) that will be passed throgh when calling the function
    param
    (
        [string]$FoodName
    )

    #Checks to see if the inputed parameter is contained in the above declared arrays to see what food type it is.
    if($listOfFruits -contains $food)
    {
        $foodType = "$food is a Fruit!"
    }
    elseif($listOfVegetables -contains $food)
    {
        $foodType = "$food is a Vegetable!"
    }
    elseif($listOfDairy -contains $food)
    {
        $foodType = "$food is a Dairy Item!"
    }
    else 
    {
        $foodType = "I'm not sure what $food is!"
    }

    #Returns the value '$foodType' when the function is called. 
    return $foodType
}

#Loops through every food in the '$randomListOfFoods' array to see what food type it is.
foreach($food in $randomListOfFoods)
{
    #Outputs to the terminal the results returned from calling the function.
    Write-Host (WhatFoodAmI -FoodName $food)
}

