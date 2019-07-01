#/bin/bash


# download wordpress
wget https://wordpress.org/latest.zip

# extract wordpress
unzip -o latest.zip -d .

# move wordpress files to correct location
mv wordpress/* ~/public_html/

# remove zip file and wordpress folder
rm -rf latest.zip && rm -rf wordpress

# cd into themes folder
cd wp-content/themes/

# download underscores base theme
git clone https://github.com/Automattic/_s.git

# download usual list of required plugins
cd ../.. && wget -P wp-content/plugins/ -i ./plugins.txt

# extract the plugins archives and remove them
cd wp-content/plugins/ && unzip '*.zip' && rm -rf *.zip