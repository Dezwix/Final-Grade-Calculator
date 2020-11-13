#! /bin/bash
#  Lab 9
#  Aleksandr Anseev 040974137
#  CST8102_314
#  mycalc.sh
#  8/1/2020
#  this script operates addition and substraction
#  for integer numbers enetered my the user
result=0
function add {
	result=$(($1 + $2))
	echo "The sum of $1 plus $2 equals $result"
	sleep 3
	clear
}

function substract {
	result=$(($1 - $2))
	echo "The difference of $1 minus $2 equals $result"
	sleep 3
	clear
}

while [[ true ]]
do
	# checks if first parameter is empty
	# taken from: https://www.cyberciti.biz/faq/bash-shell-find-out-if-a-variable-has-null-value-or-not/
	if [[ -z "$1" ]]
	then
		# Nothing entered
		val1=0
		val2=0
		echo "Menu 1"
		echo "C) Calculation"
		echo "X) Exit"
		read
		case $REPLY in
			c|C)
				echo "Menu 2"
				read -p "Please enter an integer number or X to exit: " val1
				case $val1 in
					x|X)
						exit
						;;
					*)
						while [[ true ]] 
						do
							echo "Menu 3"
							echo "+) Add"
							echo "-) Substract"
							echo "X) Exit"
							read
							case $REPLY in
								+)
									echo "Menu 2"
									read -p "Please enter an integer number or X to exit: " val2
									case val2 in
										x|X)
											exit
											;;
										*)
											add $val1 $val2
											break
											;;
									esac
									;;
								-)
									echo "Menu 2"
									read -p "Please enter an integer number or X to exit: " val2
									case val2 in
										x|X)
											exit
											;;
										*)
											substract $val1 $val2
											break
											;;
									esac
									;;
								x|X)
									exit
									;;
								*)
									echo "Invalid input; please re-enter"
									sleep 3
									clear
									;;
							esac
						done
						;;
				esac
				;;
			x|X)
				exit
				;;
			*)
				echo "Invalid input; please re-enter"
				sleep 3
				clear
				;;
		esac
	elif [[ $2 == "+" ]]
	then
		# addition
		add $1 $3
	elif [[ $2 == "-" ]]
	then
		# substruction
		substract $1 $3
	else
		echo "Invalid input; please re-enter"
		sleep 3
		clear
	fi
done
