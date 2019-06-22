sudo rm -rf /tmp/*
/usr/bin/git clone https://github.com/vaficionado/tf-demo-application /tmp/tf-demo-application
sudo /bin/rm -rf /etc/nginx/conf.d/
sudo /bin/rm -rf /usr/share/nginx/html/*
cd /tmp/tf-demo-application &&  /usr/bin/npm install
/usr/bin/ng build --prod
sudo /bin/cp -R /tmp/tf-demo-application/dist/cmbu-demo-application/* /usr/share/nginx/html/
sudo /bin/sed -i "s@root /var/www/html@root /usr/share/nginx/html@" /etc/nginx/sites-available/default
sudo /bin/systemctl restart nginx