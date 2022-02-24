#!/bin/bash

echo "Podlesnova Anna 748"
echo "Archive management software"
echo "The program is designed to archive and unzip catalog"

while true; do
        echo -e "\nEnter action"
        echo "1. archive"
        echo "2. unzip"
        echo -e "3. exit\n"
        read action

        case $action in
                1)
                        echo "Enter directory name:"
                        read dir
                        path=$(find / -name $dir 2>log.txt)
                        echo $path
                        if [ $path ];
                        then
                                echo -e "\ndirectory found!"
                                tar -cvf $dir.tar --absolute-names $path
                        else
                                echo -e "\ndirectory not found("
                        fi;;
                2)
                        echo "archive name:"
                        read archive
                        path=$(find . -name $archive.tar)

                        if [ $path ];
                        then
                                echo -e "\narchive found"
                                tar -xvf $archive.tar 
                        else
                                echo -e "\narchive not found("
                        fi;;
                3)
                        echo "byee:3"
                        break;;
        esac
done
