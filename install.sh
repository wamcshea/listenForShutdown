#!/bin/sh

cd /home/pi/repos/listenForShutdown/install

echo "cp ../src/listen-for-shutdown.py /usr/local/bin/"
sudo cp ../src/listen-for-shutdown.py /usr/local/bin/
sudo chmod +x /usr/local/bin/listen-for-shutdown.py

echo "cp ../src/listen-for-shutdown.sh /etc/init.d/"
sudo cp ../src/listen-for-shutdown.sh /etc/init.d/
sudo chmod +x /etc/init.d/listen-for-shutdown.sh

echo "sudo update-rc.d listen-for-shutdown.sh defaults"
sudo update-rc.d listen-for-shutdown.sh defaults

echo "sudo /etc/init.d/listen-for-shutdown.sh start"
sudo /etc/init.d/listen-for-shutdown.sh start
