#! /bin/bash


#variables
user=$(whoami)
current_date=$(date +"%d-%m-%Y")
current_time=$(date +"%H:%M:%S %p")
time_option="Time and Date"
compare_option="Compare two Numbers"
count_option="Count to a Number"
math_option="Arithmetic"


#start
echo "Hello $user! Please pick an option listed below!"
echo "$time_option (0), $compare_option (1), $count_option (2), $math_option (3)"
echo
read -p 'Option #: ' option1

#if option is not found
	if [[ "$option1" != @(0|1|2|3) ]]
	then
		echo "Invalid input! Please pick a number between 0-3!"
	fi
#choice 0
function choice_0 {
                echo
                echo "Loading..."
                sleep 3
                clear
                echo "You have chosen Option #$option1, $time_option."
                echo
                echo "So, $user... You want to know todays' Date and the Current Time."
                echo "Well, today is $current_date."
                echo "And the time is $current_time."
}

#choice 1
function choice_1 {
                echo
                echo "Loading..."
                sleep 3
                clear
                echo "You have chosen Option #$option1, $compare_option."
                echo
                echo "Give me two numbers to compare. I will tell you which is larger!"
                read -p 'Number 1: ' comp1
                read -p 'Number 2: ' comp2
                        #if num1 > num2
                        if [ $comp1 -gt $comp2 ]
                        then
                                echo "$comp1 is larger than $comp2"
                        fi
                        #if num2 > num1
                        if [ $comp2 -gt $comp1 ]
                        then 
                                echo "$comp1 is less than $comp2"
                        fi
                        #if num1 = num2
                        if [ $comp1 -eq $comp2 ]
                        then 
                                echo "$comp1 is equal to $comp2"
                        fi
}

#choice 2
function choice_2 {
                echo
                echo "Loading..."
                sleep 3
                clear
		echo "You have chosen Option #$option1, $count_option."
		echo
		echo "What is the number you want to count to?"
		read -p 'Number: ' cont1
			for i in $(seq 1 $cont1)
			do
				echo $i
				sleep .05
			done
}

#choice 3
function choice_3 {
                echo
                echo "Loading..."
                sleep 3
                clear
                echo "You have chosen Option #$option1, $math_option."
		echo
		echo "Do you want to multiply(0), divide(1), add(2), or subtract(3)?"
		read -p 'Function: ' math1
		echo
		        if [[ "$math1" != @(0|1|2|3) ]]
		        then
                		echo "Invalid input! Please pick a number between 0-3!"
        		fi

			if [ $math1 == 0 ]
			then 
				echo "What two numbers would you like to multiply?"
				read -p 'Number 1: ' mult1
				read -p 'Number 2: ' mult2
				mult3=$(expr $mult1 \* $mult2)
				echo
				echo "$mult1 times $mult2 = $mult3"
			fi

                        if [ $math1 == 1 ]
                        then 
                                echo "What two numbers would you like to divide?"
				echo "Note: if your answer is a fraction, it will be rounded down to the nearest whole number."
                                read -p 'Number 1: ' div1
                                read -p 'Number 2: ' div2
				if [ $div2 == 0 ]
				then 
					echo "$div1 divided by $div2 is undefined."
				else
                       		div3=$(expr $div1 / $div2)
                                	echo
      		                	echo "$div1 divided by $div2 = $div3"
				fi
                        fi

                        if [ $math1 == 2 ]
                        then 
                                echo "What two numbers would you like to add?"
                                read -p 'Number 1: ' add1
                                read -p 'Number 2: ' add2
                                add3=$(expr $add1 + $add2)
                                echo
                                echo "$add1 plus $add2 = $add3"
                        fi

                        if [ $math1 == 3 ]
                        then 
                                echo "What two numbers would you like to subtract?"
                                read -p 'Number 1: ' sub1
                                read -p 'Number 2: ' sub2
                                sub3=$(expr $sub1 - $sub2)
                                echo
                                echo "$sub1 minus $sub2 = $sub3"
                        fi

}

#run the respective function
        if [ $option1 == 0 ]
        then
                choice_0
        fi

        if [ $option1 == 1 ]
        then
                choice_1
        fi

        if [ $option1 == 2 ]
        then
                choice_2
        fi

        if [ $option1 == 3 ]
        then
                choice_3
        fi










