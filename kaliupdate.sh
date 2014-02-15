#! /bin/bash
echo "Updating Kali...."
read -r -p "Update Kali Software? (y/n)" response
response=${response,,}
if [[ $response =~ ^(yes|y| ) ]]
then
apt-get update && apt-get upgrade -y
else
echo "Not Updating Main Kali Software!"
fi
read -r -p "Update Distro? (y/n)" response
response=${response,,}
if [[ $response =~ ^(yes|y| ) ]]
then
apt-get dist-upgrade -y
else
echo "Not Updating Distro! Exiting!"
fi
