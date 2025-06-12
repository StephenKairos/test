@echo off
echo  
echo WARNING: In case the push command fails, and you need to change your registered account on your computer (Windows)
echo Do the following:
echo Control Panel >> User Account >> Credential Manager >> Windows Credential >> Generic Credential
echo Make sure to delete the Git registered line.
echo ----
echo Initializing Identity for New Machine
git config --global user.email "stephenkairos.reyes@gmail.com"
git config --global user.name "StephenKairos"
echo Dummy File to Force Login Sequence > dummy.txt
git add .
echo Init.bat was run at %DATE% %TIME% >> LOGFILE.txt
echo Committing Dummy File: %DATE% %TIME% > datetime.txt
echo Forcing Login Sequence...
git commit -F datetime.txt
del datetime.txt
git pull origin master
git push origin master
del dummy.txt
echo Deleting Dummy file...
git add .
echo Deleting Dummy file: %DATE% %TIME% > datetime.txt
git commit -F datetime.txt
del datetime.txt
git pull origin master
git push origin master