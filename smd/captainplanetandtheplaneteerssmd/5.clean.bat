@echo off
set SCRIPTNAME="captainplanetandtheplaneteerssmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
