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
			#./pgdump-scripts
			echo 'you selected project 1'
			break
			;;
		"PROJECT 2")
			# ./pgdump-scripts
			echo 'you selected project 2'
			break
			;;
		"PROJECT 3")
			# ./pgdump-scripts
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

