pkg install openjdk-21 -y
pkg install zlib -y
mkdir minecraft-server
cd minecraft-server
wget -O server.jar https://api.purpurmc.org/v2/purpur/1.21.1/2329/download/
java -jar server.jar
echo eula=true > eula.txt
touch start.sh 
echo "cd /minecraft-server/ && java -Xmx1985 -Xms1985 -jar /minecraft-server/server.jar" > start.sh
echo "you can now go to /sdcard and then start the start.sh script using bash."
read -n 1 -s -r -p "Press any key to continue"
