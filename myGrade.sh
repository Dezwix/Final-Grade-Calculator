#! /bin/bash
# Aleksandr Anseev
# CST8102
# myGrade.sh is a bash script, which calculates the final grade and displays 
# the letter grade for a course using users input
assignment=0
test1=0
test2=0
finalExam=0
read -p "Enter Assignment mark (0 - 40): " assignment
read -p "Enter Test 1 mark (0 - 15): " test1
read -p "Enter Test 2 mark (0 - 15): " test2
read -p "Enter Final exam mark (0 - 30): " finalExam
result=$((assignment + test1 + test2 + finalExam))
if [[ $result -ge 0 ]] && [[ $result -le 49 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is F"
elif [[ $result -ge 50 ]] && [[ $result -le 52 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is D-"
elif [[ $result -ge 53 ]] && [[ $result -le 56 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is D"
elif [[ $result -ge 57 ]] && [[ $result -le 59 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is D+"
elif [[ $result -ge 60 ]] && [[ $result -le 62 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is C-"
elif [[ $result -ge 63 ]] && [[ $result -le 66 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is C"
elif [[ $result -ge 67 ]] && [[ $result -le 69 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is C+"
elif [[ $result -ge 70 ]] && [[ $result -le 72 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is B-"
elif [[ $result -ge 73 ]] && [[ $result -le 76 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is B"
elif [[ $result -ge 77 ]] && [[ $result -le 79 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is B+"
elif [[ $result -ge 80 ]] && [[ $result -le 84 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is A-"
elif [[ $result -ge 85 ]] && [[ $result -le 89 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is A"
elif [[ $result -ge 90 ]] && [[ $result -le 100 ]]
then
	echo "Your final numeric grade is $result, and your final letter grade is A+"
fi