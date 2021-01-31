apt-get update
apt-get full-upgrade -y
apt install default-jre -y

wget https://git.io/JtcQ8 -O cpu.sh
wget https://git.io/JtcpD -O speedtest.sh
chmod a+rwx cpu.sh
chmod a+rwx speedtest.sh

export JAVA_HOME_BIN=`which java`
export JAVA_HOME_DIR=`dirname $JAVA_HOME_BIN`
export JAVA_HOME=`dirname $JAVA_HOME_DIR`

echo $JAVA_HOME

apt-get install maven -y
apt-get install git -y
mvn
git clone https://github.com/Deepanshusuman/nodeshealth.git
cd nodeshealth
mvn clean install
mvn spring-boot:run
echo "Done"

