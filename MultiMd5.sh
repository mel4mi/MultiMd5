
#!/bin/bash -
#title           :MultiMd5.sh
#description     :This script allows you to create md5 encrypted wordlist(only numbers)
#author		 :Mel4mi
#date            :20221220
#version         :1.0
#usage		 :bash mkscript.sh
#notes           :Type "chmod +x MultiMd5.sh" before using
#bash_version    :5.2.2(1)-release
#==============================================================================

echo "     _  _   _     ___     _           ___               _     "
echo "   _| || |_| |   / / |   (_)         / / |             | |    "
echo "  |_  __  _| |  / /| |__  _ _ __    / /| |__   __ _ ___| |__  "
echo "   _| || |_| | / / |  _ \| |  _ \  / / |  _ \ / _\ / __| |_ \ "
echo "  |_  __  _|_|/ /  | |_) | | | | |/ /  | |_) | (_| \__ \ | | |"
echo "    |_||_| (_)_/   |_.__/|_|_| |_/_/   |_.__/ \__,_|___/_| |_|"
echo "                                                              "

echo "Welcome To MultiMd5, You Can Generate Wordlist as MD5 "
echo ""



 read -p "Enter the starting value: " start
 read -p "Enter the end value: " end
 read -p "Enter the file name to save: " file

# for ((c=$start; c<=$end; c++))
for i in $(eval echo "{$start..$end}")
do
    echo -n "${i}" | md5sum >> step.txt

done

sed "s/  -//g" step.txt > $file.txt
rm step.txt
echo ""
echo "Finished."
