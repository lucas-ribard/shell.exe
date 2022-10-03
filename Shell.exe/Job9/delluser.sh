IFS=','

#lecture dossier csv
while read id name surname password role
do
#supprime les utilisateurs
username="$name-$surname"
sudo userdel -r  $username
echo -e "\e[97mBlanc$username a été détruit\e[0m"

done < <(tail -n +2 Shell_Userlist.csv)
