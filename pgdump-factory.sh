#! /bin/bash 

echo "Please select a database?"

options=(
	"PROJECT 1" 
	"PROJECT 2" 
	"PROJECT 3"
	"QUIT")

select opt in "${options[@]}"

do
	case $opt in
		"PROJECT 1")
			# ./pgdump-scripts/{Enter the name of script for your project 1}
			echo 'you selected project 1'
			break
			;;
		"PROJECT 2")
			# ./pgdump-scripts/{Enter the name of script for your project 2}
			echo 'you selected project 2'
			break
			;;
		"PROJECT 3")
			# ./pgdump-scripts/{Enter the name of script for your project 2}
			echo 'you selected project 3'
			break
			;;
	    "QUIT")
        	break
        	;;
		*)
			echo "Invalid Option $REPLY"	
	esac
done

