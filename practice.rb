# Create a variable favorite_color and assign it your favorite color as a string.
# Create an array called favorite_foods with at least three of your favorite foods.
# Create a hash book with keys title, author, and pages.

favorite_color = "blue"
favorite_foods = ["biryani ","pulao","pizza" ,"dalcha"]
book = {"title" => "Sample","author"=>"Mooaz","pages"=>"111"}
puts favorite_color
p favorite_foods
p book

# Arithmetic Operations
sum = 10 + 5
difference = 10 - 5
product = 10 * 5
quotient = 10 / 5
remainder = 10 % 3

# string interpolation
city = "Pune"
puts "I live in #{city}"

# array manipulation
numbers = [ 1 , 2 ,3 ,4 ,5]
numbers[2] = 10 
p numbers

car = {"keys" => "wooden" , "model" => "L22" , "make"=>"german","year"=>2022}
car["year"] = 2024
p car


# Write a Ruby program that checks if a number stored in a variable num is positive, negative, or zero, and prints an appropriate message.

puts "Enter a number to check" 
num = gets.chomp.to_i 

if num >= 0
    puts  "Number is positive"
elsif num <= 0
    puts "Number is negative"
end

# Create a Ruby program that assigns a grade based on a score stored in a variable score. Use the following criteria
puts "Enter a student grade to check" 
grade = gets.chomp.to_i
if grade > 95 
    puts "0utstanding"
elsif grade >= 90 && grade < 95
    puts "A+"
elsif grade >= 80 && grade < 90
    puts "A"
elsif grade >=65 && grade < 80
    puts "B+" 
elsif grade >= 35
    puts "B"
else 
    puts "Fail"
end
