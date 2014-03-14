#! /bin/bash
echo "Updating Kali...."
read -r -p "What kind of update? (1-Software, 2-Distro, 3-Both, 4-Exit:) " response
response=${response,,}
if [[ $response -eq 1 ]]
then
printf "\nUpdating Software Only"
apt-get update && apt-get upgrade -y
else
if [[ $response -eq 2 ]] 
then
printf  "\nUpdating Distro"
apt-get dist-upgrade
else
if [[ $response -eq 3 ]]
then
printf "\nUpdating Software and Distro"
apt-get update && apt-get upgrade -y && apt-get dist-upgrade
else
if [[ $response -eq 4 ]]
then
printf "\nExiting Updates\n"
exit
fi
fi
fi
fi
