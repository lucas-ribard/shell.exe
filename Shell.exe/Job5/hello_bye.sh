#!/bin/bash
s1=$1
s2="Hello"
s3="Bye"
if [ $s1 = $s2 ];then
echo Bonjour, je suis un script
fi
if [ $s1 = $s3 ];then
echo Au revoir et bonne journée
fi
