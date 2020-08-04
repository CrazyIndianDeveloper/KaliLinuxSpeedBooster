#!/bin/bash
#KaliLinuxSpeedBooster v1.0
#Powered by Crazy Indian Developer
#Created by Crazy Indian Developer
#Credits goes to CrazyIndianDeveloper [github.com/CrazyIndianDeveloper]
printf "\n"                                                                                                

printf "\e[0;31m ██╗  ██╗ █████╗ ██╗     ██╗    ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗                                  \e[0m\n"
printf "\e[0;31m ██║ ██╔╝██╔══██╗██║     ██║    ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝                                  \e[0m\n"
printf "\e[0;31m █████╔╝ ███████║██║     ██║    ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝                                   \e[0m\n"
printf "\e[0;31m ██╔═██╗ ██╔══██║██║     ██║    ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗                                   \e[0m\n"
printf "\e[0;31m ██║  ██╗██║  ██║███████╗██║    ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗                                  \e[0m\n"
printf "\e[0;31m ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝    ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝                                  
                                                                                                       \e[0m\n"
printf "\e[0;31m ███████╗██████╗ ███████╗███████╗██████╗     ██████╗  ██████╗  ██████╗ ███████╗████████╗███████╗██████╗ \e[0m\n"
printf "\e[0;31m ██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗    ██╔══██╗██╔═══██╗██╔═══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗\e[0m\n"
printf "\e[0;31m ███████╗██████╔╝█████╗  █████╗  ██║  ██║    ██████╔╝██║   ██║██║   ██║███████╗   ██║   █████╗  ██████╔╝\e[0m\n"
printf "\e[0;31m ╚════██║██╔═══╝ ██╔══╝  ██╔══╝  ██║  ██║    ██╔══██╗██║   ██║██║   ██║╚════██║   ██║   ██╔══╝  ██╔══██╗\e[0m\n"
printf "\e[0;31m ███████║██║     ███████╗███████╗██████╔╝    ██████╔╝╚██████╔╝╚██████╔╝███████║   ██║   ███████╗██║  ██║\e[0m\n"
printf "\e[0;31m ╚══════╝╚═╝     ╚══════╝╚══════╝╚═════╝     ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝\e[0m\n"
                                                                                                       
printf "\n"
printf " \e[1;31m \t\t\t\tBy- Crazy Indian Developer \e[0m \n"

echo Subscribe-- https://www.youtube.com/channel/UCnij5U2Ic3PtpzCWmmydP7g
printf "\n"
echo More Tools at- https://github.com/CrazyIndianDeveloper
printf "\n"
printf " \e[1;31m \t\t------------------------------------------------------- \e[0m \n"




if [ "$(id -u)" != "0" ]; then
    printf " \e[1;31m \t\t\t Sorry, you are not root. run as root !!! \e[0m \n"
    printf " \e[1;31m \t\t------------------------------------------------------- \e[0m \n"
    exit 1
fi
printf " \e[1;31m  Tool Installing...... \e[0m \n"
apt install apt-transport-https
printf " \e[1;31m  Tool Installed!!!\e[0m \n"
cd /etc
chmod +x apt
cd apt
chmod +x sources.list
grep -v 'deb http' sources.list | cat > source.txt
grep -v 'deb-src' source.txt | cat > source1.txt
rm sources.list
rm source.txt
mv source1.txt sources.list
sudo chmod +x sources.list
sudo echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
sudo echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
printf " \e[1;31m  New Sources Added!!!!!!\e[0m \n"
while true; do
    read -p "Do you wish to Update (apt-get update) Y/N ?" yn
    case $yn in
        [Yy]* ) apt-get update; break;;
        [Nn]* ) printf "Subscribe For More Tools :--"; printf "\e[1;31m https://bit.ly/2DwCzfi \e[0m \n" ;exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
