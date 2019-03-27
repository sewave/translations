@echo off
set SCRIPTNAME="jamesbond007sg"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
