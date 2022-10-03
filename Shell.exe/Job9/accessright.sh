IFS=','

#lecture dossier csv
while read id name surname password role
do
#ajoute l'utilisateur
username="$name-$surname"
sudo useradd $username

#set mdp
sudo passwd $username << EOD
$password
$password
EOD

#si admin accorde les droits
admin="Admin"
user="User"

if [ $role = $admin ]; then
	sudo usermod -aG sudo $username
	echo "doit etre $role"
	echo "est admin"
	fi
if [ $role = $user ]; then
	echo "doit etre $role"
	echo "user"
	fi

#changer id
sudo usermod -u $id $username

echo -e "\e[97mBlancL'utilisateur $username à été créée\e[0m"


done < <(tail -n +2 Shell_Userlist.csv)

