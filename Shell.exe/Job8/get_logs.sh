wc -l /var/log/auth.log >> /home/lucas/Shell.exe/Job8/number_connection_`date +%F-%H:%M`.txt 

if [ -e Backup ]
then
cd /home/lucas/Shell.exe/Job8/Backup
tar -rvf archive.tar ../number_connection_`date +%F-%H:%M`.txt
else
mkdir /home/lucas/Shell.exe/Job8/Backup
cd /home/lucas/Shell.exe/Job8/Backup
tar -rvf archive.tar ../number_connection_`date +%F-%H:%M`.txt
fi
