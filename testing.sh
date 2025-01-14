#!/bin/bash

echo "🍕 Welcome to the Pizza Topping Randomizer 3000! 🍕"

# Array of weird toppings
toppings=("chocolate chips" "gummy bears" "potato chips" 
          "marshmallows" "pickles" "peanut butter" 
          "banana slices" "coffee beans" "corn flakes")

# Get user's name with proper error checking
read -p "Enter your name, brave pizza explorer: " name
while [[ -z "$name" ]]; do
    echo "Don't be shy! We need your name!"
    read -p "Enter your name: " name
done

# Generate random number of toppings (1-4)
num_toppings=$((RANDOM % 4 + 1))

echo "Preparing a unique pizza for $name..."
sleep 1
echo "The ancient pizza gods have spoken..."
sleep 1
echo "Your $num_toppings cursed topping(s) will be:"

# Loop to select random toppings
for ((i=1; i<=$num_toppings; i++)); do
    index=$((RANDOM % ${#toppings[@]}))
    echo "🔮 ${toppings[$index]}"
    sleep 0.5
done

# Calculate totally meaningless pizza score
pizza_score=$((RANDOM % 100 + 1))
echo "Your pizza chaos score is: $pizza_score/100"

if ((pizza_score > 80)); then
    echo "The pizza gods are impressed! 🌟"
elif ((pizza_score > 50)); then
    echo "A respectable attempt at pizza chaos! 👍"
else
    echo "The pizza gods are mildly amused 😏"
fi