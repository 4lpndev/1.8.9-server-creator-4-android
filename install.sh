# got bored so i made this script to automatically make uhhh 1.8.9 mc server on phone (works only on android phones tho)
# uses 2gb of ram btw

#make the folder
mkdir serv
cd serv

#put things up to date
pkg update -y && pkg upgrade

pkg install openjdk-17 git #install git and openjdk-17

#install ngrok if u want to host it globally
git clone https://github.com/Yisus7u7/termux-ngrok

cd termux-ngrok
bash install.sh
rm -rf termux-ngrok
cd ..
#install 1.8.9 server file
curl https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar --output server.jar 

#auto accept eula
echo "eula=true" > eula.txt

#start server
echo "java -Xmx2048M -Xms2048M -jar server.jar nogui" > launch.sh

echo "installed successfully! please run \"bash launch.sh"\ to start the server."
