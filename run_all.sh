#!/bin/bash
#shebang bash # and bang ! point to bash shell path
echo "Today is " `date`

echo -e "\nenter the path to directory"
read the_path

echo -e "\n you path has the following files and folder: "
ls $the_path

