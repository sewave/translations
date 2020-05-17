@echo off
set SCRIPTNAME="supermangb"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
