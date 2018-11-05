@echo off
set SCRIPTNAME="sonicthehedgehogsms"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
