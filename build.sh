#! /bin/bash
# move there
cd /var/www/html/programs/

#remove sutff
rm -f schoolsim.tar.gz schoolsim.zip
rm -rf schoolsim
rm -f schoolsim/saves/*

cd -

# push code
cp -r . /var/www/html/programs/schoolsim

cd /var/www/html/programs/
rm -f schoolsim/saves/*
#compress
tar cvf schoolsim.tar schoolsim
gzip schoolsim.tar
zip -r schoolsim schoolsim
