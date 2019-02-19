@echo off
set SCRIPTNAME="hokutonoken3shinseikisouzouseikenrestudennes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
