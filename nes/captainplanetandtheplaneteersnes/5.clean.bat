@echo off
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
