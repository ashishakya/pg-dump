#! /bin/bash 

#this appends the script file name

paths=()
scriptFileNames=()

#for entry in "/home/ashishakya/dotfiles/pgdump"/*
for entry in "./pgdump-scripts"/*

do
  paths+=("$entry")

  pathChunks=()
  IFS='/' # space is set as delimiter
  read -ra ADDR <<< "$entry" # str is read into an array as tokens separated by IFS
  for pathChunk in "${ADDR[@]}"; do # access each element of array
	    # echo "$i"
      pathChunks+=("$pathChunk")
  done
  directoriesCount=${#pathChunks[@]} 
  lastIndex="$(($directoriesCount-1))"
  scriptFileName=${pathChunks[$lastIndex]}
  scriptFileNames+=(${scriptFileName%???}) # remove .sh from scrit file name and append in array

done

echo -e "Please select a database?\n"

select opt in "${scriptFileNames[@]}"

do
	for i in ${scriptFileNames[@]}
	do
	   if [ $opt = $i ]
		then
			"./pgdump-scripts/$opt.sh"
			break
	   fi
	done
done

